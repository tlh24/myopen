#include <stdio.h>
#include <math.h>
#include <pthread.h>
#include "PO8e.h"
bool			g_die = false; 
long long 	g_sample = 0; 
long double g_startTime = 0.0;
long double gettime(){ //in seconds!
	timespec pt ;
	clock_gettime(CLOCK_MONOTONIC, &pt);
	long double ret = (long double)(pt.tv_sec) ;
	ret += (long double)(pt.tv_nsec) / 1e9 ;
	return ret - g_startTime;
}

void* po8_thread(void*){
	int count = 0, total;
	PO8e *card = NULL;
	bool simulate = false; 
	int bufmax = 16384;

	while(!g_die){
		total = PO8e::cardCount();
		printf("Found %d PO8e card(s) in the system.\n", total);
		if (0 == total){
			printf("  simulating instead.\n");
			simulate = true; 
		}
		if(!simulate){
			printf(" Connecting to card 0\n");
			card = PO8e::connectToCard(0);
			if (card == NULL)
				printf("  connection failed\n");
			else{
				printf("  established connection %p\n", (void*)card);
		//TODO: have to expose the card ports MUCH better
				if (! card->startCollecting()){
						printf("  startCollecting() failed with: %d\n",
								card->getLastError());
						PO8e::releaseCard(card);
				}
				else{
						printf("  card is collecting incoming data.\n");
						count++;
				}
			}
			// wait for streaming to start on the first card
			printf("Waiting for the stream to start on card 0\n");
			while(card->samplesReady() == 0)
				usleep(5000);
		}
		// start the timer used to compute the speed and set the collected bytes to 0
		long double starttime = gettime(); 
		long double totalSamples = 0.0; //for simulation.
		long long bytes = 0; 
		unsigned int frame = 0; 
		unsigned int bps = 2; 
		unsigned int nchan = 96; 
		if(!simulate){
			bps = card->dataSampleSize(); 
			nchan = card->numChannels(); 
		}
		short * temp = new short[bufmax*nchan]; // >10000 samples * 2 bytes/sample * 96 Channels 
		short * temptemp = new short[bufmax];
		int stoppedCount = 0;
		while((simulate || stoppedCount < count) && !g_die){
			//printf("waiting for data ready.\n"); --we move too fast for this.
			if (!simulate && count == 1 && !card->waitForDataReady())
				break;
		
			int waitCount = 0;
			stoppedCount = 0;
			bool stopped = false;
			int numSamples = 0; 
			if(!simulate){
				numSamples = (int)card->samplesReady(&stopped);
				if (stopped)
					stoppedCount++;
				else if (numSamples > 0){
					card->readBlock(temp, numSamples);
					card->flushBufferedData(numSamples);
					bytes += numSamples * nchan * bps; 
				}
			}else{
				long double now = gettime(); 
				numSamples = (int)((now - starttime)*24414.0625 - totalSamples); 
				if(numSamples >= 250){ 
					numSamples = 250; 
					totalSamples = (now - starttime)*24414.0625;
				}
				float scale = sin(totalSamples/4e4); 
				for(int i=0; i<numSamples; i++){
					temptemp[i] =  (short)(sinf((float)
							((totalSamples + i)/6.0))*32768.f*scale); 
				}
				for(int k=0; k<96; k++){
					for(int i=0; i<numSamples; i++){
						temp[k*numSamples +i] = temptemp[i]; 
					}
				}
				//last part of the buffer is just TDT ticks (most recent -> least delay?)
				for(int i=0; i<numSamples; i++){
					int r = (int)(totalSamples +i); 
					temp[96*numSamples +i] = r & 0xffff;
					temp[97*numSamples +i] = (r>>16) & 0xffff; 
				}
				totalSamples += numSamples; 
				usleep(70); 
			}
			if(numSamples > 0){
				if(frame %200 == 0){ //need to move this to the UI.
				fprintf(stderr, "%d samples at %d bps of %d chan: %Lf MB/sec\n", numSamples, bps, nchan,
							((long double)bytes) / ((gettime() - starttime)*(1024.0*1024.0))); 
				}
				g_sample += numSamples; 
				bytes += numSamples * bps * nchan; 
			}
			else{
				//printf("wait count %d\n", waitCount); 
				waitCount++;
			}
			frame++; 
		}
		if(!simulate){
			printf("\n");
			printf("Releasing card 0\n");
			PO8e::releaseCard(card);
		}
		//delete card; 
		sleep(1); 
	}
	return 0;
}

int main(void){
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
