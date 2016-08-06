#include <signal.h>	// for signal, SIGINT
#include <string>
#include <cstring>
#include <zmq.h>
#include "zmq_packet.h"
#include <basedir.h>
#include <basedir_fs.h>
#include "lconf.h"
#include "util.h"
#include "filter.h"

bool s_interrupted = false;
std::vector <void *> g_socks;

static void s_signal_handler(int)
{
	s_interrupted = true;
}

static void s_catch_signals(void)
{
	struct sigaction action;
	action.sa_handler = s_signal_handler;
	action.sa_flags = 0;
	sigemptyset(&action.sa_mask);
	sigaction(SIGINT, &action, NULL);
	sigaction(SIGQUIT, &action, NULL);
	sigaction(SIGTERM, &action, NULL);
}

static void die(void *ctx, int status)
{
	s_interrupted = true;
	for (auto &sock : g_socks) {
		zmq_close(sock);
	}
	zmq_ctx_destroy(ctx);
	exit(status);
}

int main(int argc, char *argv[])
{
	// bp [ lo ] [ hi ] [zmq in] [ zmq out ]

	if (argc < 5) {
		printf("\nbp - band-pass filter (IIR, 4th order Butterworth)\n");
		printf("usage: bp [lo=(300|500)] [hi=(3000|5000)] [zmq_sub] [zmq_pub]\n\n");
		return 1;
	}

	int lo, hi;
	std::string zin, zout;

	lo   = atoi(argv[1]);
	hi   = atoi(argv[2]);
	zin  = argv[3];
	zout = argv[4];

	debug("lo cutoff: %d", lo);
	debug("hi cutoff: %d", hi);
	debug("ZMQ SUB: %s", zin.c_str());
	debug("ZMQ PUB: %s", zout.c_str());

	s_catch_signals();

	xdgHandle xdg;
	xdgInitHandle(&xdg);
	char *confpath = xdgConfigFind("spk/spk.rc", &xdg);
	char *tmp = confpath;
	// confpath is "string1\0string2\0string3\0\0"

	luaConf conf;

	while (*tmp) {
		conf.loadConf(tmp);
		tmp += strlen(tmp) + 1;
	}
	if (confpath)
		free(confpath);
	xdgWipeHandle(&xdg);

	std::string zq = "ipc:///tmp/query.zmq";
	conf.getString("spk.query_socket", zq);

	void *zcontext = zmq_ctx_new();
	if (zcontext == NULL) {
		error("zmq: could not create context");
		return 1;
	}

	// we don't need 1024 sockets
	if (zmq_ctx_set(zcontext, ZMQ_MAX_SOCKETS, 64) != 0) {
		error("zmq: could not set max sockets");
		die(zcontext, 1);
	}

	void *query_sock = zmq_socket(zcontext, ZMQ_REQ);
	if (query_sock == NULL) {
		error("zmq: could not create socket");
		die(zcontext, 1);
	}
	g_socks.push_back(query_sock);

	if (zmq_connect(query_sock, zq.c_str()) != 0) {
		error("zmq: could not connect to socket");
		die(zcontext, 1);
	}

	u64 nnc; // num neural channels
	zmq_send(query_sock, "NNC", 3, 0);
	if (zmq_recv(query_sock, &nnc, sizeof(u64), 0) == -1) {
		error("zmq: could not recv from query sock");
		die(zcontext, 1);
	}

	vector <Filter *> bandpass;

	for (size_t i=0; i<nnc; i++) {
#if defined KHZ_24
		switch (lo+hi) {
		case 3300:
			bandpass.push_back(new FilterButterBand_24k_300_3000());
			break;
		case 5300:
			bandpass.push_back(new FilterButterBand_24k_300_5000());
			break;
		case 3500:
			bandpass.push_back(new FilterButterBand_24k_500_3000());
			break;
		case 5500:
			bandpass.push_back(new FilterButterBand_24k_500_5000());
			break;
		}
#elif defined KHZ_48
		switch (lo+hi) {
		case 3300:
			bandpass.push_back(new FilterButterBand_48k_300_3000());
			break;
		case 5300:
			bandpass.push_back(new FilterButterBand_48k_300_5000());
			break;
		case 3500:
			bandpass.push_back(new FilterButterBand_48k_500_3000());
			break;
		case 5500:
			bandpass.push_back(new FilterButterBand_48k_500_5000());
			break;
		}
#else
#error Bad sampling rate!
#endif
	}

	void *socket_in = zmq_socket(zcontext, ZMQ_SUB);
	if (socket_in == NULL) {
		error("zmq: could not create socket");
		die(zcontext, 1);
	}
	g_socks.push_back(socket_in);

	if (zmq_connect(socket_in, zin.c_str()) != 0) {
		error("zmq: could not connect to socket");
		die(zcontext, 1);
	}
	// subscribe to everything
	if (zmq_setsockopt(socket_in, ZMQ_SUBSCRIBE, "", 0) != 0) {
		error("zmq: could not set socket options");
		die(zcontext, 1);
	}

	void *socket_out = zmq_socket(zcontext, ZMQ_PUB);
	if (socket_out == NULL) {
		error("zmq: could not create socket");
		die(zcontext, 1);
	}
	g_socks.push_back(socket_out);
	if (zmq_bind(socket_out, zout.c_str()) != 0) {
		error("zmq: could not bind to socket");
		die(zcontext, 1);
	}

	// init poll set
	zmq_pollitem_t items [] = {
		{ socket_in, 0, ZMQ_POLLIN, 0 }
	};

	while (!s_interrupted) {

		if (zmq_poll(items, 1, -1) == -1) {
			break;
		}

		if (items[0].revents & ZMQ_POLLIN) {
			zmq_msg_t header;
			zmq_msg_init(&header);
			zmq_msg_recv(&header, socket_in, 0);
			size_t nh = zmq_msg_size(&header);
			zmq_neural_header *p = (zmq_neural_header *)zmq_msg_data(&header);
			u64 nc = p->nc;
			u64 ns = p->ns;

			zmq_msg_t body;
			zmq_msg_init(&body);
			zmq_msg_recv(&body, socket_in, 0);
			size_t nb = zmq_msg_size(&body);
			float *f = (float*)zmq_msg_data(&body);

			for (size_t i=0; i<nc; i++) {
				bandpass[i]->Proc(&(f[i*ns]), &(f[i*ns]), ns);
			}

			zmq_send(socket_out, p, nh, ZMQ_SNDMORE);
			zmq_send(socket_out, f, nb, 0);

			zmq_msg_close(&header);
			zmq_msg_close(&body);
		}

	}

	for (auto &x : bandpass) {
		delete x;
	}

	die(zcontext, 0);
}
