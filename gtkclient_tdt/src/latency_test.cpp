#include <signal.h>	// for signal, SIGINT
#include <cstdlib>
#include <string>
#include <vector>
#include <cstring>
#include <zmq.h>
#include "zmq_packet.h"
#include "util.h"
#include <sys/time.h>	// for CLOCK_MONOTONIC_RAW
#include <time.h>		// for timespec, clock_gettime

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

long double get_time()
{
	timespec pt ;
	clock_gettime(CLOCK_MONOTONIC_RAW, &pt);
	long double ret = (long double)(pt.tv_sec) ;
	ret += (long double)(pt.tv_nsec) / 1e9 ;
	return ret;
}

int main(int argc, char *argv[])
{

	// latency_test [ zmq1 ] [ zmq2 ]

	if (argc < 3) {
		printf("usage: latency_test [zmq_sub1] [zmq_sub2]\n\n");
		return 1;
	}

	std::string z1 = argv[1];
	std::string z2 = argv[2];

	debug("ZMQ SUB 1: %s", z1.c_str());
	debug("ZMQ SUB 2: %s", z2.c_str());

	s_catch_signals();

	long double t0 = get_time();

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

	void *sock1 = zmq_socket(zcontext, ZMQ_SUB);
	if (sock1 == NULL) {
		error("zmq: could not create socket");
		die(zcontext, 1);
	}
	g_socks.push_back(sock1);

	if (zmq_connect(sock1, z1.c_str()) != 0) {
		error("zmq: could not connect to socket");
		die(zcontext, 1);
	}
	// subscribe to everything
	if (zmq_setsockopt(sock1, ZMQ_SUBSCRIBE, "", 0) != 0) {
		error("zmq: could not set socket options");
		die(zcontext, 1);
	}

	void *sock2 = zmq_socket(zcontext, ZMQ_SUB);
	if (sock2 == NULL) {
		error("zmq: could not create socket");
		die(zcontext, 1);
	}
	g_socks.push_back(sock2);

	if (zmq_connect(sock2, z2.c_str()) != 0) {
		error("zmq: could not connect to socket");
		die(zcontext, 1);
	}
	// subscribe to everything
	if (zmq_setsockopt(sock2, ZMQ_SUBSCRIBE, "", 0) != 0) {
		error("zmq: could not set socket options");
		die(zcontext, 1);
	}

	zmq_pollitem_t items [] = {
		{ sock1, 0, ZMQ_POLLIN, 0 },
		{ sock2, 0, ZMQ_POLLIN, 0 }
	};

	while (!s_interrupted) {

		if (zmq_poll(items, 2, -1) == -1) {
			break;
		}

		for (int i=0; i<2; i++) {
			if (items[i].revents & ZMQ_POLLIN) {
				zmq_msg_t header;
				zmq_msg_init(&header);
				zmq_msg_recv(&header, items[i].socket, 0);
				zmq_packet_header *p = (zmq_packet_header *)zmq_msg_data(&header);
				i64 tk = p->tk;
				zmq_msg_t body;
				zmq_msg_init(&body);
				zmq_msg_recv(&body, items[i].socket, 0);

				long double t = get_time() - t0;

				printf("%d\t%ld\t%Lf\n", i, tk, t);

				zmq_msg_close(&header);
				zmq_msg_close(&body);

			}
		}
	}
	die(zcontext, 0);
}

