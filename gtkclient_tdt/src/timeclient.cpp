#include <proc/readproc.h>              // for proc_t, openproc, readproc, etc
#include <pthread.h>                    // for pthread_attr_init, etc
#include <signal.h>                     // for signal, SIGINT
#include <stdio.h>                      // for printf, NULL, fflush, etc
#include <string.h>                     // for strcmp, memset
#include <sys/types.h>                  // for int64_t
#include <unistd.h>                     // for getpid, sleep, usleep, etc
#include <boost/format/format_fwd.hpp>  // for format
#include <string>                       // for string
#include "PO8e.h"                       // for PO8e, revisionString
#include "gettime.h"                    // for gettime, g_startTime
#include "timesync.h"                   // for TimeSync

#define i64 long long
#define u32 unsigned int

#define TS_SRATE_HZ	(24414.0625)
//#define TS_SRATE_HZ	(48828.1250)

using namespace std;
using boost::format;

TimeSync 	g_ts(TS_SRATE_HZ); // keeps track of ticks (TDT time)

bool g_die = false;
bool g_running = false;
long double g_lastPo8eTime = 0.0;
long double g_po8ePollInterval = 0.0;
long double g_po8eAvgInterval = 0.0;
int64_t g_tdtOffsetDiff = 0;

void destroy(int)
{
	g_die = true;
}

void *po8_thread(void *)
{
	PO8e *card = NULL;
	int bufmax = 10000;	// 2^14 > 10000
	string s;

	while (!g_die) {
		printf("PO8e API Version %s\n", revisionString());

		int totalcards = PO8e::cardCount();
		int conn_cards = 0;
		printf("Found %d PO8e card(s) in the system.\n", totalcards);

		card = PO8e::connectToCard(0);
		if (card == NULL)  {
			printf("Connection failed to card 0\n");
		} else {
			printf("Connection established to card 0 at %p\n", (void *)card);
			if (!card->startCollecting()) {
				printf("startCollecting() failed with: %d\n", card->getLastError());
				card->flushBufferedData();
				card->stopCollecting();
				printf("Releasing card0\n");
				PO8e::releaseCard(card);
				card = NULL;
			} else {
				printf("Card is collecting incoming data.\n");
				conn_cards++;
				printf("Waiting for the stream to start on card 0 ...\n");
				g_ts.reset();
				card->waitForDataReady(60*60*1000);
				printf("Started\n");
			}
		}

		long double totalSamples = 0.0;
		//long long bytes = 0;
		unsigned int nchan = 4;
		unsigned int bps = 2; //bytes/sample

		if (card) {
			nchan = card->numChannels();
			bps = card->dataSampleSize();
			printf("%d channels @ %d bytes/sample\n", nchan, bps);
		}

		// if nchan > 4 error xxx
		if (nchan != 4) {
			printf("Wrong number of channels in stream. exiting.\n");
			g_die = true;
		}

		short *temp = new short[bufmax*(nchan)];  // 2^14 samples * 2 bytes/sample * (nChannels+time+stim+stimclock)
		int64_t *tdtOffsets = new int64_t[bufmax];

		while (conn_cards > 0 && !g_die) {
			if (!card->waitForDataReady(60*60*1000)) {
				// this occurs when the rpvdsex circuit is idled.
				// and potentially when a glitch happens
				printf("waitForDataReady() failed with: %d\n", card->getLastError());
				card->stopCollecting();
				conn_cards--;
				printf("Releasing card 0\n");
				PO8e::releaseCard(card);
				card = NULL;
				g_running = false;
				break;
			}
			bool stopped = false;
			int numSamples = 0;

			numSamples = (int)card->samplesReady(&stopped);
			if (stopped) {
				printf("Stopped collecting data\n");
				card->stopCollecting();
				conn_cards--;
				printf("Releasing card 0\n");
				PO8e::releaseCard(card);
				card = NULL;
				g_running = false;
				break;
			}
			if (numSamples > 0) {
				if (numSamples > bufmax) {
					printf("samplesReady() returned too many samples for buffer (buffer wrap?): %d\n",
					       numSamples);
					numSamples = bufmax;
				}
				card->readBlock(temp, numSamples, tdtOffsets);
				card->flushBufferedData(numSamples);
				totalSamples += numSamples;
			}

			if (numSamples > 0 && numSamples <= bufmax) {
				//bytes += numSamples * nchan * bps;

				long double time = gettime();
				g_po8ePollInterval = (time - g_lastPo8eTime)*1000.0;
				g_po8eAvgInterval = g_po8eAvgInterval * 0.99 + g_po8ePollInterval * 0.01;
				g_lastPo8eTime = time;

				// estimate TDT ticks from perf counter
				// ticks are distributed across two shorts
				int ticks;
				ticks  = (unsigned short)(temp[0*numSamples + numSamples -1]); //we only care about the last tick.
				ticks += (unsigned short)(temp[1*numSamples + numSamples -1]) << 16;
				// it appears we need a checksum. extract.
				int cs;
				cs  = (unsigned short)(temp[2*numSamples + numSamples -1]);
				cs += (unsigned short)(temp[3*numSamples + numSamples -1]) << 16;
				int64_t diff = tdtOffsets[numSamples-1] - (int64_t)ticks;
				if ((ticks ^ 0x134fbab3) != cs) {
					printf("\nChecksum fail: %x %x\n", ticks, cs);
					g_running = false;
				} else {
					if (diff != g_tdtOffsetDiff) {
						printf("\nTDT Offset changed rel. ticks! old: %ld new %ld\n",
						       g_tdtOffsetDiff, diff);
					} else {
						// also -- only accept stort-interval responses (ignore outliers..)
						if (g_po8ePollInterval < g_po8eAvgInterval* 0.5) {
							g_ts.update(time, ticks); //also updates the mmap file.
							g_ts.m_dropped = (int)totalSamples - ticks;
						}
						g_running = true;
					}
					g_tdtOffsetDiff = diff;
				}
			}
		}
		//delete buffers since we have dynamically allocated;
		delete[] temp;
		delete[] tdtOffsets;

		sleep(1);
	}
	return 0;
}

int main()
{
	(void) signal(SIGINT,destroy);

	g_startTime = gettime();

	pid_t mypid = getpid();

	PROCTAB *pr = openproc(PROC_FILLSTAT);
	proc_t pr_info;
	memset(&pr_info, 0, sizeof(pr_info));
	while (readproc(pr, &pr_info) != NULL) {
		if ((!strcmp(pr_info.cmd, "gtkclient")   ||
		     !strcmp(pr_info.cmd, "timesync")) &&
		    pr_info.tgid != mypid) {
			printf("already running with pid: %d\n", pr_info.tgid);
			return 1;
		}
	}

	pthread_t thread1;
	pthread_attr_t attr;
	pthread_attr_init(&attr);
	pthread_create( &thread1, &attr, po8_thread, 0);
	/*
	string asciiart ="";
	asciiart =  "   __  _\n";
	asciiart += "  / /_(_)___ ___  ___  _______  ______  _____\n";
	asciiart += " / __/ / __ `__ \\/ _ \\/ ___/ / / / __ \\/ ___/\n";
	asciiart += "/ /_/ / / / / / /  __(__  ) /_/ / / / / /__\n";
	asciiart += "\\__/_/_/ /_/ /_/\\___/____/\\__, /_/ /_/\\___/\n";
	asciiart += "   timesync client v0.1  /____/\n";
	*/
	while (!g_die) {
		if (g_running) {
			printf("%s", g_ts.getTime().c_str());
			printf(" | ticks %d", g_ts.m_ticks);
			printf(" | slope %0.3Lf", g_ts.m_slope);
			printf(" | offset %0.1Lf", g_ts.m_offset);
			printf(" | po8e (ms) %0.2f\r", (double)g_po8ePollInterval);
			fflush(stdout);
		}
		usleep(50000); // 20Hz update.
	}

	return 0;
}
