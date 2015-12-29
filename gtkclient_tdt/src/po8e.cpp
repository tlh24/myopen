#include <stdio.h>
#include <math.h>
#include <thread>
#include <algorithm>
#include <vector>
#include "PO8e.h"

#include "po8e_conf.h" // parse po8e conf files

#define SRATE_HZ	(24414.0625)
#define SRATE_KHZ	(24.4140625)
//#define SRATE_HZ	(48828.1250)
//#define SRATE_KHZ	(48.8281250)
#define NCHAN		96

#define READ_SIZE	100 // po8e block read size

bool	g_die = false;
long double g_startTime = 0.0;
long double gettime()  //in seconds!
{
	timespec pt ;
	clock_gettime(CLOCK_MONOTONIC, &pt);
	long double ret = (long double)(pt.tv_sec) ;
	ret += (long double)(pt.tv_nsec) / 1e9 ;
	return ret - g_startTime;
}

// service the po8e buffer
// 96 channels of spike/lfp, followed by time (ticks) split across two chans
// if there is no po8e card, simulate data with sines

void po8_thread(PO8e *p)
{
	size_t bufmax = 10000;	// must be >= 10000

	printf("Waiting for the stream to start ...\n");
	//p->waitForDataReady(0x3e8);
	while (p->samplesReady() == 0) {
		usleep(5000);
	}

	// start the timer used to compute the speed and set the collected bytes to 0
	//long double starttime = gettime();
	//long long bytes = 0;
	unsigned int frame = 0;

	if (p == nullptr) {
		return;
	}

	auto nchan = p->numChannels();
	auto bps = p->dataSampleSize(); // bytes/sample
	printf("Card %p: %d channels @ %d bytes/sample\n", (void *)p, nchan, bps);

	// 10000 samples * 2 bytes/sample * nChannels
	auto buffs = new short[bufmax*(nchan)];
	auto ticks = new int64_t[bufmax];

	// get the initial tick value. hopefully a small number
	p->readBlock(buffs, 1, ticks);
	int64_t last_tick = ticks[0] - 1;

	while (!g_die) {

		bool stopped = false;
		size_t numSamples = p->samplesReady(&stopped);
		if (stopped) {
			break;
		}

		if (numSamples >= READ_SIZE) {
			if (numSamples > bufmax) {
				printf("samplesReady() returned too many samples (buffer wrap?): %zu\n",
				       numSamples);
				numSamples = bufmax;
			}

			p->readBlock(buffs, READ_SIZE, ticks);
			p->flushBufferedData(READ_SIZE);

			//bytes += READ_SIZE * nchan * bps;

			if (ticks[0] != last_tick + 1) {
				printf("%p: PO8e tick glitch between blocks. Expected %zu got %zu\n",
				       p, last_tick+1, ticks[0]);
			}
			for (int i=0; i<READ_SIZE-1; i++) {
				if (ticks[i+1] != ticks[i] + 1) {
					printf("%p: PO8e tick glitch within block. Expected %zu got %zu\n",
					       p, ticks[i]+1, ticks[i+1]);
				}
			}
			last_tick = ticks[READ_SIZE-1];

			if (frame %200 == 0) { //need to move this to the UI.
				printf("%p: %u samples (%d Bps, %d ch) Last Tick: %zu\n",
				       p, READ_SIZE, bps, nchan, ticks[READ_SIZE-1]);
			}
			frame++;
		}
	}

	// delete buffers since we have dynamically allocated;
	delete[] buffs;
	delete[] ticks;

	printf("  stopped collecting data\n");
	p->stopCollecting();
	printf("  releasing card %p\n", (void *)p);
	PO8e::releaseCard(p);

	printf("\n");
	sleep(1);
}

int main(void)
{
	po8eConf pc;

	pc.loadConf("gtkclient.rc");

	for (size_t i=0; i<pc.cards.size(); i++) {
		printf("card %lu in conf (%d channels)\n",
		       pc.cards[i]->id(),
		       pc.cards[i]->channel_size()
		      );
		for (int j=0; j<pc.cards[i]->channel_size(); j++) {
			auto channel = pc.cards[i]->channel(j);
			printf("  ch: %02lu (%s) scale_factor: %lu data_type: ",
			       channel.id(),
			       channel.name().c_str(),
			       channel.scale_factor());
			switch (channel.data_type()) {
				case po8eChannel::NEURAL:
					printf("NEURAL\n"); break;
				case po8eChannel::EVENT:
					printf("EVENT\n"); break;
				case po8eChannel::ANALOG:
					printf("NEURAL\n"); break;
				case po8eChannel::STIM_PULSES:
					printf("STIM_PULSES\n"); break;
				case po8eChannel::BLANK_CLOCK:
					printf("BLANK_CLOCK\n"); break;
			}
		}
	}

	std::vector <std::thread> threads;
	std::vector <PO8e *> cards;

	printf("PO8e API Version %s\n", revisionString());
	int totalcards = PO8e::cardCount();
	printf("Found %d PO8e card(s) in the system.\n", totalcards);
	if (totalcards < 1) {
		printf("Quitting.\n");
		return 1;
	}

	for (int i=0; i<totalcards; i++) {
		PO8e *p = PO8e::connectToCard(i);
		if (p != nullptr) {
			printf("Connection established to card %d at %p\n", i, (void *)p);
			cards.push_back(p);
		}
	}
	if (cards.size() < 1) {
		printf("Connected to 0 cards. Quitting.\n");
		return 1;
	}

	auto configureCard = [&](PO8e* p) -> bool {
		// return zero on success
		// return one on failure
		if (!p->startCollecting())
		{
			printf("startCollecting() failed with: %d\n", p->getLastError());
			p->flushBufferedData();
			p->stopCollecting();
			printf("Releasing card %p\n", (void *)p);
			PO8e::releaseCard(p);
			return 1;
		}
		printf("Card %p is collecting incoming data.\n", (void *)p);
		return 0;
	};

	cards.erase(std::remove_if(
	                cards.begin(),
	                cards.end(),
	                configureCard),
	            cards.end()
	           );

	for (auto &card : cards) {
		threads.push_back(std::thread(po8_thread, card));
	}

	printf("press enter to quit.\n");
	getchar(); // wait for enter
	g_die = true;

	for (auto &thread : threads) {
		thread.join();
	}

	usleep(4e5);
}
