#include <stdio.h>
#include <stdlib.h>
#include <signal.h>
#include <sys/time.h>
#include <pthread.h>
#include <boost/format.hpp>
#include <deque>
#include <string.h>
#include <iostream>
#include <ncurses.h>

#include "lockfile.h"
#include "PO8e.h"
#include "gettime.h"
#include "mmaphelp.h"
#include "timesync.h"

#define i64 long long
#define u32 unsigned int

using namespace std;
using boost::format;

TimeSync 	g_ts(24414.0625); // keeps track of ticks (TDT time)

bool g_die = false;
long double g_lastPo8eTime = 0.0;

std::deque <string> g_scroll;

#define NSCROLL 17

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
		s = str(format("PO8e API Version %s") % revisionString());
		g_scroll.push_back(s);

		int totalcards = PO8e::cardCount();
		int conn_cards = 0;
		s = str(format("Found %d PO8e card(s) in the system.") % totalcards);
		g_scroll.push_back(s);

		card = PO8e::connectToCard(0);
		if (card == NULL)  {
			g_scroll.push_back("Connection failed to card 0");
		} else {
			// todo: connect to multiple cards
			s = str(format("Connection established to card 0 at %p") % (void *)card);
			g_scroll.push_back(s);
			if (!card->startCollecting()) {
				s = str(format("startCollecting() failed with: %d") % card->getLastError());
				g_scroll.push_back(s);
				card->flushBufferedData();
				card->stopCollecting();
				g_scroll.push_back("Releasing card0");
				PO8e::releaseCard(card);
				card = NULL;
			} else {
				g_scroll.push_back("Card is collecting incoming data.");
				conn_cards++;
				g_scroll.push_back("Waiting for the stream to start on card 0 ... ");
				card->waitForDataReady(); // waits ~ 1200 hours ;-)
				g_scroll.push_back("Started");
			}
		}

		long double totalSamples = 0.0;
		long long bytes = 0;
		unsigned int frame = 0;
		unsigned int nchan = 4;
		unsigned int bps = 2; //bytes/sample

		if (card) {
			nchan = card->numChannels();
			bps = card->dataSampleSize();
			s = str(format("%d channels @ %d bytes/sample") % nchan % bps);
			g_scroll.push_back(s);
		}

		// if nchan > 4 error xxx
		if (nchan != 4) {
			g_scroll.push_back("Wrong number of channels in stream. exiting.");
			g_die = true;
		}

		short *temp = new short[bufmax*(nchan)];  // 2^14 samples * 2 bytes/sample * (nChannels+time+stim+stimclock)

		while (conn_cards > 0 && !g_die) {
			if (!card->waitForDataReady()) { // waits ~ 1200 hours ;-)
				// this occurs when the rpvdsex circuit is idled.
				// and potentially when a glitch happens
				s = str(format("waitForDataReady() failed with: %d") % card->getLastError());
				g_scroll.push_back(s);
				card->stopCollecting();
				conn_cards--;
				g_scroll.push_back("Releasing card 0");
				PO8e::releaseCard(card);
				card = NULL;
				break;
			}
			bool stopped = false;
			int numSamples = 0;

			numSamples = (int)card->samplesReady(&stopped);
			if (stopped) {
				g_scroll.push_back("Stopped collecting data");
				card->stopCollecting();
				conn_cards--;
				g_scroll.push_back("Releasing card 0\n");
				PO8e::releaseCard(card);
				card = NULL;
				break;
			}
			if (numSamples > 0) {
				if (numSamples > bufmax) {
					s = str(format("samplesReady() returned too many samples for buffer (buffer wrap?): %d")
					        % numSamples);
					g_scroll.push_back(s);
					numSamples = bufmax;
				}
				card->readBlock(temp, numSamples);
				card->flushBufferedData(numSamples);
				totalSamples += numSamples;
			}

			if (numSamples > 0 && numSamples <= bufmax) {
				bytes += numSamples * nchan * bps;

				long double time = gettime();
				g_lastPo8eTime = time;

				// estimate TDT ticks from perf counter
				// ticks are distributed across two shorts
				int ticks;
				ticks  = (unsigned short)(temp[(0)*numSamples + numSamples -1]);
				ticks += (unsigned short)(temp[(1)*numSamples + numSamples -1]) << 16;
				g_ts.update(time, ticks, frame); //also updates the mmap file.
				g_ts.m_dropped = (int)totalSamples - ticks;

			}
			frame++;
		}
		//delete buffers since we have dynamically allocated;
		delete[] temp;

		g_scroll.push_back("");
		sleep(1);
	}
	return 0;
}

int main()
{

	(void) signal(SIGINT,destroy);

	g_startTime = gettime();

	lockfile lf = lockfile("/tmp/timesync.lock");
	if (lf.lock()) {
		return 1;
	}

	pthread_t thread1;
	pthread_attr_t attr;
	pthread_attr_init(&attr);
	pthread_create( &thread1, &attr, po8_thread, 0);

	for (int i=0; i<NSCROLL; i++) {
		g_scroll.push_back("");
	}

	initscr();
	curs_set(0);
	cbreak();

	string asciiart ="";

	asciiart = "   __  _\n";
	asciiart += "  / /_(_)___ ___  ___  _______  ______  _____\n";
	asciiart += " / __/ / __ `__ \\/ _ \\/ ___/ / / / __ \\/ ___/\n";
	asciiart += "/ /_/ / / / / / /  __(__  ) /_/ / / / / /__\n";
	asciiart += "\\__/_/_/ /_/ /_/\\___/____/\\__, /_/ /_/\\___/\n";
	asciiart += "   timesync client v0.1  /____/\n";

	start_color();
	init_pair(1, COLOR_CYAN, COLOR_BLACK);
	attron(COLOR_PAIR(1));
	attron(A_BOLD);
	printw("%s",asciiart.c_str());
	attroff(COLOR_PAIR(1));
	attroff(A_BOLD);

	while (!g_die) {

		attron(A_BOLD);
		mvprintw(1,48, "time             %s", g_ts.getTime().c_str());
		clrtoeol();
		mvprintw(2,48, "ticks            %d", g_ts.m_ticks);
		clrtoeol();
		mvprintw(3,48, "slope (ticks/s)  %0.5Lf", g_ts.m_slope);
		clrtoeol();
		mvprintw(4,48, "po8e  (ms)       %0.5f",
		         (double)(gettime() - g_lastPo8eTime)*1000.0);
		clrtoeol();
		attroff(A_BOLD);

		for (int i=0; i<NSCROLL; i++) {
			size_t n = g_scroll.size();
			mvprintw(23-i,1, "%s", g_scroll[n-1-i].c_str());
			clrtoeol();
		}

		refresh();

	}

	// shutdown stuff here
	endwin();

	lf.unlock();

	return 0;
}
