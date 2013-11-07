#include <stdio.h>
#include <math.h>
#include <pthread.h>
#include "PO8e.h"
bool			g_die = false;
long double g_startTime = 0.0;
long double gettime()  //in seconds!
{
        timespec pt ;
        clock_gettime(CLOCK_MONOTONIC, &pt);
        long double ret = (long double)(pt.tv_sec) ;
        ret += (long double)(pt.tv_nsec) / 1e9 ;
        return ret - g_startTime;
}

void* po8_thread(void*)
{
        PO8e *card = NULL;
        bool simulate = false;
        int bufmax = 16384;	// 2^14 > 10000

        while(!g_die) {
                int totalcards = PO8e::cardCount();
                int conn_cards = 0;
                printf("Found %d PO8e card(s) in the system.\n", totalcards);
                if (totalcards < 1) {
                        printf("  simulating instead.\n");
                        simulate = true;
                }
                if(!simulate) {
                        printf("Connecting to card 0\n");
                        card = PO8e::connectToCard(0);
                        if(card == NULL)
                                printf("  connection failed to card0 \n");
                        else {
                                // todo: connect to multiple cards
                                printf("  connection established to card0 at %p\n", (void*)card);
                                if (!card->startCollecting()) {
                                        printf("  startCollecting() failed with: %d\n",
                                               card->getLastError());
                                        card->stopCollecting();
                                        printf("  releasing card0\n");
                                        PO8e::releaseCard(card);
                                        card = NULL;
                                } else {
                                        printf("  card is collecting incoming data.\n");
                                        conn_cards++;
                                        printf("Waiting for the stream to start on card0 ... ");
                                        card->waitForDataReady(); // waits ~ 1200 hours ;-)
                                        printf("started\n");
                                }
                        }
                }
                // start the timer used to compute the speed and set the collected bytes to 0
                long double starttime = gettime();
                long double totalSamples = 0.0; //for simulation.
                double		sinSamples = 0.0; // for driving the sinusoids; resets every 4e4.
                long long bytes = 0;
                unsigned int frame = 0;
                unsigned int nchan = 96;
                unsigned int bps = 2; //bytes/sample
                if(!simulate) {
                        nchan = card->numChannels();
                        bps = card->dataSampleSize();
                }
                short * temp = new short[bufmax*nchan]; // >10000 samples * 2 bytes/sample * nChannels
                short * temptemp = new short[bufmax];
                while((simulate || conn_cards > 0) && !g_die) {
                        if (!card->waitForDataReady()) { // waits ~ 1200 hours ;-)
                                // this occurs when the rpvdsex circuit is idled.
                                // and potentially when a glitch happens
                                printf("  waitForDataReady() failed with: %d\n",
                                       card->getLastError());
                                card->stopCollecting();
                                conn_cards--;
                                printf("  releasing card0\n");
                                PO8e::releaseCard(card);
                                card = NULL;
                                break;
                        }
                        int waitCount = 0;
                        bool stopped = false;
                        int numSamples = 0;
                        if(!simulate) {
                                numSamples = (int)card->samplesReady(&stopped);
                                if (stopped) {
                                        printf("  stopped collecting data\n");
                                        card->stopCollecting();
                                        conn_cards--;
                                        printf("  releasing card0\n");
                                        PO8e::releaseCard(card);
                                        card = NULL;
                                        break;
                                }
                                if (numSamples > 0) {
                                        card->readBlock(temp, numSamples);
                                        card->flushBufferedData(numSamples);
                                        totalSamples += numSamples;
                                }
                        } else { //simulate!
                                long double now = gettime();
                                numSamples = (int)((now - starttime)*24414.0625 - totalSamples);
                                if(numSamples >= 250) {
                                        numSamples = 250;
                                        totalSamples = (now - starttime)*24414.0625;
                                }
                                float scale = sin(sinSamples/4e4);
                                for(int i=0; i<numSamples; i++) {
                                        temptemp[i] =  (short)(sinf((float)
                                                                    ((sinSamples + i)/6.0))*32768.f*scale);
                                }
                                for(int k=0; k<96; k++) {
                                        for(int i=0; i<numSamples; i++) {
                                                temp[k*numSamples +i] = temptemp[i];
                                        }
                                }
                                //last part of the buffer is just TDT ticks (most recent -> least delay?)
                                for(int i=0; i<numSamples; i++) {
                                        int r = (int)(sinSamples +i);
                                        temp[96*numSamples +i] = r & 0xffff;
                                        temp[97*numSamples +i] = (r>>16) & 0xffff;
                                }
                                totalSamples += numSamples;
                                sinSamples += numSamples;
                                if(sinSamples > 4e4*2*3.1415926) sinSamples -= 4e4*2*3.1415926;
                                usleep(70);
                        }
                        if(numSamples > 0 && numSamples < bufmax) {
                                bytes += numSamples * nchan * bps;
                                if(frame %200 == 0) { //need to move this to the UI.
                                        fprintf(stderr, "%d samples at %d Bps of %d chan: %Lf MB/sec\n", numSamples, bps, nchan,
                                                ((long double)bytes) / ((gettime() - starttime)*(1024.0*1024.0)));
                                }
                        } else {
                                //printf("wait count %d\n", waitCount);
                                waitCount++;
                        }
                        frame++;
                }
                //delete buffers since we have dynamically allocated;
                delete[] temp;
                delete[] temptemp;
                printf("\n");
                sleep(1);
        }
        return 0;
}

int main(void)
{
        printf("press enter to quit.\n");
        usleep(4e5);
        pthread_t thread1;
        pthread_attr_t attr;
        pthread_attr_init(&attr);
        pthread_create( &thread1, &attr, po8_thread, 0 );
        getchar(); // wait for enter
        g_die = true;
        usleep(4e5);
}
