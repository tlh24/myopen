#include <signal.h>				// for signal, SIGINT
#include <thread>
#include <sys/stat.h>
#include <armadillo>
#include <zmq.hpp>
#include "util.h"
#include "artifact_subtract.h"

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
	// subtr [zmq_sub_bb] [zmq_sub_ev] [zmq_pub_bb]

	std::string zbb  = argc > 1 ? argv[1] : "ipc:///tmp/broadband.zmq";
	std::string zev  = argc > 2 ? argv[2] : "ipc:///tmp/events.zmq";
	std::string zout = argc > 3 ? argv[3] : "ipc:///tmp/subtr.zmq";

	printf("artifact subtraction\n");
	printf("usage: subtr [zmq_sub_bb] [zmq_sub_ev] [zmq_pub]\n\n");

	printf("ZMQ SUB BROADBAND: %s\n", zbb.c_str());
	printf("ZMQ SUB EVENTS: %s\n", zev.c_str());
	printf("ZMQ PUB: %s\n", zout.c_str());
	printf("\n");

	s_catch_signals();

	zmq::context_t zcontext(1);	// single zmq thread

	if (check_running("subtr")) {
		error("executable already running");
		return 1;
	}

	zmq::socket_t po8e_query_sock(zcontext, ZMQ_REQ);
	po8e_query_sock.connect("ipc:///tmp/po8e-query.zmq");

	u64 nnc; // num neural channels
	u64 nec; // num events channels
	zmq::message_t msg(3);
	memcpy(msg.data(), "NNC", 3);
	po8e_query_sock.send(msg);
	msg.rebuild();
	po8e_query_sock.recv(&msg);
	memcpy(&nnc, (u64 *)msg.data(), sizeof(u64));

	// get nec, num events channels
	msg.rebuild(3);
	memcpy(msg.data(), "NEC", 3);
	po8e_query_sock.send(msg);
	msg.rebuild();
	po8e_query_sock.recv(&msg);
	memcpy(&nec, (u64 *)msg.data(), sizeof(u64));

	// need to ask the po8e for events data details
	if (nec > 1) {
		error("i cannot yet handle more than a single events channel!");
		return 1;
	}

	// EC : 0 : NAME
	msg.rebuild(2);
	memcpy(msg.data(), "EC", 2);
	po8e_query_sock.send(msg, ZMQ_SNDMORE);
	msg.rebuild(sizeof(u64));
	{	// reduce scope for ch
		u64 ch = 0;
		memcpy(msg.data(), &ch, sizeof(u64));
	}
	po8e_query_sock.send(msg, ZMQ_SNDMORE);
	msg.rebuild(4);
	memcpy(msg.data(), "NAME", 4);
	po8e_query_sock.send(msg);
	msg.rebuild();
	po8e_query_sock.recv(&msg);
	if (strcmp((char *)msg.data(), "stim") != 0) {
		error("events channel name (%s) is unexpected", (char*)msg.data());
		return 1;
	}

	// xxx set or at least print sample length and delay
	std::vector <ArtifactSubtract *> subtr;
	for (size_t i=0; i<nnc; i++) {
		auto o = new ArtifactSubtract(64);
		o->setDelay(16); // samples
		subtr.push_back(o);
	}

	// subscribe to broadband messages from the po8e
	zmq::socket_t sock_bb(zcontext, ZMQ_SUB);
	sock_bb.connect(zbb.c_str());
	sock_bb.setsockopt(ZMQ_SUBSCRIBE, "", 0);	// subscribe to everything


	// same but for events messages
	zmq::socket_t sock_ev(zcontext, ZMQ_SUB);
	sock_ev.connect(zev.c_str());
	sock_ev.setsockopt(ZMQ_SUBSCRIBE, "", 0);	// subscribe to everything

	// publish SA subtracted data with this socket
	zmq::socket_t sock_out(zcontext, ZMQ_PUB);
	sock_out.bind(zout.c_str());

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

	size_t zbb_n = zbb.find_last_of("/");
	size_t zev_n = zev.find_last_of("/");
	size_t zout_n = zout.find_last_of("/");

	// init poll set
	zmq::pollitem_t items [] = {
		{ sock_bb, 	0, ZMQ_POLLIN, 0 },
		{ sock_ev, 	0, ZMQ_POLLIN, 0 }
	};

	while (!s_interrupted) {

		try {
			zmq::poll(&items[0], 2, -1); //  -1 means block
		} catch (zmq::error_t &e) {}


		if (items[0].revents & ZMQ_POLLIN) {

			sock_bb.recv(&msg);
			auto n = msg.size();
			char *ptr = (char *)msg.data();

			u64 nc, ns;

			// parse message
			memcpy(&nc, ptr+0, sizeof(u64));

			if (nnc != nc) {
				error("num channel mismatch (expected %d got %d)", nnc, nc);
				s_interrupted = true;
			}

			memcpy(&ns, ptr+8, sizeof(u64));

			auto tk = new i64[ns];

			memcpy(tk, ptr+16, sizeof(i64));

			for (size_t i=1; i < ns; i++) {
				tk[i] = tk[i-1] + 1;
			}

			auto f = new float[nc * ns];
			auto g = new float[nc * ns];
			memcpy(f, ptr+24, nc*ns*sizeof(float));

			for (size_t i=0; i<nc; i++) {
				for (size_t k=0; k<ns; k++) {
					g[i*ns+k] = subtr[i]->processSample(tk[k], f[i*ns+k]);
				}
			}

			// copy message to buffer
			auto buf = new char[n];
			memcpy(buf, msg.data(), n);
			memcpy(buf+24, g, nc*ns*sizeof(float));

			msg.rebuild(n);
			memcpy(msg.data(), buf, n);

			sock_out.send(msg);

			delete[] buf;

			delete[] tk;
			delete[] f;
			delete[] g;
		}

		if (items[1].revents & ZMQ_POLLIN) {

			sock_ev.recv(&msg);
			char *ptr = (char *)msg.data();

			u16 ec;
			i64 tk;
			u16 ev;

			// parse message
			memcpy(&ec, ptr+0, sizeof(u16));
			memcpy(&tk, ptr+2, sizeof(i64));
			memcpy(&ev, ptr+10, sizeof(u16));

			if (ec != 0) {
				error("stim event id mismatch (expected %d; got %d", 0, ec);
				s_interrupted = true;
			}

			for (size_t ch=0; ch<nnc; ch++) {
				subtr[ch]->processStim(tk, ev);
			}
		}

		// print some ascii art
		if (waiter % 200 == 0) {
			printf(" [%s|%s]%s[%s]\r",
			zbb.substr(zbb_n+1).c_str(),
			zev.substr(zev_n+1).c_str(),
			spinner[counter % spinner.size()],
			zout.substr(zout_n+1).c_str());
			fflush(stdout);
			counter++;
		}
		waiter++;

	}

	// clean up
	for (auto &o : subtr) {
		delete o;
	}

	printf("\n");

}
