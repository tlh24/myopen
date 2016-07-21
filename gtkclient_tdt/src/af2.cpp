#include <signal.h>				// for signal, SIGINT
#include <thread>
#include <sys/stat.h>
#include <armadillo>
#include <zmq.hpp>
#include "util.h"
#include "artifact_filter.h"

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

void trainer(zmq::context_t &ctx, size_t batch_size, ArtifactFilterDirect &af)
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

	mat X(af.order(), batch_size);

	size_t idx = 0;

	while (true) {

		zmq::message_t buf;

		zmq::poll(&items[0], 2, -1); //  -1 means block

		if (items[0].revents & ZMQ_POLLIN) {
			socket.recv(&buf);

			char *ptr = (char *)buf.data();

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

void filter(zmq::context_t &ctx, std::string zin, std::string zout,
            ArtifactFilterDirect &af)
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

	int waiter = 0;
	int counter = 0;
	std::vector<const char *> spinner;
	spinner.emplace_back(">>>    >>>");
	spinner.emplace_back(" >>>    >>");
	spinner.emplace_back("  >>>    >");
	spinner.emplace_back("   >>>    ");
	spinner.emplace_back("    >>>   ");
	spinner.emplace_back(">    >>>  ");
	spinner.emplace_back(">>    >>> ");

	size_t zin_n = zin.find_last_of("/");
	size_t zout_n = zout.find_last_of("/");

	while (true) {

		zmq::message_t msg;

		zmq::poll(&items[0], 2, -1); //  -1 means block

		if (items[0].revents & ZMQ_POLLIN) {
			socket_in.recv(&msg);

			// copy message to buffer
			auto buf = new char[msg.size()];
			memcpy(buf, msg.data(), msg.size());

			u64 nc, ns;

			// parse message
			memcpy(&nc, buf+0, sizeof(u64));
			memcpy(&ns, buf+8, sizeof(u64));

			auto f = new float[nc*ns];
			memcpy(f, buf+24, nc*ns*sizeof(float));

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

			memcpy(buf+24, f, nc*ns*sizeof(float));

			delete[] f;

			msg.rebuild(24+nc*ns*sizeof(float));
			memcpy(msg.data(), buf, msg.size());
			socket_out.send(msg);

			delete[] buf;
		}

		if (items[1].revents & ZMQ_POLLIN) {
			//controller.recv(&buf);
			break;
		}

		if (waiter % 200 == 0) {
			printf(" [%s]%s[%s] (%zu batches)\r",
			       zin.substr(zin_n+1).c_str(),
			       spinner[counter % spinner.size()],
			       zout.substr(zout_n+1).c_str(),
			       af.numBatches());
			fflush(stdout);
			counter++;
		}
		waiter++;

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

	printf("Batch Size: %zu samples\n", batch_size);
	printf("ZMQ SUB: %s\n", zin.c_str());
	printf("ZMQ PUB: %s\n", zout.c_str());
	printf("\n");

	s_catch_signals();

	zmq::context_t zcontext(1);	// single zmq thread

	zmq::socket_t po8e_query_sock(zcontext, ZMQ_REQ);
	po8e_query_sock.connect("ipc:///tmp/po8e-query.zmq");

	u64 nnc; // num neural channels
	zmq::message_t msg(3);
	memcpy(msg.data(), "NNC", 3);
	po8e_query_sock.send(msg);
	msg.rebuild();
	po8e_query_sock.recv(&msg);
	memcpy(&nnc, (u64 *)msg.data(), sizeof(u64));

	ArtifactFilterDirect af(nnc);

	struct stat buf;
	if (stat("af2.h5", &buf) == 0) { // ie file exists
		printf("loading af2 weights\n");
		af.loadWeights("af2.h5");
	}

	std::thread t1(trainer, std::ref(zcontext), batch_size, std::ref(af));
	std::thread t2(filter, std::ref(zcontext), zin, zout, std::ref(af));

	// here is what will do:
	// subscribe to messages from po8e (tcp)
	// publish them to the training thread (inproc)
	// publish them to the filter thread (also inproc)
	// the filter thread then publishes the result (tcp)

	// this socket subscribes to messages sent from the po8e
	zmq::socket_t subscriber(zcontext, ZMQ_XSUB);
	subscriber.connect(zin.c_str());

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
	msg.rebuild(s.size());
	memcpy(msg.data(), s.c_str(), s.size());
	controller.send(msg);

	t1.join();
	t2.join();
	af.saveWeights("af2.h5");
	printf("\nsaving weights\n");
}
