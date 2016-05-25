#include <stdio.h>
#include <signal.h>				// for signal, SIGINT
#include <math.h>
#include <cstring>
#include <thread>
#include <atomic>
#include <mutex>
#include <vector>
#include <sys/types.h>
#include <sys/stat.h>
#include <unistd.h>
#include <armadillo>
#include <zmq.hpp>
#include "util.h"
#include "PO8e.h"
#include "timesync.h"
#include "po8e_conf.h" 			// parse po8e conf files

#if defined KHZ_24
#define SRATE_HZ	(24414.0625)
#define SRATE_KHZ	(24.4140625)
#elif defined KHZ_48
#define SRATE_HZ	(48828.1250)
#define SRATE_KHZ	(48.8281250)
#else
#error Bad sampling rate!
#endif

using namespace std;
using namespace arma;

running_stat<double>	g_po8eStats;
long double 			g_lastPo8eTime = 0.0;

mutex g_po8e_mutex;
size_t g_po8e_read_size = 16; // po8e block read size
string g_po8e_neural_socket_name = "tcp://*:1337";
string g_po8e_events_socket_name = "tcp://*:1338";
string g_po8e_query_socket_name = "ipc:///tmp/po8e-query.zmq";


TimeSync 	g_ts(SRATE_HZ); //keeps track of ticks (TDT time)
bool		s_interrupted = false;
bool		g_running = false;

static void s_signal_handler(int)
{
	s_interrupted = true;
	g_running = false;
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

// service the po8e buffer
void po8e_thread(zmq::context_t &ctx, PO8e *p, int id)
{

	zmq::socket_t socket(ctx, ZMQ_PUB);
	std::stringstream ss;
	ss << "inproc://po8e-" << id;
	socket.bind(ss.str().c_str());

	size_t bufmax = 10000;	// must be >= 10000

	printf("Waiting for the stream to start ...\n");
	//p->waitForDataReady(1);
	while (p->samplesReady() == 0 && !s_interrupted) {
		usleep(5000);
	}

	if (p == nullptr || s_interrupted) {
		debug("Stopped collecting data");
		p->stopCollecting();
		debug("Releasing card %p", (void *)p);
		PO8e::releaseCard(p);
		return;
	}

	u64 nc = p->numChannels();
	auto bps = p->dataSampleSize(); // bytes/sample
	printf("Card %p: %lu channels @ %d bytes/sample\n", (void *)p, nc, bps);

	// 10000 samples * 2 bytes/sample * nChannels
	auto data = new i16[bufmax*(nc)];
	auto tick = new i64[bufmax];

	// get the initial tick value. hopefully a small number
	p->readBlock(data, 1, tick);
	i64 last_tick = tick[0] - 1;

	while (!s_interrupted) {

		bool stopped = false;
		size_t numSamples;
		{
			// intentional braces
			lock_guard<mutex> lock(g_po8e_mutex);
			numSamples = p->samplesReady(&stopped);
		}
		//if (stopped){
		if (p->getLastError() > 0) {
			//warn("%p: samplesReady() indicated that we are stopped: numSamples: %zu",
			//     (void*)p, numSamples);
			warn("%p: card has thrown an error: %d", (void *)p, p->getLastError());
			break; // xxx how to recover?
		}

		if (numSamples >= g_po8e_read_size) {
			if (numSamples > bufmax) {
				warn("%p: samplesReady() returned too many samples (buffer wrap?): %zu",
				     (void *)p, numSamples);
				numSamples = bufmax;
			}

			size_t ns;

			{
				// warning: these braces are intentional
				lock_guard<mutex> lock(g_po8e_mutex);
				ns = p->readBlock(data, g_po8e_read_size, tick);
				p->flushBufferedData(ns);
			}
			double ts = gettime();

			if (tick[0] != last_tick + 1) {
				warn("%p: PO8e tick glitch between blocks. Expected %zu got %zu",
				     p, last_tick+1, tick[0]);
				g_ts.m_dropped++;
				// xxx how to recover?
			}
			for (size_t i=0; i<ns-1; i++) {
				if (tick[i+1] != tick[i] + 1) {
					warn("%p: PO8e tick glitch within block. Expected %zu got %zu",
					     p, tick[i]+1, tick[i+1]);
					g_ts.m_dropped++;
					// xxx how to recover?
				}
			}
			last_tick = tick[ns-1];

			// pack message
			size_t nbytes = 32 + nc*ns*sizeof(i16);
			zmq::message_t msg(nbytes);
			char *ptr = (char *)msg.data();

			memcpy(ptr+0, &nc, sizeof(u64)); // nc - 8 bytes
			memcpy(ptr+8, &ns, sizeof(u64)); // ns - 8 bytes
			memcpy(ptr+16, tick, sizeof(i64)); // tk - 8 bytes
			memcpy(ptr+24, &ts, sizeof(double)); // ts - 8 bytes
			memcpy(ptr+32, data, nc*ns*sizeof(i16)); // data - nc*ns bytes

			socket.send(msg);

		} else {
			usleep(1e3);
		}
	}

	// delete buffers since we have dynamically allocated;
	delete[] data;
	delete[] tick;

	{
		// warning: these braces are intentional
		lock_guard<mutex> lock(g_po8e_mutex);
		debug("Stopped collecting data");
		p->stopCollecting();
		p->flushBufferedData(-1, true);
		debug("Releasing card %p", (void *)p);
		PO8e::releaseCard(p);
	}
}

void worker(zmq::context_t &ctx, vector<po8e::card *> &cards)
{

	//  Prepare our sockets

	int n = cards.size();

	vector<zmq::socket_t> socks;
	vector<zmq::pollitem_t> items;
	for (int i=0; i<n; i++) {
		socks.push_back( zmq::socket_t(ctx, ZMQ_SUB) );
		std::stringstream ss;
		ss << "inproc://po8e-" << i;
		socks[i].connect(ss.str().c_str());
		socks[i].setsockopt(ZMQ_SUBSCRIBE, "", 0);	// subscribe to everything
		zmq::pollitem_t p = {socks[i], 0, ZMQ_POLLIN, 0};
		items.push_back(p);
	}

	// for control input
	zmq::socket_t controller(ctx, ZMQ_SUB);
	controller.connect("inproc://controller");
	controller.setsockopt(ZMQ_SUBSCRIBE, "", 0);
	zmq::pollitem_t p = {controller, 0, ZMQ_POLLIN, 0};
	items.push_back(p);

	zmq::socket_t neural_sock(ctx, ZMQ_PUB);	// we will publish neural data
	neural_sock.bind(g_po8e_neural_socket_name.c_str());

	zmq::socket_t events_sock(ctx, ZMQ_PUB);	// we will publish neural data
	events_sock.bind(g_po8e_events_socket_name.c_str());

	u64 nnc = 0; // num neural channels
	u64 nec = 0; // num events channels
	for (auto &c : cards) {
		for (int j=0; j<c->channel_size(); j++) {
			switch (c->channel(j).data_type()) {
			case po8e::channel::NEURAL:
				nnc++;
				break;
			case po8e::channel::EVENTS:
				nec++;
				break;
			case po8e::channel::ANALOG:
				break;
			case po8e::channel::IGNORE:
				break;
			}
		}
	}

	while (true) {

		zmq::poll(items.data(), items.size(), -1);

		int nready = 0;
		for (int i=0; i<n; i++) {
			if (items[i].revents & ZMQ_POLLIN) {
				nready++;
			}
		}

		if (nready == n) {

			g_running = true;

			auto nc = new u64[n];
			auto ns = new u64[n];
			auto tk = new i64[n];
			auto ts = new double[n];
			vector<i16 *> data;

			for (int i=0; i<n; i++) {
				zmq::message_t msg;
				socks[i].recv(&msg);
				char *ptr = (char *)(msg.data());
				memcpy(&(nc[i]), ptr+0, sizeof(u64));
				memcpy(&(ns[i]), ptr+8, sizeof(u64));
				memcpy(&(tk[i]), ptr+16, sizeof(i64));
				memcpy(&(ts[i]), ptr+24, sizeof(double));
				auto x = new i16[nc[i]*ns[i]];
				memcpy(x, ptr+32, nc[i]*ns[i]*sizeof(i16));
				data.push_back(x);
			}

			bool mismatch = false;
			double time = 0.0;

			for (int i=0; i<n; i++) {
				if (nc[i] != (u64)cards[i]->channel_size()) {
					warn("po8e packet channel mismatch");
					mismatch = true;
					break;
				}
				if (ns[i] != ns[0]) {
					warn("po8e packet sample mismatch");
					mismatch = true;
					break;
				}
				if (tk[i] != tk[0]) {
					warn("p08e packet ticks misaligned");
					mismatch = true;
					break;
				}
				time += ts[i];
			}
			time /= n;

			if (mismatch) { // exit the worker; no more data will be processed
				break;
			}

			// XXX TODO when to reset the running stats?

			long double last_interval = (time - g_lastPo8eTime)*1000.0; // msec
			g_po8eStats( last_interval );
			g_lastPo8eTime = time;

			// also -- only accept stort-interval responses (ignore outliers..)
			if (last_interval < 1.5*g_po8eStats.mean() ) {
				g_ts.update(time, tk[0]); //also updates the mmap file.
			}

			// package up neural data and event here

			auto neural = new float[nnc * ns[0]];
			auto events = new i16[nec * ns[0]];
			size_t nc_i = 0;
			size_t ne_i = 0;
			for (int i=0; i<(int)cards.size(); i++) {
				for (int j=0; j<cards[i]->channel_size(); j++) {
					switch (cards[i]->channel(j).data_type()) {
					case po8e::channel::NEURAL:
						for (size_t k=0; k<ns[0]; k++) {
							neural[nc_i*ns[0]+k] = (float)data[i][j*ns[0]+k];
							neural[nc_i*ns[0]+k] /= cards[i]->channel(j).scale_factor();
							neural[nc_i*ns[0]+k] *= 1e6; // convert to uV
						}
						nc_i++;
						break;
					case po8e::channel::EVENTS:
						for (size_t k=0; k<ns[0]; k++) {
							events[ne_i*ns[0]+k] = data[i][j*ns[0]+k];
						}
						ne_i++;
						break;
					case po8e::channel::ANALOG:
						break;
					case po8e::channel::IGNORE:
						break;
					}
				}
			}

			// send neural data
			size_t nbytes = 32 + nnc*ns[0]*sizeof(float);
			zmq::message_t buf(nbytes);
			char *ptr = (char *)buf.data();
			memcpy(ptr+0, &nnc, sizeof(u64)); // nnc - 8 bytes
			memcpy(ptr+8, ns, sizeof(u64)); // ns - 8 bytes
			memcpy(ptr+16, tk, sizeof(i64)); // tk - 8 bytes
			memcpy(ptr+24, &time, sizeof(double)); // ts - 8 bytes
			memcpy(ptr+32, neural, nnc*ns[0]*sizeof(float)); // data - nnc*ns bytes
			neural_sock.send(buf);

			// send events data
			for (int i=0; i<(int)nec; i++) {
				for (int k=0; k<(int)ns[0]; k++) {
					if (events[i*ns[0]+k] > 0) {
						u16 ec  	= (u16)i; // event chan (0-idxed)
						i64 tk2 	= (i64)tk[0] + k;	// tk
						double ts2 	= (double)g_ts.getTime(tk[0] + k);	// ts
						u16 ev  	= (u16)events[i*ns[0]+k];	// event

						buf.rebuild(20); // bytes
						ptr = (char *)buf.data();
						memcpy(ptr+0, &ec, sizeof(u16)); // 2 bytes
						memcpy(ptr+2, &tk2, sizeof(u64)); // 8 bytes
						memcpy(ptr+10, &ts2, sizeof(double)); // 8 bytes
						memcpy(ptr+18, &ev, sizeof(u16));	// 2 bytes
						events_sock.send(buf);
					}
				}
			}

			delete[] neural;
			delete[] events;

			for (auto &x : data) {
				delete[] x;
			}

			delete[] nc;
			delete[] ns;
			delete[] tk;
			delete[] ts;
		}

		if (items[n].revents & ZMQ_POLLIN) {
			// eventually check for what the message says
			//controller.recv(&buf);
			break;
		}

	}

}

int main(void)
{

	s_catch_signals();

	zmq::context_t zcontext(1);	// single zmq thread

	g_startTime = gettime();

	if (check_running("po8e")) {
		error("executable already running");
		return 1;
	}

	auto fileExists = [](const char *f) {
		struct stat sb;
		int res = stat(f, &sb);
		if (res == 0)
			if (S_ISREG(sb.st_mode))
				return true;
		return false;
	};

	// load the lua-based po8e config
	po8eConf pc;
	bool conf_ok = false;
	if (fileExists("po8e.rc")) {
		conf_ok = pc.loadConf("po8e.rc");
	} else if (fileExists("rc/po8e.rc")) {
		conf_ok = pc.loadConf("rc/po8e.rc");
	}
	if (!conf_ok) {
		error("No config file! Aborting!");
		return 1;
	}

	g_po8e_read_size = pc.readSize();
	printf("po8e read size:\t\t%zu\n", 	g_po8e_read_size);

	printf("po8e query socket:\t%s\n", 		g_po8e_query_socket_name.c_str());

	g_po8e_neural_socket_name = pc.neuralSocketName();
	g_po8e_events_socket_name = pc.eventsSocketName();
	printf("po8e neural socket:\t%s\n", 	g_po8e_neural_socket_name.c_str());
	printf("po8e events socket:\t%s\n", 	g_po8e_events_socket_name.c_str());

	size_t nc = pc.numNeuralChannels();
	printf("Neural channels:\t%zu\n", 	nc);
	printf("Event channels:\t\t%zu\n", 	pc.numEventsChannels());
	printf("Analog channels:\t%zu\n", 	pc.numAnalogChannels());
	printf("Ignored channels:\t%zu\n", 	pc.numIgnoredChannels());

	if (nc == 0) {
		error("No neural channels configured!");
		return 1;
	}

	printf("\n");

	vector <thread> threads;
	vector <po8e::card *> cards;

	printf("PO8e API Version %s\n", revisionString());
	int totalcards = PO8e::cardCount();
	if (totalcards < 1) {
		error("Found %d PO8e cards!", totalcards);
		return 1;
	}
	printf("Found %d PO8e card(s)\n", totalcards);

	if (totalcards < (int)pc.cards.size()) {
		error("Config describes more po8e cards than detected!");
		return 1;
	}

	if (totalcards > (int)pc.cards.size()) {
		warn("More po8e cards detected than configured");
		totalcards = (int)pc.cards.size();
	}

	auto configureCard = [&](PO8e* p) -> bool {
		// return true on success
		// return false on failure
		if (!p->startCollecting())
		{
			warn("startCollecting() failed with: %d", p->getLastError());
			p->flushBufferedData();
			p->stopCollecting();
			debug("Releasing card %p\n", (void *)p);
			PO8e::releaseCard(p);
			return false;
		}
		debug("Card %p is collecting incoming data", (void *)p);
		return true;
	};

	for (int i=0; i<totalcards; i++) {
		if (pc.cards[i]->enabled()) {
			int id = (int)pc.cards[i]->id();
			PO8e *p = PO8e::connectToCard(id-1); // 0-indexed
			if (p == nullptr) {
				continue;
			}
			printf("Connection established to card %d at %p\n", id, (void *)p);
			if (configureCard(p)) {
				threads.push_back(thread(po8e_thread, std::ref(zcontext), p, id-1));
				cards.push_back(pc.cards[i]);
			}
		}
	}

	if (threads.size() < 1) {
		error("Connected to zero po8e cards");
		return 1;
	}

	std::vector<std::pair<std::string,float>> neural_name_scale;

	for (auto &c : cards) {
		if (c->enabled()) {
			for (int j=0; j<c->channel_size(); j++) {
				if (c->channel(j).data_type() == po8e::channel::NEURAL) {
					neural_name_scale.emplace_back(
					    c->channel(j).name(),
					    (float)c->channel(j).scale_factor()/1e6); // uV
				}
			}
		}
	}

	threads.push_back(thread(worker, std::ref(zcontext), std::ref(cards)));

	zmq::socket_t controller(zcontext, ZMQ_PUB);
	controller.bind("inproc://controller");

	zmq::socket_t query(zcontext, ZMQ_REP);
	query.bind(g_po8e_query_socket_name.c_str());

	zmq::pollitem_t items [] = {
		{ query, 0, ZMQ_POLLIN, 0 },
	};

	while (!s_interrupted) {

		try {
			zmq::poll(items, 1, 50);	// 50 msec ie 20 hz
		} catch (zmq::error_t &e) {}

		zmq::message_t msg;

		auto isCommand = [](zmq::message_t &m, const char *c) {
			return strncmp((char *) m.data(), c, m.size()) == 0;
		};


		if (items[0].revents & ZMQ_POLLIN) {
			query.recv(&msg);
			if (isCommand(msg, "NNC")) {
				msg.rebuild(sizeof(u64)); // bytes
				u64 nnc = pc.numNeuralChannels();
				memcpy(msg.data(), &nnc, sizeof(u64));
				query.send(msg);
			} else if (isCommand(msg, "NEC")) {
				msg.rebuild(sizeof(u64)); // bytes
				u64 nec = pc.numEventsChannels();
				memcpy(msg.data(), &nec, sizeof(u64));
				query.send(msg);
			} else if (isCommand(msg, "NAC")) {
				msg.rebuild(sizeof(u64)); // bytes
				u64 nac = pc.numAnalogChannels();
				memcpy(msg.data(), &nac, sizeof(u64));
				query.send(msg);
			} else if (isCommand(msg, "NIC")) {
				msg.rebuild(sizeof(u64)); // bytes
				u64 nic = pc.numIgnoredChannels();
				memcpy(msg.data(), &nic, sizeof(u64));
				query.send(msg);
			} else if (isCommand(msg, "NC")) {
				query.recv(&msg); // get the channel number (zero-indexed)
				u64 ch;
				memcpy(&ch, (u64 *)msg.data(), sizeof(u64));
				query.recv(&msg); // get sub-command
				if (isCommand(msg, "NAME")) {
					std::string s = neural_name_scale[ch].first;
					msg.rebuild(s.size()); // bytes
					memcpy(msg.data(), s.c_str(), s.size());
					query.send(msg);
				} else if (isCommand(msg, "SCALE")) {
					float f = neural_name_scale[ch].second;
					msg.rebuild(sizeof(float)); // bytes
					memcpy(msg.data(), &f, sizeof(float));
					query.send(msg);
				} else {
					msg.rebuild(3);
					memcpy(msg.data(), "ERR", 3);
					query.send(msg);
				}
			} else {
				msg.rebuild(3);
				memcpy(msg.data(), "ERR", 3);
				query.send(msg);
			}
		}

		if (g_running) {
			printf("ts %s", g_ts.getTime().c_str());
			printf(" | tk %d", g_ts.getTicks());
			printf(" | slope %0.3Lf", g_ts.m_slope);
			printf(" | offset %0.1Lf", g_ts.m_offset);
			printf(" | po8e %0.2f\r", g_po8eStats.mean());
			fflush(stdout);
		}
	}

	std::string s("KILL");
	zmq::message_t msg(s.size());
	memcpy(msg.data(), s.c_str(), s.size());
	controller.send(msg);

	for (auto &thread : threads) {
		thread.join();
	}

}
