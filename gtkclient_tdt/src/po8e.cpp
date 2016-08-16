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
#include <zmq.h>
#include "zmq_packet.h"
#include "util.h"
#include "lockfile.h"
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
string g_po8e_neural_socket_name = "ipc:///tmp/broadband.zmq";
string g_po8e_events_socket_name = "ipc:///tmp/events.zmq";
string g_po8e_query_socket_name = "ipc:///tmp/query.zmq";

// we need this global because if only one card is enabled
// we'd like the thread for that card to use that card for timesync
// even if the card id is the first card
int g_enabled_cards = 0;

TimeSync 	g_ts(SRATE_HZ); //keeps track of ticks (TDT time)
bool		s_interrupted = false;
bool		g_running = false;

static void s_signal_handler(int)
{
	s_interrupted = true;
	g_running = false;
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

// service the po8e buffer
void po8e_thread(void *ctx, PO8e *p, int id)
{

	void *socket = zmq_socket(ctx, ZMQ_PUB);
	if (socket == NULL) {
		error("zmq: could not create socket");
		//zmq_ctx_destroy(zcontext);
		return;
	}

	std::stringstream ss;
	ss << "inproc://po8e-" << id;
	if (zmq_bind(socket, ss.str().c_str()) != 0) {
		error("zmq: could not bind to socket");
		zmq_close(socket);
		//zmq_ctx_destroy(zcontext);
		return;
	}

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
		zmq_close(socket);
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

			if (id==0 || g_enabled_cards == 1) {
				// we synchronize the most recent (ie last) tick with "now"
				double tk = tick[ns-1] + numSamples - ns;
				long double last_interval = (ts - g_lastPo8eTime)*1000.0; // msec
				g_po8eStats( last_interval );
				g_lastPo8eTime = ts;

				// also -- only accept stort-interval responses (ignore outliers..)
				if (last_interval < 1.5*g_po8eStats.mean() ) {
					g_ts.update(ts, tk); //also updates the mmap file.
				}
			}

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

			// pack and send message in two parts: header and body

			zmq_packet_header h;
			h.nc = nc;
			h.ns = ns;
			h.tk = tick[0]; // send the earliest/first tick for block

			zmq_send(socket, (void *)&h, sizeof(h), ZMQ_SNDMORE);

			// nb generally the data in the continuous neural streams are
			// floating point numbers, here, however, we are sending i16s
			// internally for further processing

			zmq_send(socket, (void *)data, nc*ns*sizeof(i16), 0);

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

	zmq_close(socket);
}

void worker(void *ctx, vector<po8e::card *> &cards)
{

	//  Prepare our sockets

	int n = cards.size();

	vector<void *> socks;
	vector<zmq_pollitem_t> items;
	for (int i=0; i<n; i++) {
		socks.push_back( zmq_socket(ctx, ZMQ_SUB) );
		std::stringstream ss;
		ss << "inproc://po8e-" << cards[i]->id()-1;
		zmq_connect(socks[i], ss.str().c_str());
		zmq_setsockopt(socks[i], ZMQ_SUBSCRIBE, "", 0);	// subscribe to everything
		zmq_pollitem_t p = {socks[i], 0, ZMQ_POLLIN, 0};
		items.push_back(p);
	}

	// for control input
	void *controller = zmq_socket(ctx, ZMQ_SUB);
	zmq_connect(controller, "inproc://controller");
	zmq_setsockopt(controller, ZMQ_SUBSCRIBE, "", 0);
	zmq_pollitem_t p = {controller, 0, ZMQ_POLLIN, 0};
	items.push_back(p);

	int wm = 2048; // high watermark (messages)
	void *neural_sock = zmq_socket(ctx, ZMQ_PUB);	// we will publish neural data
	zmq_setsockopt(neural_sock, ZMQ_SNDHWM, &wm, sizeof(wm));
	zmq_bind(neural_sock, g_po8e_neural_socket_name.c_str());

	void *events_sock = zmq_socket(ctx, ZMQ_PUB);	// we will publish events data
	zmq_setsockopt(events_sock, ZMQ_SNDHWM, &wm, sizeof(wm));
	zmq_bind(events_sock, g_po8e_events_socket_name.c_str());

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

		zmq_poll(items.data(), items.size(), -1);

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
			vector<i16 *> data;

			for (int i=0; i<n; i++) {
				zmq_msg_t header;
				zmq_msg_init(&header);
				zmq_msg_recv(&header, socks[i], 0);
				zmq_packet_header *h = (zmq_packet_header *)zmq_msg_data(&header);
				nc[i] = h->nc;
				ns[i] = h->ns;
				tk[i] = h->tk;
				zmq_msg_close(&header);

				zmq_msg_t body;
				zmq_msg_init(&body);
				zmq_msg_recv(&body, socks[i], 0);
				auto x = new i16[nc[i]*ns[i]];
				memcpy(x, (i16 *)zmq_msg_data(&body), nc[i]*ns[i]*sizeof(i16));
				data.push_back(x);
				zmq_msg_close(&body);
			}

			bool mismatch = false;

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
			}

			if (mismatch) { // exit the worker; no more data will be processed
				break;
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
						memcpy(&events[ne_i*ns[0]], &data[i][j*ns[0]], ns[i]*sizeof(i16));
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
			zmq_packet_header h;
			h.nc = nnc;
			h.ns = ns[0];
			h.tk = tk[0];
			zmq_send(neural_sock, (void *)&h, sizeof(h), ZMQ_SNDMORE);
			zmq_send(neural_sock, (void *)neural, nnc*ns[0]*sizeof(float), 0);

			// send events data
			// reuse the neural header
			h.nc = nec;
			zmq_send(events_sock, (void *)&h, sizeof(h), ZMQ_SNDMORE);
			zmq_send(events_sock, (void *)events, nec*ns[0]*sizeof(i16), 0);

			delete[] neural;
			delete[] events;

			for (auto &x : data) {
				delete[] x;
			}

			delete[] nc;
			delete[] ns;
			delete[] tk;
		}

		if (items[n].revents & ZMQ_POLLIN) {
			// eventually check for what the message says
			//controller.recv(&buf);
			break;
		}

	}

	zmq_close(events_sock);
	zmq_close(neural_sock);
	zmq_close(controller);

	for (auto &sock : socks) {
		zmq_close(sock);
	}

}

int main(int argc, char *argv[])
{
	std::string rc  = argc > 1 ? argv[1] : "po8e.rc";

	printf("po8e\n");
	printf("usage: po8e [config file]\n\n");

	s_catch_signals();

	g_startTime = gettime();
	time_t t_start;
	time(&t_start);
	char session_start_time[sizeof("YYYY-MM-DDTHH:MM:SSZ")];
	strftime(session_start_time, sizeof(session_start_time),
	         "%FT%TZ", gmtime(&t_start));

	lockfile lf("/tmp/po8e.lock");
	if (lf.lock()) {
		error("executable already running");
		return 1;
	}

	// load the lua-based po8e config
	po8eConf pc;
	if (!pc.loadConf(rc)) {
		error("No config file! Aborting!");
		return 1;
	}

	g_po8e_read_size = pc.readSize();
	printf("po8e read size:\t\t%zu\n", 	g_po8e_read_size);

	pc.querySocketName(g_po8e_query_socket_name);
	printf("po8e query socket:\t%s\n", 	g_po8e_query_socket_name.c_str());

	pc.neuralSocketName(g_po8e_neural_socket_name);
	printf("po8e neural socket:\t%s\n", g_po8e_neural_socket_name.c_str());

	pc.eventsSocketName(g_po8e_events_socket_name);
	printf("po8e events socket:\t%s\n", g_po8e_events_socket_name.c_str());

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

	void *zcontext = zmq_ctx_new();
	if (zcontext == NULL) {
		error("zmq: could not create context");
		return 1;
	}

	// we don't need 1024 sockets
	if (zmq_ctx_set(zcontext, ZMQ_MAX_SOCKETS, 64) != 0) {
		error("zmq: could not set max sockets");
		return 1;
	}

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

	void *query = zmq_socket(zcontext, ZMQ_REP);
	if (controller == NULL) {
		error("zmq: could not create socket");
		zmq_close(controller);
		zmq_ctx_destroy(zcontext);
		return 1;
	}

	if (zmq_bind(query, g_po8e_query_socket_name.c_str()) != 0) {
		error("zmq: could not bind to socket");
		zmq_close(query);
		zmq_close(controller);
		zmq_ctx_destroy(zcontext);
		return 1;
	}

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
				threads.push_back(thread(po8e_thread, zcontext, p, id-1));
				cards.push_back(pc.cards[i]);
			}
		}
	}

	g_enabled_cards = cards.size();

	if (threads.size() < 1) {
		error("Connected to zero po8e cards");
		return 1;
	}

	std::vector<std::string> neural_name;
	std::vector<std::string> event_name;

	for (auto &c : cards) {
		if (c->enabled()) {
			for (int j=0; j<c->channel_size(); j++) {
				if (c->channel(j).data_type() == po8e::channel::NEURAL) {
					neural_name.push_back(c->channel(j).name());
				}
				if (c->channel(j).data_type() == po8e::channel::EVENTS) {
					event_name.push_back(c->channel(j).name());
				}
			}
		}
	}

	threads.push_back(thread(worker, zcontext, std::ref(cards)));

	zmq_pollitem_t items [] = {
		{ query, 0, ZMQ_POLLIN, 0 },
	};

	while (!s_interrupted) {

		if (zmq_poll(items, 1, 50) == -1) {// 50 msec ie 20 Hz
			break;
		}

		// nb we must not assume that the string is null terminated!
		auto isCommand = [](zmq_msg_t *m, const char *c) {
			return strncmp((char *)zmq_msg_data(m), c, zmq_msg_size(m)) == 0;
		};

		if (items[0].revents & ZMQ_POLLIN) {
			zmq_msg_t msg;
			zmq_msg_init(&msg);
			zmq_msg_recv(&msg, query, 0);
			if (isCommand(&msg, "NNC")) {
				u64 nnc = pc.numNeuralChannels();
				zmq_send(query, &nnc, sizeof(u64), 0);
			} else if (isCommand(&msg, "NEC")) {
				u64 nec = pc.numEventsChannels();
				zmq_send(query, &nec, sizeof(u64), 0);
			} else if (isCommand(&msg, "NAC")) {
				u64 nac = pc.numAnalogChannels();
				zmq_send(query, &nac, sizeof(u64), 0);
			} else if (isCommand(&msg, "NIC")) {
				u64 nic = pc.numIgnoredChannels();
				zmq_send(query, &nic, sizeof(u64), 0);
			} else if (isCommand(&msg, "NC")) {
				zmq_msg_close(&msg);
				zmq_msg_init(&msg);
				zmq_msg_recv(&msg, query, 0); // get the channel number (zero-indexed)
				u64 ch;
				memcpy(&ch, (u64 *)zmq_msg_data(&msg), sizeof(u64));
				zmq_msg_close(&msg);
				zmq_msg_init(&msg);
				zmq_msg_recv(&msg, query, 0); // get sub-command
				if (isCommand(&msg, "NAME")) {
					std::string s = neural_name[ch];
					zmq_send(query, s.c_str(), s.size(), 0);
				} else {
					zmq_send(query,"ERR", 3, 0);
				}
			} else if (isCommand(&msg, "EC")) {
				zmq_msg_close(&msg);
				zmq_msg_init(&msg);
				zmq_msg_recv(&msg, query, 0); // get the channel number (zero-indexed)
				u64 ch;
				memcpy(&ch, (u64 *)zmq_msg_data(&msg), sizeof(u64));
				zmq_msg_close(&msg);
				zmq_msg_init(&msg);
				zmq_msg_recv(&msg, query, 0); // get sub-command
				if (isCommand(&msg, "NAME")) {
					std::string s = event_name[ch];
					zmq_send(query, s.c_str(), s.size(), 0);
				} else {
					zmq_send(query, "ERR", 3, 0);
				}
			} else if (isCommand(&msg, "START_TIME")) {
				zmq_send(query, session_start_time, sizeof(session_start_time), 0);
			} else {
				zmq_send(query, "ERR", 3, 0);
			}
			zmq_msg_close(&msg);
		}

		if (g_running) {
			printf("ts %s ", g_ts.getTime().c_str());
			printf("| tk %d ", g_ts.getTicks());
			printf("| sl %0.3Lf ", g_ts.m_slope);
			printf("| os %0.1Lf ", g_ts.m_offset);
			printf("| mu %0.2f\r", g_po8eStats.mean());
			fflush(stdout);
		}
	}

	zmq_send(controller, "KILL", 4, 0);

	for (auto &thread : threads) {
		thread.join();
	}

	zmq_close(query);
	zmq_close(controller);
	zmq_ctx_destroy(zcontext);

	lf.unlock();
}
