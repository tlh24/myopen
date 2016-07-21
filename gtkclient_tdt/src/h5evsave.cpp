#include <signal.h>				// for signal, SIGINT
#include <zmq.hpp>
#include <uuid.h>
#include <ctime>
#include "util.h"
#include "timesync.h"
#include "h5eventwriter.h"

bool s_interrupted = false;

static void s_signal_handler(int)
{
	s_interrupted = true;
	printf("\n");
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
	std::string zin = argc > 1 ? argv[1] : "ipc:///tmp/events.zmq";
	std::string fn	= argc > 2 ? argv[2] : "events.h5";

	printf("save event data to NWB (HDF5)\n");
	printf("usage: h5evsave [zmq_sub] [filename]\n\n");

	printf("ZMQ SUB: %s\n", zin.c_str());
	printf("Filename: %s\n", fn.c_str());
	printf("\n");

	s_catch_signals();

	TimeSyncClient *tsc = new TimeSyncClient();  // translates tk and ts

	H5EventWriter h5;

	zmq::context_t zcontext(1);	// single zmq thread

	zmq::socket_t po8e_query_sock(zcontext, ZMQ_REQ);
	po8e_query_sock.connect("ipc:///tmp/po8e-query.zmq");

	u64 nec; // num event channels
	zmq::message_t msg(3);
	memcpy(msg.data(), "NEC", 3);
	po8e_query_sock.send(msg);
	msg.rebuild();
	try {
		po8e_query_sock.recv(&msg);
	} catch (zmq::error_t &e) {
		exit(1);
	}
	memcpy(&nec, (u64 *)msg.data(), sizeof(u64));

	std::vector <std::string> names;

	for (u64 ch=0; ch<nec; ch++) {
		// EC : X : NAME
		msg.rebuild(2);
		memcpy(msg.data(), "EC", 2);
		po8e_query_sock.send(msg, ZMQ_SNDMORE);
		msg.rebuild(sizeof(u64));
		memcpy(msg.data(), &ch, sizeof(u64));
		po8e_query_sock.send(msg, ZMQ_SNDMORE);
		msg.rebuild(4);
		memcpy(msg.data(), "NAME", 4);
		po8e_query_sock.send(msg);
		msg.rebuild();
		po8e_query_sock.recv(&msg);
		names.push_back(std::string((const char *)msg.data(), msg.size()));
	}

	uuid_t u;
	uuid_generate(u);
	char uu[37];
	uuid_unparse(u, uu);

	time_t t_create;
	time(&t_create);
	char create_date[sizeof("YYYY-MM-DDTHH:MM:SSZ")];
	strftime(create_date, sizeof(create_date), "%FT%TZ", gmtime(&t_create));

	h5.open(fn.c_str(), nec, names);
	h5.setVersion();
	h5.setUUID(uu);
	h5.setFileCreateDate(create_date);
	h5.setSessionDescription("event data");
	h5.setMetaData();

	zmq::socket_t socket_in(zcontext, ZMQ_SUB);
	socket_in.connect(zin.c_str());
	socket_in.setsockopt(ZMQ_SUBSCRIBE, "", 0);	// subscribe to everything

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

	while (!s_interrupted) {

		try {
			zmq::poll(&items[0], 1, -1); //  -1 means block
		} catch (zmq::error_t &e) {}

		if (items[0].revents & ZMQ_POLLIN) {

			socket_in.recv(&msg);

			char *ptr = (char *)msg.data();

			u16 ec, ev;
			i64 tk;

			// parse message
			memcpy(&ec, ptr+0, sizeof(u16));
			memcpy(&tk, ptr+2, sizeof(i64));
			memcpy(&ev, ptr+10, sizeof(u16));
			double ts = tsc->getTime(tk);

			h5.write(ec, tk, ts, ev); // frees memory when done

			if (waiter % 20 == 0) {
				time_t now;
				time(&now);
				double sec = difftime(now, t_create);
				int min = sec / 60;
				int hr  = min / 60;
				printf(" [%s]%s[%s] (%02d:%02d:%02d)\r",
				       zin.substr(zin_n+1).c_str(),
				       spinner[counter % spinner.size()],
				       fn.c_str(),
				       hr,
				       min % 60,
				       int(sec) % 60);
				fflush(stdout);
				counter++;
			}
			waiter++;

		}

	}

	h5.close();

	delete tsc;

}