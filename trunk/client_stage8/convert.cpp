//program to convert gtkclient's stream-saved output to matlab files. 

#include <stdlib.h>
#include <stdarg.h>
#include <string.h>
#include <memory.h>
#include <math.h>
#include <matio.h>
#include "packet.h"

int main(int argn, char **argc){
	if(argn != 3){
		printf("usage: convert infile.bin outfile.mat\n"); 
		exit(0); 
	} else {
		FILE* in = fopen(argc[1], "r"); 
		if(!in) {
			printf("could not open %s\n", argc[1]); 
			exit(0); 
		}
		mat_t *mat;
		mat = Mat_Create(argc[2],NULL);
		if(!mat){
			printf("could not open for writing %s\n", argc[2]); 
			exit(0); 
		}
		//this is (for now) a two-stage process: 
		//have to scan through the file, 
		//determine what's there, allocate memory appropritately, 
		//then fill those structures up and write *that* out.
		unsigned int u; 
		unsigned int pos = 0;
		unsigned int rxpackets = 0; 
		unsigned int txpackets = 0; 
		unsigned int msgpackets = 0; 
		bool done = false; 
		while(!done){
			fread((void*)&u,4,1,in);
			if(ferror(in) || feof(in)) done = true; 
			else {
				if(u == 0xdecafbad){
					fread((void*)&u,4,1,in); 
					unsigned int siz = u & 0xffff; 
					//printf("u 0x%x\n",u); 
					rxpackets += (siz-4)/32; 
					fseek(in,siz+8, SEEK_CUR);
					pos += 16+siz; 
				}else if(u == 0xc0edfad0){
					fread((void*)&u,4,1,in); 
					unsigned int siz = u & 0xffff; 
					//printf("u 0x%x\n",u); 
					txpackets++; 
					fseek(in,siz+8, SEEK_CUR);
					pos += 16+siz; 
				}else if(u == 0xb00a5c11){
					fread((void*)&u,4,1,in); 
					unsigned int siz = u & 0xffff; 
					//printf("u 0x%x\n",u); 
					msgpackets += 1; 
					fseek(in,siz+8, SEEK_CUR);
					pos += 16+siz; 
				} else {
					printf("magic number seems off, is 0x%x, %d bytes, %d packets\n",
						   u,pos,rxpackets);
					exit(0); 
				}
				if(ferror(in) || feof(in)) done = true; 
			}
		}
		printf("total %d rxpackets, %d txpackets, %d messages\n", 
			   rxpackets, txpackets, msgpackets); 
		fseek(in,0, SEEK_SET);
		//okay, allocate appropriate data structs: 
		// time (double), analog(i8), channel (i8), 
		// spike_time (double), spikes(i32)
		double* time; 
		mat_uint32_t* frameseq; 
		mat_int8_t* analog;
		mat_int8_t* channel;
		mat_uint32_t* spike_ts; 
		mat_int8_t* spike_ch; 
		mat_int8_t* spike_unit;
		// store timestamp (in samples), rx time (not necessarily accurate) - one per pkt
		// store channel # and sample 
		// store channel & timestamp for spikes.
		// just ignore dropped packets for now.
		time = (double*)malloc(rxpackets * sizeof(double)); 
		  if(!time){ printf("could not allocate time variable."); exit(0);}
		frameseq = (mat_uint32_t*)malloc(rxpackets * sizeof(int) ); 
		  if(!frameseq){ printf("could not allocate frameseq variable."); exit(0);}
		analog = (mat_int8_t*)malloc(rxpackets * 24 ); 
		  if(!analog){ printf("could not allocate analog variable."); exit(0);}
		channel = (mat_int8_t*)malloc(rxpackets * 24 ); 
		  if(!channel){ printf("could not allocate channel variable."); exit(0);}
		
		spike_ts = (mat_uint32_t*)malloc(rxpackets * sizeof(int)*32); 
		  if(!spike_ts){ printf("could not allocate spike_ts variable."); exit(0);}
		spike_ch = (mat_int8_t*)malloc(rxpackets * 32); 
		  if(!spike_ch){ printf("could not allocate spike_ch variable."); exit(0);}
		spike_unit = (mat_int8_t*)malloc(rxpackets * 32); 
		  if(!spike_unit){ printf("could not allocate spike_unit variable."); exit(0);}
		//also need to inspect the messages, to see exactly when the channels changed.
		rxpackets = 0;
		int tp = 0; // packet position (index time, aka timestamp)
		int sp = 0; // spike position (index spike variables)
		char msgs[16][128]; //use this to save messages ; appy them when their echo appears.
		for(int i=0; i<16*128; i++){
			msgs[0][i] = 0; //yes, you can do that in c! 
		}
		int chans[4] = {0,32,64,96}; 
		done = false; 
		while(!done){
			fread((void*)&u,4,1,in);
			if(ferror(in) || feof(in)) done = true; 
			else {
				if(u == 0xdecafbad){
					fread((void*)&u,4,1,in); 
					unsigned int siz = u & 0xffff; 
					int npak = (siz-4)/32;
					//printf("npak %d siz %d\n",npak,siz); 
					double rxtime = 0.0; 
					unsigned int fsq; 
					fread((void*)&rxtime,8,1,in); //rx time in seconds. 
					fread((void*)&fsq,4,1,in); 
	
					int channels[32]; char match[32]; 
					for(int i=0;i<npak; i++){
						packet p; 
						fread((void*)&p,sizeof(p),1,in);
						if(ferror(in) || feof(in)) done = true; 
						else{
							/*int headecho = ((p.flag) >> 4) & 0xf; 
							//check to see if we can apply the command that was echoed.
							char m = msgs[headecho][0]; 
							if(m >= 'A' && m <= 'A' + 15){
								printf("applying %s\n", msgs[headecho]); 
								msgs[headecho][0] = 0; 
							}*/
							time[tp] = rxtime + (double)tp * 6.0 / 31250.0; 
							frameseq[tp] = fsq; 
							for(int j=0; j<6; j++){
								for(int k=0; k<4; k++){
									char samp = p.data[j*4+k]; 
									analog[tp*24+j*4+k] = samp; 
									channel[tp*24+j*4+k] = chans[k]; 
								}
							}
							decodePacket(&p, channels, match);
							for(int j=0; j<32; j++){
								if(match[j]){
									spike_ts[sp] = tp*6; 
									spike_ch[sp] = channel[j]; 
									spike_unit[sp] = match[j]; 
									sp++;
								}
							}
							tp++; 
						}
					}
					pos += 16+siz; 
				} else if( u == 0xc0edfad0){
					//ignore tx packets (for now?)
					fread((void*)&u,4,1,in); 
					unsigned int siz = u & 0xffff; 
					//printf("u 0x%x\n",u); 
					txpackets += (siz)/32; 
					fseek(in,siz+8, SEEK_CUR);
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
					//printf("message: %s\n", buf); 
					if(buf[0] >= 'A' && buf[0] <= 'A' + 15){
						int indx = buf[0] - 'A'; 
						strncpy(msgs[indx], buf, 128); 
					}
					pos += 16+siz; 
				} else {
					printf("magic number seems off, is 0x%x, %d bytes\n",
						u,pos);
					exit(0); 
				}
			}
		}
		printf("finished reading in data file, now writing matlab file.\n"); 
		
		matvar_t *matvar;
		matvar = Mat_VarCreate("time",MAT_C_DOUBLE,MAT_T_DOUBLE,
							   1,&tp,time,0);
		Mat_VarWrite( mat, matvar, 0 );
		Mat_VarFree(matvar);
		free(time); //I wish I had more. 
		
		matvar = Mat_VarCreate("frameseq",MAT_C_UINT32,MAT_T_UINT32,
							   1,&tp,frameseq,0);
		Mat_VarWrite( mat, matvar, 0 );
		Mat_VarFree(matvar);
		free(frameseq); 
		
		int m = tp * 24; 
		matvar = Mat_VarCreate("analog",MAT_C_INT8,MAT_T_INT8,
							   1,&m,analog,0);
		Mat_VarWrite( mat, matvar, 0 );
		Mat_VarFree(matvar);
		free(analog); 
		
		matvar = Mat_VarCreate("channel",MAT_C_INT8,MAT_T_INT8,
							   1,&m,channel,0);
		Mat_VarWrite( mat, matvar, 0 );
		Mat_VarFree(matvar);
		free(channel); 
		
		matvar = Mat_VarCreate("spike_ts",MAT_C_UINT32,MAT_T_UINT32,
							   1,&sp,spike_ts,0); 
		Mat_VarWrite( mat, matvar, 0 );
		Mat_VarFree(matvar);
		free(spike_ts); 
		
		matvar = Mat_VarCreate("spike_ch",MAT_C_UINT32,MAT_T_UINT32,
							   1,&sp,spike_ch,0);
		Mat_VarWrite( mat, matvar, 0 );
		Mat_VarFree(matvar);
		free(spike_ch); 
		
		Mat_Close(mat); 
		fclose(in); 
	}
}