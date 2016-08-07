#include <signal.h>				// for signal, SIGINT
#include <thread>
#include <string>
#include <cstring>
#include <limits.h>
#include <sys/stat.h>
#include <armadillo>
#include <zmq.h>
#include "zmq_packet.h"
#include <basedir.h>
#include <basedir_fs.h>
#include "lconf.h"
#include "util.h"
#include "artifact_subtract.h"

u64 g_ec_stim = UINT_MAX;
u64 g_ec_current = UINT_MAX;
u16 g_current = 0;

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
	// subtr [zmq_sub_bb] [zmq_sub_ev] [zmq_pub_bb]

	if (argc < 4) {
		printf("\nsubtr - artifact subtraction\n");
		printf("usage: subtr [zmq_sub_bb] [zmq_sub_ev] [zmq_pub]\n\n");
		return 1;
	}

	std::string zbb 	= argv[1];
	std::string zev 	= argv[2];
	std::string zout 	= argv[3];

	debug("ZMQ SUB BROADBAND: %s", zbb.c_str());
	debug("ZMQ SUB EVENTS: %s", zev.c_str());
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

	u64 nec; // num events channels
	zmq_send(query_sock, "NEC", 3, 0);
	if (zmq_recv(query_sock, &nec, sizeof(u64), 0) == -1) {
		error("zmq: could not recv from query sock");
		die(zcontext, 1);
	}

	// nb we must not assume that the string is null terminated!
	auto is = [](zmq_msg_t *m, const char *c) {
		return strncmp((char *)zmq_msg_data(m), c, zmq_msg_size(m)) == 0;
	};

	for (u64 ch=0; ch<nec; ch++) {
		// EC : X : NAME
		zmq_send(query_sock, "EC", 2, ZMQ_SNDMORE);
		zmq_send(query_sock, &ch, sizeof(u64), ZMQ_SNDMORE);
		zmq_send(query_sock, "NAME", 4, 0);

		zmq_msg_t msg;
		zmq_msg_init(&msg);
		zmq_msg_recv(&msg, query_sock, 0);

		if (is(&msg, "stim")) {
			g_ec_stim = ch;
		}
		if (is(&msg, "current")) {
			g_ec_current = ch;
		}
		zmq_msg_close(&msg);
	}

	// xxx set or at least print sample length and delay
	std::vector <ArtifactSubtract *> subtr;
	for (size_t i=0; i<nnc; i++) {
		auto o = new ArtifactSubtract(16, 64, 16, 0.99);
		subtr.push_back(o);
	}

	// subscribe to broadband messages from the po8e
	void *socket_bb = zmq_socket(zcontext, ZMQ_SUB);
	if (socket_bb == NULL) {
		error("zmq: could not create socket");
		die(zcontext, 1);
	}
	g_socks.push_back(socket_bb);

	if (zmq_connect(socket_bb, zbb.c_str()) != 0) {
		error("zmq: could not connect to socket");
		die(zcontext, 1);
	}
	// subscribe to everything
	if (zmq_setsockopt(socket_bb, ZMQ_SUBSCRIBE, "", 0) != 0) {
		error("zmq: could not set socket options");
		die(zcontext, 1);
	}

	// same but for events messages
	void *socket_ev = zmq_socket(zcontext, ZMQ_SUB);
	if (socket_ev == NULL) {
		error("zmq: could not create socket");
		die(zcontext, 1);
	}
	g_socks.push_back(socket_ev);

	if (zmq_connect(socket_ev, zev.c_str()) != 0) {
		error("zmq: could not connect to socket");
		die(zcontext, 1);
	}
	// subscribe to everything
	if (zmq_setsockopt(socket_ev, ZMQ_SUBSCRIBE, "", 0) != 0) {
		error("zmq: could not set socket options");
		die(zcontext, 1);
	}

	// publish SA subtracted data with this socket
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
		{ socket_bb, 0, ZMQ_POLLIN, 0 },
		{ socket_ev, 0, ZMQ_POLLIN, 0 }
	};

	while (!s_interrupted) {

		if (zmq_poll(items, 2, -1) == -1) { //  -1 means block
			break;
		}

		if (items[0].revents & ZMQ_POLLIN) {

			zmq_msg_t header;
			zmq_msg_init(&header);
			zmq_msg_recv(&header, socket_bb, 0);
			size_t nh = zmq_msg_size(&header);
			zmq_neural_header *p = (zmq_neural_header *)zmq_msg_data(&header);
			u64 nc = p->nc;
			u64 ns = p->ns;
			i64 tk = p->tk;

			zmq_msg_t body;
			zmq_msg_init(&body);
			zmq_msg_recv(&body, socket_bb, 0);
			size_t nb = zmq_msg_size(&body);
			float *f = (float *)zmq_msg_data(&body);

			for (size_t i=0; i<nc; i++) {
				for (size_t k=0; k<ns; k++) {
					f[i*ns+k] = subtr[i]->processSample(tk+k, f[i*ns+k]);
				}
			}

			zmq_send(socket_out, p, nh, ZMQ_SNDMORE);
			zmq_send(socket_out, f, nb, 0);
			zmq_msg_close(&header);
			zmq_msg_close(&body);
		}

		// xxx need to use zmq_packet technique here xxx
		if (items[1].revents & ZMQ_POLLIN) {

			zmq_msg_t msg;
			zmq_msg_init(&msg);
			zmq_msg_recv(&msg, socket_ev, 0);

			zmq_event_packet *p = (zmq_event_packet *)zmq_msg_data(&msg);

			u64 ec = p->ec;
			i64 tk = p->tk;
			u16 ev = p->ev;

			if (ec == g_ec_stim) {

				auto check_bit = [](u16 var, int n) -> bool {
					if (n < 0 || n > 15)
					{
						return false;
					}
					return (var) & (1<<n);
				};

				for (int i=0; i<16; i++) {
					if (check_bit(ev, i)) {
						for (size_t ch=0; ch<nnc; ch++) {
							subtr[ch]->processStim(tk, i, g_current);
						}
					}
				}
			}

			if (ec == g_ec_current) {
				g_current = ev;
			}
			zmq_msg_close(&msg);
		}

	}

	// clean up
	for (auto &o : subtr) {
		delete o;
	}

	die(zcontext, 0);
}
