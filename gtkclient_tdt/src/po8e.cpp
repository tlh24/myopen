#include <stdio.h>
#include <signal.h>				// for signal, SIGINT
#include <math.h>
#include <cstring>
#include <thread>
#include <atomic>
#include <mutex>
#include <vector>
#include <proc/readproc.h>		// for proc_t, openproc, readproc, etc
#include <sys/types.h>
#include <sys/stat.h>
#include <unistd.h>
#include <armadillo>
#include <zmq.hpp>
#include "util.h"
#include "PO8e.h"
#include "timesync.h"
#include "readerwriterqueue.h"
#include "po8e_conf.h" 			// parse po8e conf files

#define KHZ_24

#if defined KHZ_24
#define SRATE_HZ	(24414.0625)
#define SRATE_KHZ	(24.4140625)
#elif defined KHZ_48
#define SRATE_HZ	(48828.1250)
#define SRATE_KHZ	(48.8281250)
#else
#error Bad sampling rate!
#endif

typedef struct PO8Data {
	i64 tick;	// this is the tick for the first sample
	size_t numChannels;
	size_t numSamples;
	i16 *data;
} PO8Data;

using namespace std;
using namespace arma;
using namespace moodycamel;

running_stat<double>	g_po8eStats;
long double g_lastPo8eTime = 0.0;

zmq::context_t g_zmq_context(1);	// single zmq thread

mutex g_po8e_mutex;
vector <pair<ReaderWriterQueue<PO8Data *>*, po8e::card *>> g_q;
size_t g_po8e_read_size = 16; // po8e block read size

TimeSync 	g_ts(SRATE_HZ); //keeps track of ticks (TDT time)
bool		g_die = false;
bool		g_running = false;

void destroy(int)
{
	g_die = true;
}

// service the po8e buffer
// 96 channels of spike/lfp, followed by time (ticks) split across two chans
// if there is no po8e card, simulate data with sines

void po8e_thread(PO8e *p, ReaderWriterQueue<PO8Data *> *q)
{
	size_t bufmax = 10000;	// must be >= 10000

	printf("Waiting for the stream to start ...\n");
	//p->waitForDataReady(1);
	while (p->samplesReady() == 0 && !g_die) {
		usleep(5000);
	}

	if (p == nullptr || g_die) {
		return; /// xxx how to recover?
	}

	auto nchan = p->numChannels();
	auto bps = p->dataSampleSize(); // bytes/sample
	printf("Card %p: %d channels @ %d bytes/sample\n", (void *)p, nchan, bps);

	// 10000 samples * 2 bytes/sample * nChannels
	auto buff = new i16[bufmax*(nchan)];
	auto tick = new i64[bufmax];

	// get the initial tick value. hopefully a small number
	p->readBlock(buff, 1, tick);
	i64 last_tick = tick[0] - 1;

	while (!g_die) {

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
				printf("%p: samplesReady() returned too many samples (buffer wrap?): %zu\n",
				       (void *)p, numSamples);
				numSamples = bufmax;
			}

			size_t numRead;

			{
				// warning: these braces are intentional
				lock_guard<mutex> lock(g_po8e_mutex);
				numRead = p->readBlock(buff, g_po8e_read_size, tick);
				p->flushBufferedData(numRead);
			}

			if (tick[0] != last_tick + 1) {
				warn("%p: PO8e tick glitch between blocks. Expected %zu got %zu",
				     p, last_tick+1, tick[0]);
				g_ts.m_dropped++;
				// xxx how to recover?
			}
			for (size_t i=0; i<numRead-1; i++) {
				if (tick[i+1] != tick[i] + 1) {
					warn("%p: PO8e tick glitch within block. Expected %zu got %zu",
					     p, tick[i]+1, tick[i+1]);
					g_ts.m_dropped++;
					// xxx how to recover?
				}
			}
			last_tick = tick[numRead-1];


			PO8Data *o;
			o = new PO8Data;
			o->data = new i16[nchan*numRead];
			memcpy(o->data, buff, nchan*numRead*sizeof(i16));
			o->numChannels = nchan;
			o->numSamples = numRead;
			o->tick = tick[0];
			q->enqueue(o);
			// NB the other thread frees o
			// and the memory allocated to o->data
		} else {
			usleep(1e3);
		}
	}

	// delete buffers since we have dynamically allocated;
	delete[] buff;
	delete[] tick;

	printf("  stopped collecting data\n");
	p->stopCollecting();
	printf("  releasing card %p\n", (void *)p);
	PO8e::releaseCard(p);

	printf("\n");
	sleep(1);
}

void worker_thread()
{

	//  Prepare our socket
	zmq::socket_t socket(g_zmq_context, ZMQ_PUB);	// we will publish data
	socket.bind("ipc:///tmp/po8e.sock");
	printf("Serving data on ipc\n");

	vector<PO8Data *> p;
	vector<po8e::card *> c;

	while (!g_die) {

		auto n = g_q.size();

		p.clear();
		c.clear();


		for (size_t i=0; i<n; i++) {
			auto q = g_q[i].first;
			c.push_back(g_q[i].second);
			int succeeded;
			do {
				PO8Data *x;
				succeeded = q->try_dequeue(x);
				if (succeeded)
					p.push_back(x);
				else
					usleep(1e3);
			} while (!succeeded && !g_die);
		}

		if (g_die) {
			for (auto &x : p) {
				delete[] (x->data);
				delete x;
			}
			break;
		}

		g_running = true;

		auto mismatch = false;
		for (size_t i=0; i<n; i++) {
			if (p[i]->numSamples != p[0]->numSamples) {
				warn("po8e card sample mismatch");
				mismatch = true;
				break;
			}
			if (p[i]->numChannels != (size_t)c[i]->channel_size()) {
				warn("po8e card %d: configured for %d channels (%d received in po8e packet)",
				     c[i]->id(), c[i]->channel_size(), p[i]->numChannels);
				mismatch = true;
				break;
			}
			if (p[i]->tick != p[0]->tick) {
				warn("p08e ticks misaligned between cards");
				mismatch = true;
				break;
			}
		}

		if (mismatch) // exit the worker; no data will be processed
			break;

		// XXX TODO when to reset the running stats?

		long double time = gettime();
		long double last_interval = (time - g_lastPo8eTime)*1000.0; // msec
		g_po8eStats( last_interval );
		g_lastPo8eTime = time;

		// also -- only accept stort-interval responses (ignore outliers..)
		if (last_interval < 1.5*g_po8eStats.mean() ) {
			g_ts.update(time, p[0]->tick); //also updates the mmap file.
		}

		u64 nnc = 0; // num neural channels
		for (size_t i=0; i<c.size(); i++) {
			for (int j=0; j<c[i]->channel_size(); j++) {
				if (c[i]->channel(j).data_type() == po8e::channel::NEURAL) {
					nnc++;
				}
			}
		}
		u64 ns = p[0]->numSamples;

		i64 tk = p[0]->tick;
		double ts = g_ts.getTime(tk);

		auto raw = new i16[nnc * ns];
		size_t nc_i = 0;
		for (size_t i=0; i<c.size(); i++) {
			for (int j=0; j<c[i]->channel_size(); j++) {
				if (c[i]->channel(j).data_type() == po8e::channel::NEURAL) {
					for (size_t k=0; k<ns; k++) {
						raw[nc_i*ns+k] = p[i]->data[j*ns+k];
					}
					nc_i++;
				}
			}
		}

		size_t nbytes = 32 + nnc*ns*sizeof(i16);

		zmq::message_t buf(nbytes);

		char *ptr = (char *)buf.data();

		// nchan - 8 bytes
		memcpy(ptr+0, &nnc, sizeof(u64));

		// nsamp - 8 bytes
		memcpy(ptr+8, &ns, sizeof(u64));

		// tk - 8 bytes
		memcpy(ptr+16, &tk, sizeof(i64));

		// ts - 8 bytes
		memcpy(ptr+24, &ts, sizeof(double));

		// data - nnc*ns bytes
		memcpy(ptr+32, raw, nnc*ns*sizeof(i16));

		// TODO send data via zeromq here
		socket.send(buf);

		delete[] raw;

		// free the po8e data packet
		for (auto &x : p) {
			delete[] (x->data);
			delete x;
		}
	}

	// XXX cleanup any memory here ???

}

int main(void)
{

	(void) signal(SIGINT,destroy);

	g_startTime = gettime();

	pid_t mypid = getpid();

	PROCTAB *pr = openproc(PROC_FILLSTAT);
	proc_t pr_info;
	memset(&pr_info, 0, sizeof(pr_info));
	while (readproc(pr, &pr_info) != NULL) {
		if (!strcmp(pr_info.cmd, "po8e") &&
		    pr_info.tgid != mypid) {
			error("already running with pid: %d", pr_info.tgid);
			return 1;
		}
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

	size_t nc = pc.numNeuralChannels();
	printf("Neural channels:\t%zu\n", 	nc);
	printf("Event channels:\t\t%zu\n", 	pc.numEventChannels());
	printf("Analog channels:\t%zu\n", 	pc.numAnalogChannels());
	printf("Ignored channels:\t%zu\n", 	pc.numIgnoredChannels());

	if (nc == 0) {
		error("No neural channels configured!");
		return 1;
	}

	printf("\n\n");

	vector <thread> threads;

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
			printf("Releasing card %p\n", (void *)p);
			PO8e::releaseCard(p);
			return false;
		}
		printf("Card %p is collecting incoming data.\n", (void *)p);
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
				ReaderWriterQueue<PO8Data *> *q = new ReaderWriterQueue<PO8Data *>(512);
				threads.push_back(thread(po8e_thread, p, q));
				g_q.push_back(pair<ReaderWriterQueue<PO8Data *>*, po8e::card *>(q, pc.cards[i]));
			}
		}
	}

	if (g_q.size() < 1) {
		error("Connected to zero po8e cards");
		return 1;
	}

	threads.push_back(thread(worker_thread));

	while (!g_die) {
		if (g_running) {
			printf("%s", g_ts.getTime().c_str());
			printf(" | ticks %d", g_ts.getTicks());
			printf(" | slope %0.3Lf", g_ts.m_slope);
			printf(" | offset %0.1Lf", g_ts.m_offset);
			printf(" | po8e (ms) %0.2f\r", g_po8eStats.mean());
			fflush(stdout);
		}
		usleep(50000); // 20Hz update.
	}


	for (auto &thread : threads) {
		thread.join();
	}

	for (auto &q : g_q) {
		delete q.first;
		// q.second is deleted when the po8e_conf object is destructed
	}

	usleep(1e5);
}
