#include <signal.h>				// for signal, SIGINT
#include <thread>
#include <zmq.hpp>
#include "util.h"
#include "filter.h"

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
	std::string zin, zout;

	zin  = argc > 1 ? argv[1] : "ipc:///tmp/broadband.zmq";
	zout = argc > 2 ? argv[2] : "ipc:///tmp/notch.zmq";

	printf("notch filter (60 Hz, 2nd order IIR, Q=35)\n");
	printf("usage: notch [zmq_sub] [zmq_pub]\n\n");

	printf("ZMQ SUB: %s\n", zin.c_str());
	printf("ZMQ PUB: %s\n", zout.c_str());
	printf("\n");

	s_catch_signals();

	zmq::context_t zcontext(1);	// single zmq thread

	if (check_running("notch")) {
		error("executable already running");
		return 1;
	}

	zmq::socket_t po8e_query_sock(zcontext, ZMQ_REQ);
	po8e_query_sock.connect("ipc:///tmp/po8e-query.zmq");

	u64 nnc; // num neural channels
	zmq::message_t msg(3);
	memcpy(msg.data(), "NNC", 3);
	po8e_query_sock.send(msg);
	msg.rebuild();
	po8e_query_sock.recv(&msg);
	memcpy(&nnc, (u64 *)msg.data(), sizeof(u64));

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

	zmq::socket_t socket_in(zcontext, ZMQ_SUB);
	socket_in.connect(zin.c_str());
	socket_in.setsockopt(ZMQ_SUBSCRIBE, "", 0);	// subscribe to everything

	zmq::socket_t socket_out(zcontext, ZMQ_PUB);
	socket_out.bind(zout.c_str());

	// init poll set
	zmq::pollitem_t items [] = {
		{ socket_in, 	0, ZMQ_POLLIN, 0 }
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

	while (!s_interrupted) {

		try {
			zmq::poll(&items[0], 1, -1); //  -1 means block
		} catch (zmq::error_t &e) {}

		msg.rebuild();

		if (items[0].revents & ZMQ_POLLIN) {
			socket_in.recv(&msg);

			// copy message to buffer
			auto buf = new char[msg.size()];
			memcpy(buf, msg.data(), msg.size());

			u64 nc, ns;
			// parse message
			memcpy(&nc, buf+0, sizeof(u64));
			memcpy(&ns, buf+8, sizeof(u64));

			if (nc != nnc) {
				error("channel mismatch! aborting!");
				break;
			}

			auto f = new float[nc*ns];
			memcpy(f, buf+24, nc*ns*sizeof(float));

			for (size_t i=0; i<nc; i++) {
				notch[i]->Proc(&(f[i*ns]), &(f[i*ns]), ns);
			}

			// copy the filtered data back to the buffer
			memcpy(buf+24, f, nc*ns*sizeof(float));

			delete[] f;

			msg.rebuild(24+nc*ns*sizeof(float));
			memcpy(msg.data(), buf, msg.size());
			socket_out.send(msg);

			delete[] buf;

			if (waiter % 200 == 0) {
				printf(" [%s]%s[%s]\r",
				       zin.substr(zin_n+1).c_str(),
				       spinner[counter % spinner.size()],
				       zout.substr(zout_n+1).c_str());
				fflush(stdout);
				counter++;
			}
			waiter++;

		}

	}

	for (auto &x : notch) {
		delete x;
	}

}