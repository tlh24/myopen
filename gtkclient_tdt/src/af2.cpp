#include <signal.h>	// for signal, SIGINT
#include <thread>
#include <string>
#include <cstring>
#include <sys/stat.h>
#include <armadillo>
#include <zmq.h>
#include "util.h"
#include "artifact_filter.h"

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

void trainer(void *ctx, size_t batch_size, ArtifactFilterDirect &af)
{

	// for data
	void *socket = zmq_socket(ctx, ZMQ_SUB);
	zmq_connect(socket, "inproc://data");
	zmq_setsockopt(socket, ZMQ_SUBSCRIBE, "", 0);

	// for control input
	void *controller = zmq_socket(ctx, ZMQ_SUB);
	zmq_connect(controller, "inproc://controller");
	zmq_setsockopt(controller, ZMQ_SUBSCRIBE, "", 0);

	// init poll set
	zmq_pollitem_t items [] = {
		{ socket, 		0, ZMQ_POLLIN, 0 },
		{ controller, 	0, ZMQ_POLLIN, 0}
	};

	mat X(af.order(), batch_size);

	size_t idx = 0;

	while (true) {

		zmq_poll(items, 2, -1); //  -1 means block

		if (items[0].revents & ZMQ_POLLIN) {
			zmq_msg_t msg;
			zmq_msg_init(&msg);
			zmq_msg_recv(&msg, socket, 0);

			char *ptr = (char *)zmq_msg_data(&msg);

			u64 nc, ns;

			// parse message
			memcpy(&nc, ptr+0, sizeof(u64));
			memcpy(&ns, ptr+8, sizeof(u64));

			if (nc != af.order()) {
				error("channel size / filter order mismatch!");
				s_interrupted = true;
				break;
			}

			auto f = new float[nc*ns];
			memcpy(f, ptr+24, nc*ns*sizeof(float));
			zmq_msg_close(&msg);

			if (idx+ns >= batch_size) {
				X.resize(nc, idx+ns+1);
			}

			for (size_t i=0; i<nc; i++) {
				for (size_t k=0; k<ns; k++) {
					X(i, idx+k) = f[i*ns+k];
				}
			}

			idx += ns;

			if (idx >= batch_size) {
				af.train(X);
				X.set_size(nc, batch_size);
				idx = 0;
			}

			delete[] f;
		}

		if (items[1].revents & ZMQ_POLLIN) {
			//controller.recv(&buf);
			break;
		}
	}
}

void filter(void *ctx, std::string zout, ArtifactFilterDirect &af)
{
	// for data in
	void *socket_in = zmq_socket(ctx, ZMQ_SUB);
	zmq_connect(socket_in, "inproc://data");
	zmq_setsockopt(socket_in, ZMQ_SUBSCRIBE, "", 0);

	// for data out
	void *socket_out = zmq_socket(ctx, ZMQ_PUB);
	zmq_connect(socket_out, zout.c_str());

	// for control input
	void *controller = zmq_socket(ctx, ZMQ_SUB);
	zmq_connect(controller, "inproc://controller");
	zmq_setsockopt(controller, ZMQ_SUBSCRIBE, "", 0);

	// init poll set
	zmq_pollitem_t items [] = {
		{ socket_in, 	0, ZMQ_POLLIN, 0 },
		{ controller, 	0, ZMQ_POLLIN, 0 }
	};

	while (true) {

		zmq_poll(items, 2, -1); //  -1 means block

		if (items[0].revents & ZMQ_POLLIN) {
			zmq_msg_t msg;
			zmq_msg_init(&msg);
			zmq_msg_recv(&msg, socket_in, 0);

			char *ptr = (char *)zmq_msg_data(&msg);

			u64 nc, ns;
			i64 tk;

			// parse message
			memcpy(&nc, ptr+0,  sizeof(u64));
			memcpy(&ns, ptr+8,  sizeof(u64));
			memcpy(&tk, ptr+16, sizeof(i64));

			auto f = new float[nc*ns];
			memcpy(f, ptr+24, nc*ns*sizeof(float));
			ptr = NULL;
			zmq_msg_close(&msg);

			mat X(nc, ns);
			for (size_t i=0; i<nc; i++) {
				for (size_t j=0; j<ns; j++) {
					X(i, j) = f[i*ns+j];
				}
			}

			mat Y = af.filter(X);

			for (size_t i=0; i<nc; i++) {
				for (size_t j=0; j<ns; j++) {
					f[i*ns+j] -= Y(i, j);
				}
			}

			size_t nbytes = 24 + nc*ns*sizeof(float);
			zmq_msg_init_size(&msg, nbytes);
			ptr = (char *)zmq_msg_data(&msg);
			memcpy(ptr+0,  &nc, sizeof(u64)); // nc - 8 bytes
			memcpy(ptr+8,  &ns, sizeof(u64)); // ns - 8 bytes
			memcpy(ptr+16, &tk, sizeof(i64)); // tk - 8 bytes (zeroth tick)
			memcpy(ptr+24, f, 	nc*ns*sizeof(float));

			delete[] f;

			zmq_msg_send(&msg, socket_out, 0);
			zmq_msg_close(&msg);
		}

		if (items[1].revents & ZMQ_POLLIN) {
			//controller.recv(&buf);
			break;
		}
	}
}

int main(int argc, char *argv[])
{
	// af2 [batch_size_samps] [zmq_sub] [zmq_pub]

	if (argc < 4) {
		printf("\naf2 - artifact filter v2 (direct computation / batch update)\n");
		printf("usage: af2 [batch_size_samps] [zmq_sub] [zmq_pub]\n\n");
		return 1;
	}

	size_t batch_size 	= atoi(argv[1]);
	std::string zin 	= argv[2];
	std::string zout 	= argv[3];

	debug("Batch Size: %zu samples", batch_size);
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
		error("zmq: could not recv from query sock");
		die(zcontext, 1);
	}

	ArtifactFilterDirect af(nnc);

	struct stat buf;
	if (stat("af2.h5", &buf) == 0) { // ie file exists
		printf("loading af2 weights\n");
		af.loadWeights("af2.h5");
	}

	std::thread t1(trainer, zcontext, batch_size, std::ref(af));
	std::thread t2(filter, zcontext, zout, std::ref(af));

	// here is what will do:
	// subscribe to messages from po8e
	// publish them to the training thread (inproc)
	// publish them to the filter thread (also inproc)
	// the filter thread then publishes the result
	// the controller socket handles killing threads

	void *controller = zmq_socket(zcontext, ZMQ_PUB);
	if (controller == NULL) {
		error("zmq: could not create socket");
		zmq_ctx_destroy(zcontext);
		return 1;
	}

	if (zmq_bind(controller, "inproc://controller") != 0) {
		error("zmq: could not bind to socket");
		zmq_close(controller);
		zmq_ctx_destroy(zcontext);
		return 1;
	}

	// this socket subscribes to messages sent from the po8e
	void *subscriber = zmq_socket(zcontext, ZMQ_XSUB);
	if (subscriber == NULL) {
		error("zmq: could not create socket");
		die(zcontext, 1);
	}
	g_socks.push_back(subscriber);
	if (zmq_connect(subscriber, zin.c_str()) != 0) {
		error("zmq: could not connect to socket");
		die(zcontext, 1);
	}

	// this socket publishes received message to local threads
	void *publisher = zmq_socket(zcontext, ZMQ_XPUB);
	if (publisher == NULL) {
		error("zmq: could not create socket");
		die(zcontext, 1);
	}
	g_socks.push_back(publisher);
	if (zmq_bind(publisher, "inproc://data") != 0) {
		error("zmq: could not bind to socket");
		die(zcontext, 1);
	}

	// this hooks up the subscriber to the publisher
	while (!s_interrupted) {
		zmq_proxy(subscriber, publisher, NULL);
	}

	zmq_send(controller, "KILL", 4, 0);

	t1.join();
	t2.join();
	af.saveWeights("af2.h5");
	printf("\nsaving weights\n");

	die(zcontext, 0);
}
