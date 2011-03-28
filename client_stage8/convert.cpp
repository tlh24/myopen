//program to convert gtkclient's stream-saved output to matlab files. 

#include <stdlib.h>
#include <stdarg.h>
#include <string.h>
#include <memory.h>
#include <math.h>
#include <matio.h>

typedef struct {
	char data[28]; //7 samples of 4 different channels. 
	unsigned short flag; // high nibble: present channel; low: packet # in frame.
	unsigned short exceeded; //goes over twice per frame. 8*16 = 128.
} packet; 

int main (int argn, char **argc){
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
		unsigned int packets = 0; 
		bool done = false; 
		while(!done){
			fread((void*)&u,4,1,in);
			if(ferror(in) || feof(in)) done = true; 
			else {
				if(u != 0xdecafbad){
					printf("magic number seems off, is 0x%x, %d bytes, %d packets\n",
						   u,pos,packets);
					exit(0); 
				}
				fread((void*)&u,4,1,in); 
				unsigned int siz = u & 0xffff; 
				//printf("u 0x%x\n",u); 
				packets += (siz-4)/32; 
				fseek(in,siz+8, SEEK_CUR);
				pos += 16+siz; 
				if(ferror(in) || feof(in)) done = true; 
			}
		}
		printf("total packets %d\n", packets); 
		fseek(in,0, SEEK_SET);
		//okay, allocate appropriate data structs: 
		// time (double), analog(i8), channel (i8), 
		// spike_time (double), spikes(i32)
		double* time; 
		mat_int8_t* analog;
		mat_int8_t* channel;
		double* spike_time; 
		mat_int32_t* spikes; 
		time = (double*)malloc(packets * 27 * sizeof(double)); 
		  if(!time){ printf("could not allocate time variable."); exit(0);}
		analog = (mat_int8_t*)malloc(packets * 27 ); 
		  if(!analog){ printf("could not allocate analog variable."); exit(0);}
		channel = (mat_int8_t*)malloc(packets * 27 ); 
		  if(!channel){ printf("could not allocate channel variable."); exit(0);}
		
		spike_time = (double*)malloc(packets * sizeof(double)); 
		  if(!spike_time){ printf("could not allocate spike_time variable."); exit(0);}
		spikes = (mat_int32_t*)malloc(packets * 4); 
		  if(!channel){ printf("could not allocate channel variable."); exit(0);}
		
		packets = 0; 
		int ip = 0; //sample position
		int sp = 0; //spike position
		done = false; 
		while(!done){
			fread((void*)&u,4,1,in);
			if(ferror(in) || feof(in)) done = true; 
			else {
				if(u != 0xdecafbad){
					printf("magic number seems off, is 0x%x, %d bytes, %d packets\n",
						   u,pos,packets);
					exit(0); 
				}
				fread((void*)&u,4,1,in); 
				unsigned int siz = u & 0xffff; 
				int npak = (siz-4)/32;
				//printf("npak %d siz %d\n",npak,siz); 
				packets += npak;  
				double rxtime = 0.0; 
				fread((void*)&rxtime,8,1,in); //rx time in seconds. 
				int rxoff = 0; 
				fread((void*)&u,4,1,in); //discard the frame seq #
				for(int i=0;i<npak; i++){
					packet p; 
					fread((void*)&p,sizeof(p),1,in);
					if(ferror(in) || feof(in)) done = true; 
					else{
						//reorganize exceeded so bit 0 is channel 0 etc.
						unsigned int e = 0; 
						for(int j=0; j<32; j++){
							int ch = ((j & 0xf) << 1) + ((j & 0x10) >> 4);
							if(p.exceeded & (0x1 << ch))
								e |= 0x1 << j; 
						}
						spikes[sp] = e;
						spike_time[sp] = rxtime + (double)rxoff/31200.0; 
						sp++; 
						int chan = (p.flag)>>3;
						for(int j=0;j<27;j++){
							time[ip] = rxtime + (double)rxoff/31200.0; 
							analog[ip] = p.data[j]; 
							channel[ip] = chan; 
							ip++; 
							rxoff++; 
						}
					}
				}
				pos += 16+siz; 
			}
		}
		printf("finished reading in data file, now writing matlab file.\n"); 
		
		matvar_t *matvar;
		matvar = Mat_VarCreate("time",MAT_C_DOUBLE,MAT_T_DOUBLE,
							   1,&ip,time,0);
		Mat_VarWrite( mat, matvar, 0 );
		Mat_VarFree(matvar);
		
		matvar = Mat_VarCreate("analog",MAT_C_INT8,MAT_T_INT8,
							   1,&ip,analog,0);
		Mat_VarWrite( mat, matvar, 0 );
		Mat_VarFree(matvar);
		
		matvar = Mat_VarCreate("channel",MAT_C_INT8,MAT_T_INT8,
							   1,&ip,channel,0);
		Mat_VarWrite( mat, matvar, 0 );
		Mat_VarFree(matvar);
		
		matvar = Mat_VarCreate("spike_time",MAT_C_DOUBLE,MAT_T_DOUBLE,
							   1,&sp,spike_time,0);
		Mat_VarWrite( mat, matvar, 0 );
		Mat_VarFree(matvar);
		
		matvar = Mat_VarCreate("spikes",MAT_C_INT32,MAT_T_INT32,
							   1,&sp,spikes,0);
		Mat_VarWrite( mat, matvar, 0 );
		Mat_VarFree(matvar);
		
		Mat_Close(mat); 
		fclose(in); 
	}
}