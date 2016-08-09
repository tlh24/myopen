#include <signal.h>	// for signal, SIGINT
#include <thread>
#include <string>
#include <cstring>
#include <sys/stat.h>
#include <armadillo>
#include <zmq.h>
#include "zmq_packet.h"
#include <basedir.h>
#include <basedir_fs.h>
#include "lconf.h"
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
	g_socks.push_back(socket);
	zmq_connect(socket, "inproc://data");
	zmq_setsockopt(socket, ZMQ_SUBSCRIBE, "", 0);

	// for control input
	void *controller = zmq_socket(ctx, ZMQ_SUB);
	g_socks.push_back(controller);
	zmq_connect(controller, "inproc://controller");
	zmq_setsockopt(controller, ZMQ_SUBSCRIBE, "", 0);

	zmq_pollitem_t items [] = {
		{ socket, 		0, ZMQ_POLLIN, 0 },
		{ controller, 	0, ZMQ_POLLIN, 0}
	};

	mat X(af.order(), batch_size);

	size_t idx = 0;

	while (true) {

		zmq_poll(items, 2, -1); //  -1 means block

		if (items[0].revents & ZMQ_POLLIN) {
			zmq_msg_t header;
			zmq_msg_init(&header);
			zmq_msg_recv(&header, socket, 0);
			zmq_neural_header *p = (zmq_neural_header *)zmq_msg_data(&header);
			u64 nc = p->nc;
			u64 ns = p->ns;

			zmq_msg_t body;
			zmq_msg_init(&body);
			zmq_msg_recv(&body, socket, 0);
			float *f = (float *)zmq_msg_data(&body);

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
				debug("af2: training on batch");
				af.train(X);
				X.set_size(nc, batch_size);
				idx = 0;
			}

			zmq_msg_close(&header);
			zmq_msg_close(&body);
		}

		if (items[1].revents & ZMQ_POLLIN) {
			break;
		}
	}
}

void filter(void *ctx, std::string zout, ArtifactFilterDirect &af)
{
	// for data in
	void *socket_in = zmq_socket(ctx, ZMQ_SUB);
	g_socks.push_back(socket_in);
	zmq_connect(socket_in, "inproc://data");
	zmq_setsockopt(socket_in, ZMQ_SUBSCRIBE, "", 0);

	// for data out
	void *socket_out = zmq_socket(ctx, ZMQ_PUB);
	g_socks.push_back(socket_out);
	zmq_bind(socket_out, zout.c_str());

	// for control input
	void *controller = zmq_socket(ctx, ZMQ_SUB);
	g_socks.push_back(controller);
	zmq_connect(controller, "inproc://controller");
	zmq_setsockopt(controller, ZMQ_SUBSCRIBE, "", 0);

	zmq_pollitem_t items [] = {
		{ socket_in, 	0, ZMQ_POLLIN, 0 },
		{ controller, 	0, ZMQ_POLLIN, 0 }
	};

	while (true) {

		zmq_poll(items, 2, -1); //  -1 means block

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
			float *f = (float *)zmq_msg_data(&body);

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

			zmq_send(socket_out, p, nh, ZMQ_SNDMORE);
			zmq_send(socket_out, f, nb, 0);

			zmq_msg_close(&header);
			zmq_msg_close(&body);
		}

		if (items[1].revents & ZMQ_POLLIN) {
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
		die(zcontext, 1);
	}
	g_socks.push_back(controller);
	if (zmq_bind(controller, "inproc://controller") != 0) {
		error("zmq: could not bind to socket");
		die(zcontext, 1);
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
