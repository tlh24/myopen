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

	ArtifactSubtract subtr(16, nnc, 64, 16, 0.99);

	int hwm = 8192;

	// subscribe to broadband messages from the po8e
	void *socket_bb = zmq_socket(zcontext, ZMQ_SUB);
	if (socket_bb == NULL) {
		error("zmq: could not create socket");
		die(zcontext, 1);
	}
	g_socks.push_back(socket_bb);
	zmq_setsockopt(socket_bb, ZMQ_RCVHWM, &hwm, sizeof(hwm));
	if (zmq_connect(socket_bb, zbb.c_str()) != 0) {
		error("zmq: could not connect to socket");
		die(zcontext, 1);
	}
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
	zmq_setsockopt(socket_ev, ZMQ_RCVHWM, &hwm, sizeof(hwm));
	if (zmq_connect(socket_ev, zev.c_str()) != 0) {
		error("zmq: could not connect to socket");
		die(zcontext, 1);
	}
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
	zmq_setsockopt(socket_out, ZMQ_SNDHWM, &hwm, sizeof(hwm));
	if (zmq_bind(socket_out, zout.c_str()) != 0) {
		error("zmq: could not bind to socket");
		die(zcontext, 1);
	}

	// init poll set
	zmq_pollitem_t items [] = {
		{ socket_bb, 0, ZMQ_POLLIN, 0 },
		{ socket_ev, 0, ZMQ_POLLIN, 0 }
	};

	zmq_msg_t bbh, evh;
	zmq_msg_t bb_body, ev_body;
	size_t nbh, neh;
	zmq_packet_header *bbp, *evp;
	size_t nb;
	float *f;
	i16 *ev;

	bool get_bb = true;
	bool get_ev = true;

	u64 bbtick_last = 0;
	u64 evtick_last = 0;

	bool ok_print_err = true;

	while (!s_interrupted) {

		if (zmq_poll(items, 2, -1) == -1) { //  -1 means block
			break;
		}

		if (	(items[0].revents & ZMQ_POLLIN || !get_bb) &&
		        (items[1].revents & ZMQ_POLLIN || !get_ev) ) {

			if (get_bb) {
				zmq_msg_init(&bbh);
				zmq_msg_recv(&bbh, socket_bb, 0);
				nbh = zmq_msg_size(&bbh);
				bbp = (zmq_packet_header *)zmq_msg_data(&bbh);

				if (bbp->tk - bbtick_last != bbp->ns && bbtick_last != 0) {
					warn("lost %ld bb samples", bbp->tk - bbtick_last - bbp->ns);
				}
				bbtick_last = bbp->tk;

				zmq_msg_init(&bb_body);
				zmq_msg_recv(&bb_body, socket_bb, 0);
				nb = zmq_msg_size(&bb_body);
				f = (float *)zmq_msg_data(&bb_body);
			}

			if (get_ev) {
				zmq_msg_init(&evh);
				zmq_msg_recv(&evh, socket_ev, 0);
				neh = zmq_msg_size(&evh);
				evp = (zmq_packet_header *)zmq_msg_data(&evh);

				if (evp->tk - evtick_last != evp->ns && evtick_last != 0) {
					warn("lost %ld ev samples", evp->tk - evtick_last - evp->ns);
				}
				evtick_last = evp->tk;

				zmq_msg_init(&ev_body);
				zmq_msg_recv(&ev_body, socket_ev, 0);
				ev = (i16 *)zmq_msg_data(&ev_body);
			}

			if (bbp->tk < evp->tk) {
				get_ev = false;
				if (ok_print_err) {
					printf("dropped bb\t%ld %ld %ld\n", bbp->tk, evp->tk, bbp->tk - evp->tk);
					ok_print_err = false;
				}
				zmq_msg_close(&bbh);
				zmq_msg_close(&bb_body);
			}

			if (bbp->tk > evp->tk) {
				get_bb = false;
				if (ok_print_err) {
					printf("dropped ev\t%ld %ld %ld\n", bbp->tk, evp->tk, bbp->tk - evp->tk);
					ok_print_err = false;
				}
				zmq_msg_close(&evh);
				zmq_msg_close(&ev_body);
			}

			if (bbp->tk == evp->tk) {	// ie packets are aligned

				ok_print_err = true;

				if (bbp->ns != evp->ns) {
					warn("bb/ev packet sample mismatch");
					break;
				}

				u64 ns  = bbp->ns;

				// xxx incidentally how will we handle multiple (different) currents??!

				auto sc = new u16[ns];
				memcpy(sc, &(ev[g_ec_stim*ns]), ns*sizeof(u16));
				auto cu = new u16[ns];
				memcpy(cu, &(ev[g_ec_current*ns]), ns*sizeof(u16));

				subtr.filter(f, sc, cu, ns);

				delete[] cu;
				delete[] sc;

				zmq_send(socket_out, bbp, nbh, ZMQ_SNDMORE);
				zmq_send(socket_out, f, nb, 0);

				zmq_msg_close(&bbh);
				zmq_msg_close(&evh);
				zmq_msg_close(&bb_body);
				zmq_msg_close(&ev_body);

				get_bb = true;
				get_ev = true;
			}
		}

	}

	die(zcontext, 0);
}
