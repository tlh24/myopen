#include <signal.h>	// for signal, SIGINT
#include <string>
#include <cstring>
#include <vector>
#include <zmq.h>
#include "util.h"

bool s_interrupted = false;

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

int main(int argc, char *argv[])
{
	// noop [zmq_sub] [zmq_pub]

	if (argc < 3) {
		printf("\nnoop - no-operation filter\n");
		printf("usage: noop [zmq_sub] [zmq_pub]\n\n");
		return 1;
	}

	std::string zin  = argv[1];
	std::string zout = argv[2];

	debug("ZMQ SUB: %s", zin.c_str());
	debug("ZMQ PUB: %s", zout.c_str());

	s_catch_signals();

	void *zcontext = zmq_ctx_new();
	if (zcontext == NULL) {
		error("zmq: could not create context");
		return 1;
	}

	void *socket_in = zmq_socket(zcontext, ZMQ_SUB);
	if (socket_in == NULL) {
		error("zmq: could not create socket");
		zmq_ctx_destroy(zcontext);
		return 1;
	}

	if (zmq_connect(socket_in, zin.c_str()) != 0) {
		error("zmq: could not connect to socket");
		zmq_close(socket_in);
		zmq_ctx_destroy(zcontext);
		return 1;
	}

	// subscribe to everything
	if (zmq_setsockopt(socket_in, ZMQ_SUBSCRIBE, "", 0) !=0) {
		error("zmq: could not set socket options");
		zmq_close(socket_in);
		zmq_ctx_destroy(zcontext);
		return 1;
	}

	void *socket_out = zmq_socket(zcontext, ZMQ_PUB);
	if (socket_out == NULL) {
		error("zmq: could not create socket");
		zmq_close(socket_in);
		zmq_ctx_destroy(zcontext);
		return 1;
	}

	if (zmq_bind(socket_out, zout.c_str()) != 0) {
		error("zmq: could not bind to socket");
		zmq_close(socket_out);
		zmq_close(socket_in);
		zmq_ctx_destroy(zcontext);
		return 1;
	}

	while (!s_interrupted) {
		zmq_proxy(socket_in, socket_out, NULL);
	}

	// cleanup
	zmq_close(socket_out);
	zmq_close(socket_in);
	zmq_ctx_destroy(zcontext);
}