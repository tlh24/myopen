//program to convert gtkclient's stream-saved output to matlab files.

#include <stdlib.h>
#include <stdarg.h>
#include <string.h>
#include <memory.h>
#include <math.h>
#include <matio.h>
#include "packet.h"
#include <assert.h>
#include <zlib.h>

#define u64 unsigned long long
#define i64 long long
#define u32 unsigned int

//#define _LARGEFILE_SOURCE enabled by default.
//#define _LARGEFILE64_SOURCE
#define _FILE_OFFSET_BITS 64

#define CHUNK 16384
int gzipp(unsigned char* data, u64 len, FILE *dest, int level)
{
    int ret, flush;
    unsigned have;
    z_stream strm;
    unsigned char out[CHUNK];

    /* allocate deflate state */
    strm.zalloc = Z_NULL;
    strm.zfree = Z_NULL;
    strm.opaque = Z_NULL;
    ret = deflateInit2(&strm, level, Z_DEFLATED, 30, 8, Z_DEFAULT_STRATEGY);
    if (ret != Z_OK)
        return ret;

	 for(u64 k = 0; k <= len/CHUNK; k++){
		 strm.next_in = &(data[k*CHUNK]);
		 strm.avail_in = CHUNK;
		 if(k == len/CHUNK){
			 strm.avail_in = len - k*CHUNK;
			 flush = Z_FINISH;
		 } else
			 flush =  Z_NO_FLUSH;
		 do {
            strm.avail_out = CHUNK;
            strm.next_out = out;
            ret = deflate(&strm, flush);    /* no bad return value */
            assert(ret != Z_STREAM_ERROR);  /* state not clobbered */
            have = CHUNK - strm.avail_out;
            if (fwrite(out, 1, have, dest) != have || ferror(dest)) {
                (void)deflateEnd(&strm);
                return Z_ERRNO;
            }
        } while (strm.avail_out == 0);
        assert(strm.avail_in == 0);     /* all input will be used */
	 }
    assert(ret == Z_STREAM_END);        /* stream will be complete */

    /* clean up and return */
    (void)deflateEnd(&strm);
    return Z_OK;
}


int main(int argn, char **argc){
	if(argn != 3 && argn != 2){
		printf("usage: convert infile.bin outfile.mat\n");
		printf(" or just: convert infile.bin\n");
		printf("\n For reference, there are 4 output files:\n");
		printf("\t $.mat : contains \n");
		printf("\t\t time, wall time within the client, synchronous to the BMI.\n");
		printf("\t\t\t one time per rxpacket. \n");
		printf("\t\t\t does not have sufficient precision for spikes -- \n");
		printf("\t\t\t packets may come in out of order,\n");
		printf("\t\t mstimer, hardware clock on bridge, runs at %f Hz\n", BRIDGE_CLOCK);
		printf("\t\t\t one time per rxpacket. \n");
		printf("\t\t\t timestamps for spikes should be pretty accurate. \n");
		printf("\t\t spike_ts \n");
		printf("\t\t\t spike times, indexes time or mstimer \n");
		printf("\t\t\t these are sorted on the headstage but only  \n");
		printf("\t\t\t timestamped on the bridge to conserve bandwidth \n");
		printf("\t\t spike_ch \n");
		printf("\t\t\t channel of the spike. same length as spike_ts.\n");
		printf("\t\t spike_unit \n");
		printf("\t\t\t unit of the spike. same length as spike_ts.\n");
		printf("\t $.nlg \n");
		printf("\t\t raw signed 8-bit integer matrix of analog traces. \n");
		printf("\t\t matrix: 4 by (rxpackets * 6) \n");
		printf("\t\t (each packet contains 6 samples from 4 packets) \n");
		printf("\t $.chn.gz \n");
		printf("\t\t gzipped unsigned 8-bit integer matrix of channel for analog. \n");
		printf("\t\t matrix: 4 by rxpackets \n");
		printf("\t\t (channel does not change between packets) \n");
		printf("\t $.log.gz \n");
		printf("\t\t gzipped text of messages within the file. \n");
		exit(0);
	} else {
		FILE* in = fopen(argc[1], "r");
		if(!in) {
			printf("could not open %s\n", argc[1]);
			exit(0);
		}
		mat_t *mat;
		int n = strlen(argc[1]);
		if(n < 5 || n > 511){
			printf(" infile not .bin?\n");
			exit(0);
		}
		char s[512];
		strncpy(s, argc[1], 512);
		s[n-3] = 'm'; s[n-2] = 'a'; s[n-1] = 't';
		if(argn == 2){
			mat = Mat_Create(s,NULL);
		}else{
			mat = Mat_Create(argc[2],NULL);
		}
		if(!mat){
			printf("could not open for writing %s\n", argc[2]);
			exit(0);
		}
		//write a log file too.
		s[n-3] = 'l'; s[n-2] = 'o'; s[n-1] = 'g';
		FILE* log = fopen(s, "w");
		s[n-3] = 'n'; s[n-2] = 'l'; s[n-1] = 'g';
		FILE* nlg = fopen(s, "w");
		s[n-3] = 'c'; s[n-2] = 'h'; s[n-1] = 'n';
		s[n-0] = '.'; s[n+1] = 'g'; s[n+2] = 'z';  s[n+3] = 0;
		FILE* chn = fopen(s, "w");
		if(!in) {
			printf("could not open %s for writing\n", s);
			exit(0);
		}
		//this is (for now) a two-stage process:
		//have to scan through the file,
		//determine what's there, allocate memory appropritately,
		//then fill those structures up and write *that* out.
		u32 u;
		u64 pos = 0;
		u64 rxpackets = 0;
		u64 txpackets = 0;
		u64 msgpackets = 0;
		u64 msglength = 0;
		u64 spikes = 0;
		bool done = false;
		while(!done){
			fread((void*)&u,4,1,in);
			if(ferror(in) || feof(in)) done = true;
			else {
				if(u == 0xdecafbad){
					fread((void*)&u,4,1,in);
					unsigned int siz = u & 0xffff;
					//printf("u 0x%x\n",u);
					unsigned int npak = (siz-4)/(4+32);
					rxpackets += npak;
					//read these in -- but don't use them.
					double rxtime = 0.0;
					unsigned int dropped = 0;
					fread((void*)&rxtime,8,1,in); //rx time in seconds.
					fread((void*)&dropped,4,1,in);
					for(unsigned int i=0;i<npak; i++){
						packet p;
						fread((void*)&p,sizeof(p),1,in);
						int channels[32]; char match[32];
						unsigned int echo = 0;
						decodePacket(&p, channels, match, echo);
						for(unsigned int k=0; k<32; k++){
							if(match[k]) spikes++;
						}
					}
					pos += 16+siz;
				}else if(u == 0xc0edfad0){
					fread((void*)&u,4,1,in);
					unsigned int siz = u & 0xffff;
					//printf("u 0x%x\n",u);
					txpackets++;
					fseeko(in,siz+8, SEEK_CUR);
					pos += 16+siz;
				}else if(u == 0xb00a5c11){
					fread((void*)&u,4,1,in);
					unsigned int siz = u & 0xffff;
					//printf("u 0x%x\n",u);
					msgpackets += 1;
					msglength += siz;
					fseeko(in,siz+8, SEEK_CUR); //8 byte double timestamp.
					pos += 16+siz;
				} else {
					printf("magic number seems off, is 0x%x, %lld bytes, %lld packets\n",
						   u,pos,rxpackets);
					exit(0);
				}
				if(ferror(in) || feof(in)) done = true;
			}
		}
		printf("total %lld rxpackets, %lld txpackets, %lld spikes, %lld messages\n",
			   rxpackets, txpackets, spikes, msgpackets);
		if(rxpackets > 0x7fffffff){
			printf("you will not be able to save packet timestamps.\n");
		}
		fseeko(in,0, SEEK_SET);
		//okay, allocate appropriate data structs:
		// time (double), analog(i8), channel (i8),
		// spike_time (double), spikes(i32)
		double* time;
		mat_uint32_t* mstimer;
		unsigned char* analog;
		unsigned char* channel;
		mat_uint32_t* spike_ts;
		mat_int8_t* spike_ch;
		mat_int8_t* spike_unit;
		// store timestamp (in samples), rx time (not necessarily accurate) - one per pkt
		// store channel # and sample
		// store channel & timestamp for spikes.
		// just ignore dropped packets for now.
		time = (double*)malloc(rxpackets * sizeof(double));
		  if(!time){ printf("could not allocate time variable."); exit(0);}
		mstimer = (mat_uint32_t*)malloc(rxpackets * sizeof(int) );
		 if(!mstimer){ printf("could not allocate mstimer variable."); exit(0);}

		spike_ts = (mat_uint32_t*)malloc(spikes * sizeof(int));
		  if(!spike_ts){ printf("could not allocate spike_ts variable."); exit(0);}
		spike_ch = (mat_int8_t*)malloc(spikes * 32);
		  if(!spike_ch){ printf("could not allocate spike_ch variable."); exit(0);}
		spike_unit = (mat_int8_t*)malloc(spikes * 32);
		  if(!spike_unit){ printf("could not allocate spike_unit variable."); exit(0);}

		analog = (unsigned char*)malloc(rxpackets * 24 );
		  if(!analog){ printf("could not allocate analog variable."); exit(0);}
		channel = (unsigned char*)malloc(rxpackets * 4 ); //channel does not change within packets.
		  if(!channel){ printf("could not allocate channel variable."); exit(0);}

		//also need to inspect the messages, to see exactly when the channels changed.
		u64 tp = 0; // packet position (index time, aka timestamp)
		u64 sp = 0; // spike position (index spike variables)
		char msgs[16][128]; //use this to save messages ; appy them when their echo appears.
		for(u64 i=0; i<16*128; i++){
			msgs[0][i] = 0; //yes, you can do that in c!
		}
		int chans[4] = {0,32,64,96};
		done = false;
		while(!done){
			unsigned int echo;
			fread((void*)&u,4,1,in);
			if(ferror(in) || feof(in)) done = true;
			else {
				if(u == 0xdecafbad){
					fread((void*)&u,4,1,in);
					unsigned int siz = u & 0xffff;
					unsigned int npak = (siz-4)/(4+32);
					//first 4 is for dropped packet count
					//second 4 is for 4 byte bridge milisecond counter
					//printf("npak %d siz %d\n",npak,siz);
					double rxtime = 0.0;
					unsigned int dropped = 0;
					fread((void*)&rxtime,8,1,in); //rx time in seconds.
					fread((void*)&dropped,4,1,in);

					for(unsigned int i=0;i<npak; i++){
						packet p;
						fread((void*)&p,sizeof(p),1,in);
						if(ferror(in) || feof(in)) done = true;
						else{
							int channels[32]; char match[32];
							decodePacket(&p, channels, match, echo);
							//check to see if we can apply the command that was echoed.
							char m = msgs[echo][0];
							if(m >= 'A' && m <= 'A' + 15){
								printf("applying %s\n", msgs[echo]);
								msgs[echo][0] = 0;
							}
							time[tp] = rxtime + (double)i * 6.0 / 31250.0;
							mstimer[tp] = p.ms;
							for(int j=0; j<6; j++){
								for(int k=0; k<4; k++){
									char samp = p.data[j*4+k];
									analog[tp*24+j*4+k] = samp;
									if(j == 0)
										channel[tp*4+k] = chans[k];
								}
							}
							for(int j=0; j<32; j++){
								if(match[j]){
									spike_ts[sp] = tp;
									spike_ch[sp] = channels[j];
									spike_unit[sp] = match[j];
									sp++;
									if(sp > spikes){
										printf("error! spike position sp > spikes\n");
										printf("%lld > %lld \n", sp, spikes);
										printf("file offset %ld\n", ftello(in));
										exit(0);
									}
								}
							}
							tp++;
							if(tp > rxpackets){
								printf("error! time position tp > rxpackets\n");
								printf("%lld > %lld \n", tp, rxpackets);
								printf("file offset %ld\n", ftello(in));
								exit(0);
							}
						}
					}
					pos += 16+siz;
				} else if( u == 0xc0edfad0){
					//ignore tx packets (for now?)
					fread((void*)&u,4,1,in);
					unsigned int siz = u & 0xffff;
					//printf("u 0x%x\n",u);
					txpackets += (siz)/32;
					fseeko(in,siz+8, SEEK_CUR);
					pos += 16+siz;
				} else if(u == 0xb00a5c11){
					fread((void*)&u,4,1,in);
					unsigned int siz = u & 0xffff;
					//printf("u 0x%x\n",u);
					double rxtime = 0.0;
					fread((void*)&rxtime,8,1,in);
					char buf[128];
					fread((void*)buf,siz,1,in);
					buf[siz] = 0;
					//really need to wait for the echo here.
					//bummish.
					fprintf(log, "%f : %s\n", rxtime, buf);
					//first char: A-P (0-15, corresponds to echo); second space
					char* b = buf; b+=2;
					if(strncmp(b, "chan", 4) == 0){
						int ii = b[5] - 'A';
						if(ii >= 0 && ii < 4){
							b += 7;
							chans[ii] = atoi(b);
							//printf(" chan %d changed to %d\n", ii, chans[ii]);
						}
					}
					pos += 16+siz;
				} else {
					printf("magic number seems off, is 0x%x, %lld bytes\n",
						u,pos);
					exit(0);
				}
			}
		}
		printf("finished reading in data file, now writing matlab file.\n");
		if(tp > 0x7fffffff){
			printf("error: tp %lld, too large for 32-bit integer, clipping data.\n", tp);
			exit(0);
		}
		if(sp > 0x7fffffff){
			printf("error: sp %lld, too large for 32-bit integer, clipping data.\n", sp);
			exit(0);
		}
		//wrap them anyway.
		int tpp = (int)(tp & 0x7fffffff);
		int spp = (int)(sp & 0x7fffffff);
		matvar_t *matvar;
		matvar = Mat_VarCreate("time",MAT_C_DOUBLE,MAT_T_DOUBLE,
							   1,&tpp,time,0);
		Mat_VarWrite( mat, matvar, 0 );
		Mat_VarFree(matvar);
		free(time); //I wish I had more.

		matvar = Mat_VarCreate("mstimer",MAT_C_UINT32,MAT_T_UINT32,
							   1,&tpp,mstimer,0);
		Mat_VarWrite( mat, matvar, 0 );
		Mat_VarFree(matvar);
		free(mstimer);

		matvar = Mat_VarCreate("spike_ts",MAT_C_UINT32,MAT_T_UINT32,
							   1,&spp,spike_ts,0);
		Mat_VarWrite( mat, matvar, 0 );
		Mat_VarFree(matvar);
		free(spike_ts);

		matvar = Mat_VarCreate("spike_ch",MAT_C_UINT8,MAT_T_UINT8,
							   1,&spp,spike_ch,0);
		Mat_VarWrite( mat, matvar, 0 );
		Mat_VarFree(matvar);
		free(spike_ch);

		matvar = Mat_VarCreate("spike_unit",MAT_C_UINT8,MAT_T_UINT8,
							   1,&spp,spike_unit,0);
		Mat_VarWrite( mat, matvar, 0 );
		Mat_VarFree(matvar);
		free(spike_unit);

		//most analog traces do not fit into 2 gigs -- write them out RAW.
		printf("writing raw analog traces\n");
		fwrite(analog, 1, tp * 24, nlg);
		fclose(nlg);
		free(analog);
		//likewise for the channel numbers. These will be gzipped.
		printf("gzipping channel traces\n");
		gzipp((unsigned char*)channel, tp*4, chn, Z_DEFAULT_COMPRESSION);
		fclose(chn);
		free(channel);

		Mat_Close(mat);
		fclose(in);
		fclose(log);
		strncpy(s, argc[1], 512);
		n = strlen(argc[1]);
		s[n-3] = 'l'; s[n-2] = 'o'; s[n-1] = 'g';
		char s2[512];
		snprintf(s2, 511, "gzip %s", s);
		system(s2);
	}
}