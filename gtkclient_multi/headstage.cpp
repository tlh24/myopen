// moving the headstage control functions into a new file.
// main file was getting to big!

//channel.h pulls in many headers -- inluding the opengl/cg ones.
#define GL_GLEXT_PROTOTYPES
#include <gtk/gtk.h>
#include <gtk/gtkgl.h>
#include <GL/glut.h>    // Header File For The GLUT Library
#include <GL/gl.h>	// Header File For The OpenGL32 Library
#include <GL/glu.h>	// Header File For The GLu32 Library
#include <GL/glx.h>     // Header file for the glx libraries.

#include <Cg/cg.h>    /* included in Cg toolkit for nvidia */
#include <Cg/cgGL.h>

#include <stdio.h>
#include <sys/types.h>
#include <inttypes.h>
#include <sys/time.h>
#include <pthread.h>
#include <sys/socket.h>
#include <netinet/in.h>
#include <stdlib.h>
#include <stdarg.h>
#include <string.h>
#include <memory.h>
#include <math.h>
#include <arpa/inet.h>
#include "../common_host/gettime.h"
#include "../common_host/sock.h"
#include "headstage.h"
#include "../common_host/cgVertexShader.h"
#include "../common_host/vbo.h"
#include "channel.h"
#include "../firmware_stage9_tmpl/memory.h"

extern int g_channel[4]; //selected in the UI.
extern int g_signalChain;
extern Channel* g_c[128*NSCALE];

unsigned int*	g_sendbuf[NSCALE];

i64		g_sendW[NSCALE]; //where to write to (in 32-byte increments)
i64 	g_sendR[NSCALE]; //where to read from
i64		g_sendL[NSCALE]; //the length of the buffer (in 32-byte packets)
char	g_messages[1024][128]; //save these, plaintext, in the file.
i64		g_messW[NSCALE];
i64		g_messR[NSCALE];

unsigned int g_echo[NSCALE] = {0};
unsigned int g_headecho[NSCALE] = {0};
unsigned int g_oldheadecho[NSCALE] = {100};
unsigned int g_echoMask = 0x0fffffff; //used to clear address bits
	// 0xffffffff puts gtkclient in compatability mode. (before svn v 605)
	// 0x0fffffff puts gtkclient in echo mode. (after svn v. 605)

// for 31.25ksps -- see filter_butter.m
// broken into 2 biquads, order b0 b1 a0 a1
/** 500 - 6.7kHz **/
float lowpass_coefs[8] ={ 0.240833,0.481711,0.323083,-0.456505,
					0.240833,0.481619,0.233390,-0.052153};
float highpass_coefs[8] ={0.936405,-1.872810,1.916303,-0.926028,
					0.936405,-1.872810,1.821050,-0.830291};
/** 150 - 10kHz **/
float lowpass_coefs2[8] = {0.453447,0.906993,-0.632535,-0.485595,
	0.453447,0.906796,-0.463824,-0.089354};
float highpass_coefs2[8] = {0.980489,-1.960979,1.976285,-0.977184,
	0.980489,-1.960979,1.944907,-0.945792};

unsigned int echo(unsigned int echoID, unsigned int address){
	address &= g_echoMask;
	
	address |= (echoID & 0xf) << 28; //top nibble is f normally.
	return address;
}
void saveMessage(const char *fmt, ...){
	va_list ap;     /* our argument pointer */
    if (fmt == NULL)    /* if there is no string to draw do nothing */
        return;
    va_start(ap, fmt);  //make ap point to first unnamed arg
	//need to add in 'echo' in alphabet encoding - when the headstage has the same sync,
	//we know that it got the command preceding this.
	
	for(int tid = 0; tid < NSCALE; tid++){
			int e = g_echo[tid] % 16;
			g_messages[g_messW[tid] % 1024][0] = 'A'+e;
			g_messages[g_messW[tid] % 1024][1] = ' ';
			vsnprintf(g_messages[g_messW[tid] % 1024] + 2, 126, fmt, ap);
			va_end(ap);
			g_messW[tid]++;
	}
}
void updateGain(int chan){
	/* remember, channels 0 and 32 are filtered at the same time.
		then 64 and 96
		and the biquads are arranged as:
		low1 high1 low2 high2
		only can adjust the B coefs of the lowpass filters, though.
		(the highpass coefs are maxed out)
		all emitted numbers are base 14.(s2rnd flag)
	*/
	//thread handles channels in multiples of 128. If 
	int tid = chan/128; //0 if lower than 128, etc. This should update to the pertinent thread index in the i64 buffers
	chan = chan & (0xff ^ 32); //map to the lower channels. Should still map properly to lower channels if > 128
		// e.g. 42 -> 10,42; 67 -> 67,99 ; 100 -> 68,100. This should be usef if chan is indexing g_c
	float gain1 = sqrt(fabs(g_c[chan]->m_gain));
	float gain2 = sqrt(fabs(g_c[chan+32]->m_gain));
	float again1, again2; //the actual gains.
	int indx [] = {0,1,4,5}; //index the B coefs.
	float b[8];
	int i,j,k;
	unsigned int u;
	
	for(i=0; i<4; i++){
		j = indx[i];
		b[i*2+0] = lowpass_coefs[j]*gain1*16384.f;
		b[i*2+1] = lowpass_coefs[j]*gain2*16384.f;
	}
	//clamp to acceptable values.
	for(i=0; i<8; i++){
		b[i] = b[i] < -32768.f ? -32768.f : b[i];
		b[i] = b[i] > 32767.f ? 32767.f : b[i];
	}
	if(g_c[chan]->m_gain < 0){
		b[0] *= -1; b[2] *= -1; //change the sign of the first filter.
	}
	if(g_c[chan+32]->m_gain < 0){
		b[1] *= -1; b[3] *= -1;
	}
	//calculate the actual gain. assume static gain = 1
	again1 =
		((b[0]/(lowpass_coefs[0]*16384.f) +
			b[2]/(lowpass_coefs[1]*16384.f))/2.f) *
		((b[4]/(lowpass_coefs[4]*16384.f) +
			b[6]/(lowpass_coefs[5]*16384.f))/2.f);
	again2 =
		((b[1]/(lowpass_coefs[0]*16384.f) +
			b[3]/(lowpass_coefs[1]*16384.f))/2.f) *
		((b[5]/(lowpass_coefs[4]*16384.f) +
			b[7]/(lowpass_coefs[5]*16384.f))/2.f);
	printf("actual gain ch %d %f ; ch %d %f\n",
		   chan, again1, chan+32, again2);
	//now form the 4x 32 bit uints to be written.
	int indx2[] = {0,1,8,9}; //don't write highpass Bs (4,5,12,13)
	
	unsigned int* ptr = g_sendbuf[tid];
	ptr += (g_sendW[tid] % g_sendL[tid]) * 8; //8 because we send 8 32-bit ints /pkt.
	
	int kchan = chan &127; //(to send in buf, needs to keep correct channel name) (0-127)
	//use kchan when not indexing g_c, thus, bitwise AND for 127 maps channels > 128 to 0-127.
	for(i=0; i<4; i++){
		//remember, chan mapped to 0-31 & 64-95 (above)
		unsigned int p = 0;
		if(kchan >= 64) p += 1; //chs 64-127 pocessed following 0-63, or 192-255 following 128 to 191
		ptr[i*2+0] = htonl(echo(g_echo[tid], 1 +
			(A1_STRIDE*(kchan & 31) +
			A1_IIRSTARTA + p*(A1_IIRSTARTB-A1_IIRSTARTA) + indx2[i])*4));

		j = (int)(b[i*2+0]);
		k = (int)(b[i*2+1]);
		u = (unsigned int)((j&0xffff) | ((k&0xffff)<<16));
		ptr[i*2+1] = htonl(u);
	}
	g_sendW[tid]++;
	saveMessage("gain %d %3.2f %d %3.2f", chan, again1, chan+32, again2);
	g_echo[tid]++;
}
void setOsc(int chan){
	//turn two channels e.g. 0 and 32 into oscillators.
	float b[4];
	unsigned int u;
	int i,j;
	int tid = chan/128;
	//(to send, needs to keep correct channel name)
	b[0] = 0.f; //assume there is already energy in the
	b[1] = 0.f; //delay line.
	b[2] = 32768.f - 45; //10 -> should be about 250Hz @ fs = 62.5khz
	b[3] = -16384.f;
	
	unsigned int* ptr = g_sendbuf[tid];
	ptr += (g_sendW[tid] % g_sendL[tid]) * 8; //8 because we send 8 32-bit ints /pkt.
	
	chan = chan & (0xff ^ 32); //map to the lower channels.
		// e.g. 42 -> 10,42; 67 -> 67,99 ; 100 -> 68,100
		
	int kchan = chan & 127; 
	
	for(i=0; i<4; i++){
		
			unsigned int p = 0;
			if(kchan >= 64) p += 1; //chs 64-127 pocessed following 0-63.
			ptr[i*2+0] = htonl(echo(g_echo[tid], A1 +
				(A1_STRIDE*(kchan & 31) +
				A1_IIRSTARTA + p*(A1_IIRSTARTB-A1_IIRSTARTA) + i)*4));
			j = (int)(b[i]);
			u = (unsigned int)((j&0xffff) | ((j&0xffff)<<16));
			ptr[i*2+1] = htonl(u);
	}
	g_sendW[tid]++;
	saveMessage("osc %d and %d", chan, chan+32);
	g_echo[tid]++;
}
void setChans(){
	int i;

	for(i=0; i<4;i++){
		int c = g_channel[i];
		int tid = c/128;
		unsigned int* ptr = g_sendbuf[tid];
		ptr += (g_sendW[tid] % g_sendL[tid]) * 8; //8 because we send 8 32-bit ints /pkt.
		//scope these here (could also make a thread safe ptr array?)
		
		ptr[i*2+0] = htonl(echo(g_echo[tid], (FP_BASE - FP_TXCHAN0 + 4*i)));
		//ok, for the taps: have 4 offsets.
		
		int o1 = (c & 31) * W1_STRIDE * 2 * 4; //which MUX line.
		int o2 = ((c & 64)>>6) * W1_STRIDE * 4; // primary/secondary SPORT
		int o3 = ((c & 32)>>5) * 2; // primary/secondary RX chan.
		/* 4th offset is to get to the correct written delay.
		0	mean from integrator
		1	gain
		2	saturated sample
		3	AGC out / LMS save
		4	x1(n-1) / LMS out
		5	x1(n-2)
		6	x2(n-1) / y1(n-1)
		7	x2(n-2) / y1(n-2)
		8	x3(n-1) / y2(n-1)
		9	x3(n-2) / y2(n-2)
		10	x2(n-1) / y3(n-1)
		11	x2(n-2) / y3(n-2)
		12	y4(n-1)
		13	y4(n-2)
		 */
		int o4 = g_signalChain * 4;
		ptr[i*2+1] = htonl(W1 + o1 + o2 + o3 + o4 + 1); //1 is for little-endian.
	}
	for(i=0; i<4; i++){
		saveMessage("chan %c %d", 'A'+i, g_channel[i]);
		printf("chan %c %d", 'A'+i, g_channel[i]);
		//save it in the sqlite db.
		//sqliteSetValue(i,"channel", (float)g_channel[i]);
	}
	for(int tid = 0; tid < NSCALE; tid++){
			g_sendW[tid]++;
			g_echo[tid]++;
	}
	
}
void setAGC(int ch1, int ch2, int ch3, int ch4){
	//sets AGC for (up to) four channels.
	
	//hardcoded channel limits? -_- I'll take care of the limiting elsewhere
	int chs[4]; 
	chs[0] = ch1; chs[1]= ch2;
		chs[2] = ch3; chs[3] = ch4;
		
	for(int i=0; i<4; i++){
		
		int chan = chs[i];
		int tid = chan/128;
		
		//scop these variables here, otherwise it's a pain
		unsigned int* ptr = g_sendbuf[tid];
		ptr += (g_sendW[tid] % g_sendL[tid]) * 8; //8 because we send 8 32-bit ints /pkt.
		
		//g_c[chan]->m_agc = target; set ACG elsewhere.
		chan = chan & (0xff ^ 32); //map to the lower channels (0-31,64-95)
		unsigned int p = 0;
		
		int kchan = chan &127; //(to send, needs to keep correct channel name)
		
		if(kchan >= 64) p += 1; //chs 64-127 pocessed following 0-63.
		ptr[i*2+0] = htonl(echo(g_echo[tid], A1 +
			(A1_STRIDE*(kchan & 31) +
			p*(A1_IIRSTARTA+A1_IIR) + 2)*4)); // 2 is the offset to the AGC target.
		
		int j = (int)(sqrt(32768 * g_c[chan]->m_agc));
		int k = (int)(sqrt(32768 * g_c[chan+32]->m_agc));
		unsigned int u = (unsigned int)((j&0xffff) | ((k&0xffff)<<16));
		ptr[i*2+1] = htonl(u);
	}
	
	for(int tid = 0; tid < NSCALE; tid++){
			g_sendW[tid]++;
			g_echo[tid]++;
	}
	
	saveMessage("agc %d %d %d %d : %d %d %d %d ", ch1,ch2,ch3,ch4,
		(int)g_c[ch1]->m_agc,(int)g_c[ch2]->m_agc,(int)g_c[ch3]->m_agc,(int)g_c[ch4]->m_agc);
}
/*void enableAGC(int* chs, int en){
	// you must enable / disable chs 0 and 32 at the same time.
	// this routine accepts 4 chs -- and sets the complement within the bank at the same time.
	// 8 channels altogether -- so for all, need to call 16 times.
	unsigned int* ptr = g_sendbuf[tid];
	ptr += (g_sendW[tid] % g_sendL[tid]) * 8; //8 because we send 8 32-bit ints /pkt.
	
	for(int i=0; i<4; i++){
		int chan = chs[i];
		//g_c[chan]->m_agc = target; set ACG elsewhere.
		chan = chan & (0xff ^ 32); //map to the lower channels (0-31,64-95)
		unsigned int p = 0;
		if(chan >= 64) p += 1; //chs 64-127 pocessed following 0-63.
		ptr[i*2+0] = htonl(echo(A1 +
			(A1_STRIDE*(chan & 31) + p*A1_AGCB + 3)*4)); // 3 is the offset to the AGC target.
		int j = 16384;
		int k = en > 0 ? 1 : 0;
		unsigned int u = (unsigned int)((j&0xffff) | ((k&0xffff)<<16));
		ptr[i*2+1] = htonl(u);
	}
	g_sendW[tid]++;
	saveMessage("agc_en %d %d %d %d : %d", chs[0], chs[1], chs[2], chs[3], en);
	g_echo[tid]++;
}*/
void setAperture(int ch){
	// aperture order: ch0, ch32, ch64, ch96. (little-endian)
	// each 16 bits.
	//might as well set both A & B apertures in same packet.
	int tid = ch/128;
	
	ch &= 31;
	printf("ch aper %d\n", ch);
	unsigned int* ptr = g_sendbuf[tid];
	ptr += (g_sendW[tid] % g_sendL[tid]) * 8;
	
	for(int i=0; i<4; i++){
		ptr[i*2+0] = htonl(echo(g_echo[tid], A1 +
			(A1_STRIDE*ch + (A1_TEMPLATE+A1_APERTURE)*(i/2) +
			 A1_APERTUREA + (i&1))*4));
		unsigned int u = (g_c[ch+64*(i&1)+128*tid]->getAperture(i/2) & 0xffff) |
						    ((g_c[ch+32+64*(i&1)+128*tid]->getAperture(i/2) & 0xffff)<<16);
		ptr[i*2+1] = htonl(u);
	}
	g_sendW[tid]++;
	
	for(int i=0; i<4; i++){
		saveMessage("aperture %d %d,%d", ch + 32*i,
				g_c[ch + 32*i + 128*tid]->getAperture(0),
				g_c[ch + 32*i + 128*tid]->getAperture(0));
	}
	g_echo[tid]++;
}
void setLMS(bool on){
	//this applies to all channels.
	for(int tid = 0; tid < NSCALE; tid++)
	{
		unsigned int* ptr = g_sendbuf[tid];
		ptr += (g_sendW[tid] % g_sendL[tid]) * 8; //8 because we send 8 32-bit ints /pkt. (32 byte packets)
		
		for(int i=0; i<4; i++){
			ptr[i*2+0] = htonl(echo(g_echo[tid], FP_BASE - FP_WEIGHTDECAY)); //frame pointer
			ptr[i*2+1] = htonl(on ? 0x7fff0005 : 0); //see r4 >>> 1 (v) in radio4.asm
		}
		g_sendW[tid]++;
		saveMessage("lms %d", (on ? 1 : 0));
		g_echo[tid]++;
	}
}
void setTemplate(int ch, int aB){
	
	int tid = ch/128;
	
	ch &= 31;
	aB &= 1;
	//each template is 16 points; can write 4 at a time, so need 4 writes.
	//template range: [-0.5 .. 0.5]
	
	for(int p=0; p<4; p++){
		unsigned int* ptr = g_sendbuf[tid];
		ptr += (g_sendW[tid] % g_sendL[tid]) * 8;
		
		for(int i=0; i<4; i++){
			//template A starts with newest sample (rightmost) -- loop.
			//template B is in normal order. (oldest first)
			int n = (p*4+i+(1-aB)*15)%16;
			ptr[i*2+0] = htonl(echo(g_echo[tid], A1 +
				(A1_STRIDE*ch + (A1_TEMPLATE+A1_APERTURE)*aB +
				A1_TEMPA + (p*4+i))*4));
			unsigned char a,b,c,d;
			a = (unsigned char)round((g_c[ch +  0 + 128*tid]->m_template[aB][n]+0.5f) * 255.f);
			b = (unsigned char)round((g_c[ch + 32 + 128*tid]->m_template[aB][n]+0.5f) * 255.f);
			c = (unsigned char)round((g_c[ch + 64 + 128*tid]->m_template[aB][n]+0.5f) * 255.f);
			d = (unsigned char)round((g_c[ch + 96 + 128*tid]->m_template[aB][n]+0.5f) * 255.f);
			unsigned int u = ((a << 0) & 0xff) |  //gcc will optimize this sillyness.
							((b << 8) & 0xff00) |     //I hate you so much Tim.
							((c <<16) & 0xff0000) |
							((d <<24) & 0xff000000);
			ptr[i*2+1] = htonl(u);
		}
		g_sendW[tid]++;
		g_echo[tid]++;
	}
	//really should save the templates somewhere else (another file)
}
void setBiquad(int chan, float* biquad, int biquadNum){
	// biquad num 0 or 1
	// biquad lo or hi (global)
	
	int tid = chan/128; //which thread id does the channel belong to
	
	chan = chan & (0xff ^ 32); //map to the lower channels (0-31,64-95)
	float gain1 = sqrt(fabs(g_c[chan]->m_gain));
	float gain2 = sqrt(fabs(g_c[chan+32]->m_gain));
	float b[8];
	int i,j,k;
	short s;
	unsigned int u;
	if(biquadNum & 1){
		gain1 = gain2 = 1.f; //no gain on the hpf.
	}
	for(i=0; i<2; i++){
		b[i*2+0] = biquad[i]*gain1*16384.f; //B coefs
		b[i*2+1] = biquad[i]*gain2*16384.f; //lo and hi, respectively
	}
	for(i=2; i<4; i++){
		b[i*2+0] = biquad[i]*16384.f;
		b[i*2+1] = biquad[i]*16384.f;
	}
	//clamp to acceptable values.
	printf("coefs!\n");
	for(i=0; i<8; i++){
		b[i] = b[i] < -32768.f ? -32768.f : b[i];
		b[i] = b[i] > 32767.f ? 32767.f : b[i];
		//printf("%d %f\n", i, b[i]);
	}
	if(biquadNum == 0){
		if(g_c[chan]->m_gain < 0){
			b[0] *= -1; b[2] *= -1; //change the sign of the first filter.
		}
		if(g_c[chan+32]->m_gain < 0){
			b[1] *= -1; b[3] *= -1;
		}
	}
	//now form the 32 bit uints to be written.
	unsigned int* ptr = g_sendbuf[tid];
	ptr += (g_sendW[tid] % g_sendL[tid]) * 8; //8 because we send 8 32-bit ints /pkt.
	
	int kchan = chan&127;
	for(i=0; i<4; i++){
		unsigned int p = 0;
		if(kchan >= 64) p += 1; //chs 64-127 pocessed following 0-63.
		ptr[i*2+0] = htonl(echo(g_echo[tid], A1 + ((kchan & 31)*A1_STRIDE +
			 A1_IIRSTARTA + p*(A1_IIRSTARTB-A1_IIRSTARTA) + biquadNum*4 + i)*4));
		j = (int)(b[i*2+0]);
		k = (int)(b[i*2+1]);
		u = (unsigned int)((j&0xffff) | ((k&0xffff)<<16));
		s = (short)(u & 0xffff);
		printf("%d ", s);
		s = (short)((u>>16) & 0xffff);
		printf("%d\n", s);
		ptr[i*2+1] = htonl(u);
	}
	saveMessage("biquad %d ch %d: %d %d %d %d",
				biquadNum, chan,(int)b[0],(int)b[2],(int)b[4],(int)b[6]);
	saveMessage("biquad %d ch %d: %d %d %d %d",
				biquadNum, chan+32,(int)b[1],(int)b[3],(int)b[5],(int)b[7]);
	g_sendW[tid]++;
	g_echo[tid]++;
}
void resetBiquads(int chan){
	//reset all coefs in two channels.
	setBiquad(chan, &(lowpass_coefs[0]), 0);
	setBiquad(chan, &(highpass_coefs[0]), 1);
	setBiquad(chan, &(lowpass_coefs[4]), 2);
	setBiquad(chan, &(highpass_coefs[4]), 3);
}
void setFilter2(int chan){
	//reset all coefs in two channels.
	setBiquad(chan, &(lowpass_coefs2[0]), 0);
	setBiquad(chan, &(highpass_coefs2[0]), 1);
	setBiquad(chan, &(lowpass_coefs2[4]), 2);
	setBiquad(chan, &(highpass_coefs2[4]), 3);
}
void setFlat(int chan){
	//lets you look at the raw ADC samples.
	chan = chan & (0xff ^ 32); //map to the lower channels.
	float biquad[] = {0.0, 1.0, 0.0, 0.0}; //NOTE B assumed to be symmetric.
		//hence you need to set b[1] not b[0] (and b[2])
	setBiquad(chan, biquad, 0);
	setBiquad(chan, biquad, 1);
	setBiquad(chan, biquad, 2);
	setBiquad(chan, biquad, 3);
	saveMessage("flat %d", chan);
	saveMessage("flat %d", chan+32);
}

void setAll(){
	//update the channels.
	setChans();
	//the filters.. also updates the gains.
	for(int t = 0; t<NSCALE; t++){
			int sh = 128*t; //128 channel offset per bridge
			
			for(int i=0; i<32; i++){
				resetBiquads(sh+i);
				resetBiquads(sh+i+64);
			}
			for(int i=0; i<16; i++){
				//can transmit 8 AGCs at a time.
				//will set i, i+32, i+16. i+48, i+64, i+96, i+80, i+112.
				setAGC(sh+i, sh+i+16, sh+i+64, sh+i+80);
			}
			for(int i=0; i<32; i++){
				setAperture(sh+i);
			}
			//finally, the templates.
			for(int i=0; i<32; i++){
				setTemplate(sh+i,0);
				setTemplate(sh+i,1);
			}
	}
}