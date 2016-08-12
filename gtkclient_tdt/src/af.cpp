#include <signal.h>				// for signal, SIGINT
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

void trainer(void *ctx, ArtifactNLMS3 &af)
{

	int hwm = 2048;

	// for data
	void *socket = zmq_socket(ctx, ZMQ_SUB);
	zmq_setsockopt(socket, ZMQ_RCVHWM, &hwm, sizeof(hwm));
	zmq_connect(socket, "inproc://data");
	zmq_setsockopt(socket, ZMQ_SUBSCRIBE, "", 0);

	// for control input
	void *controller = zmq_socket(ctx, ZMQ_SUB);
	zmq_connect(controller, "inproc://controller");
	zmq_setsockopt(controller, ZMQ_SUBSCRIBE, "", 0);

	zmq_pollitem_t items [] = {
		{ socket, 		0, ZMQ_POLLIN, 0 },
		{ controller, 	0, ZMQ_POLLIN, 0}
	};

	while (true) {

		zmq_poll(items, 2, -1); //  -1 means block

		if (items[0].revents & ZMQ_POLLIN) {
			zmq_msg_t header;
			zmq_msg_init(&header);
			zmq_msg_recv(&header, socket, 0);
			zmq_packet_header *p = (zmq_packet_header *)zmq_msg_data(&header);
			u64 nc = p->nc;
			u64 ns = p->ns;

			zmq_msg_t body;
			zmq_msg_init(&body);
			zmq_msg_recv(&body, socket, 0);
			float *f = (float *)zmq_msg_data(&body);

			mat X(nc, ns);
			for (size_t i=0; i<nc; i++) {
				for (size_t k=0; k<ns; k++) {
					X(i, k) = f[i*ns+k];
				}
			}

			af.train(X);

			zmq_msg_close(&header);
			zmq_msg_close(&body);
		}

		if (items[1].revents & ZMQ_POLLIN) {
			//controller.recv(&buf);
			break;
		}
	}
}

void filter(void *ctx, std::string zout, ArtifactNLMS3 &af)
{

	int hwm = 2048;

	// for data in
	void *socket_in = zmq_socket(ctx, ZMQ_SUB);
	zmq_setsockopt(socket_in, ZMQ_RCVHWM, &hwm, sizeof(hwm));
	zmq_connect(socket_in, "inproc://data");
	zmq_setsockopt(socket_in, ZMQ_SUBSCRIBE, "", 0);

	// for data out
	void *socket_out = zmq_socket(ctx, ZMQ_PUB);
	zmq_setsockopt(socket_out, ZMQ_SNDHWM, &hwm, sizeof(hwm));
	zmq_connect(socket_out, zout.c_str());

	// for control input
	void *controller = zmq_socket(ctx, ZMQ_SUB);
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
			zmq_packet_header *p = (zmq_packet_header *)zmq_msg_data(&header);
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
			//controller.recv(&buf);
			break;
		}
	}
}

int main(int argc, char *argv[])
{
	// af [zmq_sub] [zmq_pub]

	if (argc < 3) {
		printf("\naf - artifact filter\n");
		printf("usage: af [zmq_sub] [zmq_pub]\n\n");
		return 1;
	}

	std::string zin  = argv[1];
	std::string zout = argv[2];

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

	ArtifactNLMS3 af(nnc);

	struct stat buf;
	if (stat("af.h5", &buf) == 0) { // ie file exists
		printf("loading af weights\n");
		af.loadWeights("af.h5");
	}

	af.setMu(5e-6);

	std::thread t1(trainer, zcontext, std::ref(af));
	std::thread t2(filter, zcontext, zout, std::ref(af));

	// here is what will do:
	// subscribe to messages from po8e
	// publish them to the training thread (inproc)
	// publish them to the filter thread (also inproc)
	// the filter thread then publishes the results
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

	int hwm = 2048;

	// this socket subscribes to messages sent from the po8e
	void *subscriber = zmq_socket(zcontext, ZMQ_XSUB);
	if (subscriber == NULL) {
		error("zmq: could not create socket");
		die(zcontext, 1);
	}
	g_socks.push_back(subscriber);
	zmq_setsockopt(subscriber, ZMQ_RCVHWM, &hwm, sizeof(hwm));
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
	af.saveWeights("af.h5");
	printf("\nsaving weights\n");

	die(zcontext, 0);
}
