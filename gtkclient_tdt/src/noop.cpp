#include <signal.h>	// for signal, SIGINT
#include <string>
#include <zmq.hpp>
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
	std::string zin  = argc > 1 ? argv[1] : "ipc:///tmp/broadband.zmq";
	std::string zout = argc > 2 ? argv[2] : "ipc:///tmp/noop.zmq";

	printf("no-operation filter\n");
	printf("usage: noop [zmq_sub] [zmq_pub]\n\n");

	printf("ZMQ SUB: %s\n", zin.c_str());
	printf("ZMQ PUB: %s\n", zout.c_str());
	printf("\n");

	s_catch_signals();

	zmq::context_t zcontext(1);	// single zmq thread

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

		zmq::message_t msg;

		if (items[0].revents & ZMQ_POLLIN) {

			socket_in.recv(&msg);

			auto n = msg.size();

			// copy message to buffer
			auto buf = new char[n];
			memcpy(buf, msg.data(),n);

			msg.rebuild(n);
			memcpy(msg.data(), buf, n);

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

}