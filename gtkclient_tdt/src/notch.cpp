#include <signal.h>	// for signal, SIGINT
#include <string>
#include <cstring>
#include <zmq.h>
#include "zmq_packet.h"
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
	// notch [zmq_sub] [zmq_pub]

	if (argc < 3) {
		printf("notch - notch filter (60 Hz, 2nd order IIR, Q=35)\n");
		printf("usage: notch [zmq_sub] [zmq_pub]\n\n");
		return 1;
	}

	std::string zin  = argv[1];
	std::string zout = argv[2];

	debug("ZMQ SUB: %s\n", zin.c_str());
	debug("ZMQ PUB: %s\n", zout.c_str());

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
		error("zmq: could not recv from query sock");
		die(zcontext, 1);
	}

	vector <Filter *> notch;

	for (size_t i=0; i<nnc; i++) {
#if defined KHZ_24
		notch.push_back(new FilterNotch_24k_60());
#elif defined KHZ_48
		notch.push_back(new FilterNotch_48k_60());
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

			zmq_cont_packet *p = (zmq_cont_packet *)zmq_msg_data(&msg);
			size_t nbytes = zmq_msg_size(&msg);

			u64 nc = p->nc;
			u64 ns = p->ns;

			float *f = &(p->f); // for convenience

			for (size_t i=0; i<nc; i++) {
				notch[i]->Proc(&(f[i*ns]), &(f[i*ns]), ns);
			}

			zmq_send(socket_out, p, nbytes, 0);
			zmq_msg_close(&msg);
		}

	}

	for (auto &x : notch) {
		delete x;
	}

	die(zcontext, 0);

}