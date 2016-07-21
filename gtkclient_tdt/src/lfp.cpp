#include <signal.h>				// for signal, SIGINT
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
	// lfp [band=(beta|gamma|hgamma)] [zmq in] [zmq out]

	if (argc < 4) {
		printf("\nlfp - LFP band-pass filter (IIR, 4th order Butterworth)\n");
		printf("usage: lfp [band=(beta|gamma|hgamma)] [zmq in] [zmq out]\n\n");
		printf("Beta is 12-30 Hz\nGamma 30-60 Hz\nHigh Gamma 60-200 Hz\n\n");
		return 1;
	}

	int lo, hi;
	if (strcmp(argv[1],"beta") == 0) {
		lo = 12;
		hi = 30;
	} else if (strcmp(argv[1],"gamma") == 0) {
		lo = 30;
		hi = 60;
	} else if (strcmp(argv[1],"hgamma") == 0) {
		lo = 60;
		hi = 200;
	} else {
		printf("filter band (%s) is unknown\n", argv[1]);
		return 1;
	}

	std::string zin  = argv[2];
	std::string zout = argv[3];

	printf("lo cutoff: %d\n", lo);
	printf("hi cutoff: %d\n", hi);

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

	vector <Filter *> bandpass;

	for (size_t i=0; i<nnc; i++) {
#if defined KHZ_24
		switch (lo+hi) {
		case 42: // beta band
			bandpass.push_back(new FilterButterBand_24k_12_30());
			break;
		case 90: // gamma band
			bandpass.push_back(new FilterButterBand_24k_30_60());
			break;
		case 260: // high gamma band
			bandpass.push_back(new FilterButterBand_24k_60_200());
			break;
		case 3300:
			bandpass.push_back(new FilterButterBand_24k_300_3000());
			break;
		case 5300:
			bandpass.push_back(new FilterButterBand_24k_300_5000());
			break;
		case 3500:
			bandpass.push_back(new FilterButterBand_24k_500_3000());
			break;
		case 5500:
			bandpass.push_back(new FilterButterBand_24k_500_5000());
			break;
		}
#elif defined KHZ_48
		switch (lo+hi) {
		case 3300:
			bandpass.push_back(new FilterButterBand_48k_300_3000());
			break;
		case 5300:
			bandpass.push_back(new FilterButterBand_48k_300_5000());
			break;
		case 3500:
			bandpass.push_back(new FilterButterBand_48k_500_3000());
			break;
		case 5500:
			bandpass.push_back(new FilterButterBand_48k_500_5000());
			break;
		}
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
				bandpass[i]->Proc(&(f[i*ns]), &(f[i*ns]), ns);
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

	for (auto &x : bandpass) {
		delete x;
	}

}