#include <signal.h>				// for signal, SIGINT
#include <zmq.hpp>
#include <uuid.h>
#include <ctime>
#include "util.h"
#include "timesync.h"
#include "h5analogwriter.h"

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
	std::string zin = argc > 1 ? argv[1] : "ipc:///tmp/broadband.zmq";
	std::string fn	= argc > 2 ? argv[2] : "broadband.h5";

	printf("save broadband data to NWB (HDF5)\n");
	printf("usage: h5bbsave [zmq_sub] [filename]\n\n");

	printf("ZMQ SUB: %s\n", zin.c_str());
	printf("Filename: %s\n", fn.c_str());
	printf("\n");

	s_catch_signals();

	//if (check_running("h5bbsave")) {
	//	error("executable already running");
	//	return 1;
	//}

	TimeSyncClient *tsc = new TimeSyncClient();  // translates tk and ts

	H5AnalogWriter h5;

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

	std::vector <std::string> names;

	for (u64 ch=0; ch<nnc; ch++) {
		// NC : X : NAME
		msg.rebuild(2);
		memcpy(msg.data(), "NC", 2);
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

	size_t max_str = 0;
	for (auto &x : names) {
		max_str = max_str > x.size() ? max_str : x.size();
	}
	auto name = new char[max_str*names.size()];
	for (size_t i=0; i<names.size(); i++) {
		strncpy(&name[i*max_str], names[i].c_str(), names[i].size());
	}

	uuid_t u;
	uuid_generate(u);
	char uu[37];
	uuid_unparse(u, uu);

	time_t now;
	time(&now);
	char create_date[sizeof("YYYY-MM-DDTHH:MM:SSZ")];
	strftime(create_date, sizeof(create_date), "%FT%TZ", gmtime(&now));

	h5.open(fn.c_str(), nnc);
	h5.setVersion();
	h5.setUUID(uu);
	h5.setFileCreateDate(create_date);
	h5.setSessionDescription("broadband data");
	h5.setMetaData(1.0/3276700, name, max_str);

	delete[] name;

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

	while (!s_interrupted) {

		try {
			zmq::poll(&items[0], 1, -1); //  -1 means block
		} catch (zmq::error_t &e) {}

		if (items[0].revents & ZMQ_POLLIN) {

			socket_in.recv(&msg);

			char *ptr = (char *)msg.data();

			u64 nc, ns;

			// parse message
			memcpy(&nc, ptr+0, sizeof(u64));
			memcpy(&ns, ptr+8, sizeof(u64));

			auto tk 	= new i64[ns];
			auto ts 	= new double[ns];

			memcpy(tk, ptr+16, sizeof(i64));

			ts[0] = tsc->getTime(tk[0]);
			for (size_t i=1; i < ns; i++) {
				tk[i] = tk[i-1] + 1;
				ts[i] = tsc->getTime(tk[i]);
			}

			auto f = new float[nc*ns];
			memcpy(f, ptr+24, nc*ns*sizeof(float));

			auto x = new i16[nc*ns];
			for (size_t i=0; i<nc; i++) {
				for (size_t k=0; k<ns; k++) {
					// note that we transpose on the fly here to NWB format
					x[k*nc+i] = (i16)(f[i*ns+k] * 3276700 / 1e6); // pack
				}
			}
			delete[] f;

			h5.write(nc, ns, tk, ts, x); // frees memory when done

			if (waiter % 200 == 0) {
				printf(" [%s]%s[%s]\r",
				       zin.c_str(),
				       spinner[counter % spinner.size()],
				       fn.c_str());
				fflush(stdout);
				counter++;
			}
			waiter++;

		}

	}

	h5.close();

	delete tsc;

}