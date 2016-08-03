#include <signal.h>	// for signal, SIGINT
#include <string>
#include <cstring>
#include <zmq.h>
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

	void *po8e_query_sock = zmq_socket(zcontext, ZMQ_REQ);
	if (po8e_query_sock == NULL) {
		error("zmq: could not create socket");
		die(zcontext, 1);
	}
	g_socks.push_back(po8e_query_sock);

	if (zmq_connect(po8e_query_sock, "ipc:///tmp/po8e-query.zmq") != 0) {
		error("zmq: could not connect to socket");
		die(zcontext, 1);
	}

	u64 nnc; // num neural channels
	zmq_send(po8e_query_sock, "NNC", 3, 0);
	if (zmq_recv(po8e_query_sock, &nnc, sizeof(u64), 0) == -1) {
		die(zcontext, 0);
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
			zmq_msg_t msg;
			zmq_msg_init(&msg);
			zmq_msg_recv(&msg, socket_in, 0);

			// copy message to buffer
			size_t nbytes = zmq_msg_size(&msg);
			auto buf = new char[nbytes];
			memcpy(buf, zmq_msg_data(&msg), nbytes);

			zmq_msg_close(&msg);

			u64 nc, ns;
			// parse message
			memcpy(&nc, buf+0, sizeof(u64));
			memcpy(&ns, buf+8, sizeof(u64));

			if (nc != nnc) {
				error("channel mismatch! aborting!");
				die(zcontext, 1);
			}

			auto f = new float[nc*ns];
			memcpy(f, buf+24, nc*ns*sizeof(float));

			for (size_t i=0; i<nc; i++) {
				bandpass[i]->Proc(&(f[i*ns]), &(f[i*ns]), ns);
			}

			// copy the filtered data back to the buffer
			memcpy(buf+24, f, nc*ns*sizeof(float));

			delete[] f;

			zmq_send(socket_out, buf, nbytes, 0);

			delete[] buf;
		}

	}

	for (auto &x : bandpass) {
		delete x;
	}

	die(zcontext, 0);

}