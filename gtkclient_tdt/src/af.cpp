#include <signal.h>				// for signal, SIGINT
#include <thread>
#include <armadillo>
#include <zmq.hpp>
#include "util.h"
#include "artifact_filter.h"

// af - the Artifact Filter

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

void trainer(zmq::context_t &ctx, ArtifactNLMS3 &nlms)
{

	// for data
	zmq::socket_t socket(ctx, ZMQ_SUB);
	socket.connect("inproc://data");
	socket.setsockopt(ZMQ_SUBSCRIBE, "", 0);	// subscribe to everything

	// for control input
	zmq::socket_t controller(ctx, ZMQ_SUB);
	controller.connect("inproc://controller");
	controller.setsockopt(ZMQ_SUBSCRIBE, "", 0);

	// init poll set
	zmq::pollitem_t items [] = {
		{ socket, 		0, ZMQ_POLLIN, 0 },
		{ controller, 	0, ZMQ_POLLIN, 0}
	};

	while (true) {

		zmq::message_t buf;

		zmq::poll(&items[0], 2, -1); //  -1 means block

		if (items[0].revents & ZMQ_POLLIN) {
			socket.recv(&buf);

			char *ptr = (char *)buf.data();

			u64 nnc, ns;

			// parse message
			memcpy(&nnc, ptr+0, sizeof(u64));
			memcpy(&ns, ptr+8, sizeof(u64));

			auto data = new i16[nnc * ns];
			memcpy(data, ptr+32, nnc*ns*sizeof(i16));

			mat X(nnc, ns);
			for (size_t i=0; i<nnc; i++) {
				for (size_t k=0; k<ns; k++) {
					X(i, k) = data[i*ns+k];
				}
			}

			nlms.train(X);

			delete[] data;
		}

		if (items[1].revents & ZMQ_POLLIN) {
			//controller.recv(&buf);
			break;
		}
	}
}

void filter(zmq::context_t &ctx, std::string zout, ArtifactNLMS3 &nlms)
{

	zmq::socket_t socket_in(ctx, ZMQ_SUB);
	socket_in.connect("inproc://data");
	socket_in.setsockopt(ZMQ_SUBSCRIBE, "", 0);	// subscribe to everything

	zmq::socket_t socket_out(ctx, ZMQ_PUB);
	socket_out.bind(zout.c_str());

	// for control input
	zmq::socket_t controller(ctx, ZMQ_SUB);
	controller.connect("inproc://controller");
	controller.setsockopt(ZMQ_SUBSCRIBE, "", 0);

	// init poll set
	zmq::pollitem_t items [] = {
		{ socket_in, 	0, ZMQ_POLLIN, 0 },
		{ controller, 	0, ZMQ_POLLIN, 0 }
	};

	while (true) {

		zmq::message_t msg;

		zmq::poll(&items[0], 2, -1); //  -1 means block

		if (items[0].revents & ZMQ_POLLIN) {
			socket_in.recv(&msg);

			// copy message to buffer
			auto buf = new char[msg.size()];
			memcpy(buf, msg.data(), msg.size());

			u64 nnc, ns;

			// parse message
			memcpy(&nnc, buf+0, sizeof(u64));
			memcpy(&ns, buf+8, sizeof(u64));

			auto raw = new i16[nnc * ns];
			memcpy(raw, buf+32, nnc*ns*sizeof(i16));

			mat X(nnc, ns);
			for (size_t i=0; i<nnc; i++) {
				for (size_t j=0; j<ns; j++) {
					X(i, j) = raw[i*ns+j];
				}
			}

			mat Y = nlms.filter(X);

			for (size_t i=0; i<nnc; i++) {
				for (size_t j=0; j<ns; j++) {
					raw[i*ns+j] -= Y(i, j);
				}
			}

			memcpy(buf+32, raw, nnc*ns*sizeof(i16));

			delete[] raw;

			msg.rebuild(32+nnc*ns*sizeof(i16));
			memcpy(msg.data(), buf, msg.size());

			socket_out.send(msg);

			delete[] buf;
		}

		if (items[1].revents & ZMQ_POLLIN) {
			//controller.recv(&buf);
			break;
		}

	}
}

int main(int argc, char *argv[])
{
	std::string zin, zout;
	if (argc > 1) {
		zin = argv[1];
	} else {
		zin = "ipc:///tmp/po8e.zmq";
	}
	if (argc > 2) {
		zout = argv[2];
	} else {
		zout = "ipc:///tmp/af.zmq";
	}

	printf("artifact filter\n");
	printf("usage: af [insock] [outsock]\n\n");
	printf("receiving on\t%s\n", zin.c_str());
	printf("sending on\t%s\n", zout.c_str());

	s_catch_signals();

	zmq::context_t zcontext(1);	// single zmq thread

	if (check_running("af")) {
		error("executable already running");
		return 1;
	}

	// xxx need to ask po8e for how many channels there are here, i guess

	ArtifactNLMS3 nlms(192); // XXX hardcoded
	nlms.setMu(1e-6);

	// xxx also need to load config from luaconf

	std::thread t1(trainer, std::ref(zcontext), std::ref(nlms));
	std::thread t2(filter, std::ref(zcontext), zout, std::ref(nlms));

	// here is what will do:
	// subscribe to messages from po8e (tcp)
	// publish them to the training thread (inproc)
	// publish them to the filter thread (also inproc)
	// the filter thread then publishes the result (tcp)

	// this socket subscribes to messages sent from the po8e
	zmq::socket_t subscriber(zcontext, ZMQ_XSUB);
	subscriber.connect(zin.c_str()); // XXX hardcoded for now!!!

	// this socket publishes received message to local threads
	zmq::socket_t publisher(zcontext, ZMQ_XPUB);
	publisher.bind("inproc://data");

	zmq::socket_t controller(zcontext, ZMQ_PUB);
	controller.bind("inproc://controller");

	// this hooks up the subscriber to the publisher
	try {
		zmq::proxy(subscriber, publisher, nullptr);
	} catch (zmq::error_t &e) {}

	std::string s("KILL");
	zmq::message_t msg(s.size());
	memcpy(msg.data(), s.c_str(), s.size());
	controller.send(msg);

	t1.join();
	t2.join();
	nlms.saveWeights("nlms.h5");
	printf("\nsaving weights\n");
}