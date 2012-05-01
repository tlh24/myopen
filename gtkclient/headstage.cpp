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
#include "glext.h"
#include "glInfo.h"

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
#include "sock.h"
#include "headstage.h"
#include "cgVertexShader.h"
#include "vbo.h"
#include "channel.h"
#include "../firmware_stage9/memory.h"

extern int g_channel[4]; //selected in the UI.
extern int g_signalChain;
extern Channel*		g_c[128];

unsigned int*	g_sendbuf;
i64		g_sendW; //where to write to (in 32-byte increments)
i64 		g_sendR; //where to read from
i64		g_sendL; //the length of the buffer (in 32-byte packets)
char		g_messages[1024][128]; //save these, plaintext, in the file.
i64		g_messW;
i64		g_messR;

unsigned int g_echo = 0;
unsigned int g_headecho = 0;
unsigned int g_oldheadecho = 100;
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

unsigned int echo(unsigned int address){
	address &= g_echoMask;
	address |= (g_echo & 0xf) << 28; //top nibble is f normally.
	return address;
}
void saveMessage(const char *fmt, ...){
	va_list ap;     /* our argument pointer */
    if (fmt == NULL)    /* if there is no string to draw do nothing */
        return;
    va_start(ap, fmt);  //make ap point to first unnamed arg
	//need to add in 'echo' in alphabet encoding - when the headstage has the same sync,
	//we know that it got the command preceding this.
	int e = g_echo % 16;
	g_messages[g_messW % 1024][0] = 'A'+e;
	g_messages[g_messW % 1024][1] = ' ';
	vsnprintf(g_messages[g_messW % 1024] + 2, 126, fmt, ap);
	va_end(ap);
	g_messW++;
}
unsigned int calcA1Address(unsigned int ch, unsigned int offset){
	// calcA1Address for local usage.
	// ch 0-63 operated before chs 64-127.
	// ch 32-63 worked on in upper word, parallel to chs 0-31.
	// addressing somewhat complicated by step before and channel afterward --
	// A1_PITCH != 2* A1_STRIDE.
	// applies htonl function & echo.
	unsigned int a, p;
	ch &= 127; //limit.
	ch &= (0xff ^ 32); //map to 32-63 to lower channels.
	p = ch >= 64 ? 1 : 0; //for moving to 64-127.
	a = htonl(echo(A1 +
		(A1_STEP + offset + A1_PITCH*(ch & 31) + p*A1_STRIDE )*4));
	return a;
}
void setPrefilter(int chan, float* b){
	//sets the prefilter biquad -- 5 coefs, 2 packets.
	int j, x;
	unsigned int u;
	chan &= (0xff ^ 32);
	x = 0;
	for(int p=0; p<2; p++){
		unsigned int* ptr = g_sendbuf;
		ptr += (g_sendW % g_sendL) * 8;
		for(int i=0; i<4; i++){
			ptr[i*2+0] = calcA1Address(chan, x);
			j = (int)(b[x] * 16384.f);
			u = (unsigned int)((j&0xffff) | ((j&0xffff)<<16));
			ptr[i*2+1] = htonl(u);
			//just loop over the coefs between packets -- send the first 3 twice.
			x++;
			x = x % 5;
		}
		g_sendW++;
		g_echo++;
	}
}
void setPrefilter500_5k(int chan){
	// ellip(1, 6, 40, [500/15e3, 5/15])
	float b[5];
	b[0] = 1.f;
	b[1] = 0.f;
	b[2] = -1.f;
	b[3] = 1.4536;
	b[4] = -0.5443;
	setPrefilter(chan, b);
}
void setPrefilter150_10k(int chan){
	//ellip(1, 6, 40, [150/15e3, 7.5/15])
	float b[5];
	b[0] = 1.f;
	b[1] = 0.f;
	b[2] = -1.f;
	b[3] = 1.2414f;
	b[4] = -0.2810f;
	setPrefilter(chan, b);
}
void setPrefilter500(int chan){
	//butter(2, 500/15e3, 'high')
	float b[5];
	b[0] = 0.9286f;
	b[1] = -1.8572f;
	b[2] = 0.9286f;
	b[3] = 1.8521f;
	b[4] = -0.8623f;
	setPrefilter(chan, b);
}
void setPrefilterOsc(int chan){
	//turn two channels e.g. 0 and 32 into oscillators.
	float b[5];
	b[0] = 0.f;
	b[1] = 0.f; //add a little energy?
	b[2] = 0.f;
	b[3] = (32768.f - 45)/16384.f; //10 -> should be about 250Hz @ fs = 62.5khz
	b[4] = -1.f;
	setPrefilter(chan, b);
}
void setChans(){
	int i;
	unsigned int* ptr = g_sendbuf;
	ptr += (g_sendW % g_sendL) * 8; //8 because we send 8 32-bit ints /pkt.
	for(i=0; i<4;i++){
		ptr[i*2+0] = htonl(echo((FP_BASE - FP_TXCHAN0 + 4*i)));
		//ok, for the taps: have 4 offsets.
		int c = g_channel[i];
		int o1 = (c & 31) * W1_STRIDE * 2 * 4; //which MUX line.
		int o2 = ((c & 64)>>6) * W1_STRIDE * 4; // primary/secondary SPORT
		int o3 = ((c & 32)>>5) * 2; // primary/secondary RX chan.
		/* 4th offset is to get to the correct written delay.
		 * please see memory.h for structure of taps.
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
	g_sendW++;
	g_echo++;
}

void setAGC(int ch1, int ch2, int ch3, int ch4){
	//sets AGC *target* for (up to) four (8 with +32) channels.
	unsigned int* ptr = g_sendbuf;
	ptr += (g_sendW % g_sendL) * 8; //8 because we send 8 32-bit ints /pkt.
	int mask = 127 ^ 32;
	int chs[4]; chs[0] = ch1&mask; chs[1]= ch2&mask;
		chs[2] = ch3&mask; chs[3] = ch4&mask;
	for(int i=0; i<4; i++){
		ptr[i*2+0] = calcA1Address(chs[i], A1_AGCS);
		int j = (int)(sqrt(32768 * g_c[chs[i]]->m_agc));
		int k = (int)(sqrt(32768 * g_c[chs[i]+32]->m_agc));
		unsigned int u = (unsigned int)((j&0xffff) | ((k&0xffff)<<16));
		ptr[i*2+1] = htonl(u);
	}
	g_sendW++;
	saveMessage("agc %d %d %d %d : %d %d %d %d ", ch1,ch2,ch3,ch4,
		(int)g_c[ch1]->m_agc,(int)g_c[ch2]->m_agc,(int)g_c[ch3]->m_agc,(int)g_c[ch4]->m_agc);
	g_echo++;
}
void enableAGC(int* chs){
	// each channel has it's own enable and disable.
	// this routine accepts 4 chs -- and sets the complement within the bank at the same time.
	// 8 channels altogether -- so for all, need to call 16 times.
	unsigned int* ptr = g_sendbuf;
	ptr += (g_sendW % g_sendL) * 8; //8 because we send 8 32-bit ints /pkt.
	for(int i=0; i<4; i++){
		int c = chs[i] & (0xff ^ 32); //map down.
		ptr[i*2+0] = calcA1Address(c, A1_AGCS+1);
		// 1 is the offset to 16384 / mu. if mu=0, gain does not change.
		int j = g_c[c]->m_agcEn > 0 ? 1 : 0;
		int k = g_c[c + 32]->m_agcEn > 0 ? 1 : 0;
		unsigned int u = (unsigned int)((j&0xffff) | ((k&0xffff)<<16));
		ptr[i*2+1] = htonl(u);
		saveMessage("agc_en %d : %d", c, g_c[c]->m_agcEn);
		saveMessage("agc_en %d : %d", c+32, g_c[c+32]->m_agcEn);
	}
	g_sendW++;
	g_echo++;
}
void enableLMS(int* chs){
	// each channel has it's own enable and disable.
	// this routine accepts 4 chs -- and sets the complement within the bank at the same time.
	// 8 channels altogether -- so for all, need to call 16 times.
	unsigned int* ptr = g_sendbuf;
	ptr += (g_sendW % g_sendL) * 8; //8 because we send 8 32-bit ints /pkt.
	for(int i=0; i<4; i++){
		int c = chs[i] & (0xff ^ 32); //map down.
		ptr[i*2+0] = calcA1Address(c, A1_LMSA+15);
		// 15 is the offset to the weight decay.
		int j = g_c[c]->m_lmsEn > 0 ? 0x7fff : 0;
		int k = g_c[c + 32]->m_lmsEn > 0 ? 0x7fff : 0;
		unsigned int u = (unsigned int)((j&0xffff) | ((k&0xffff)<<16));
		ptr[i*2+1] = htonl(u);
		saveMessage("lms_en %d : %d", c, g_c[c]->m_lmsEn);
		saveMessage("lms_en %d : %d", c+32, g_c[c+32]->m_lmsEn);
	}
	g_sendW++;
	g_echo++;
}
void setAperture(int ch){
	// threshold for the matched filter (both units, ch, ch+32, ch+64, ch+96)
	ch &= 63;
	unsigned int* ptr = g_sendbuf;
	ptr += (g_sendW % g_sendL) * 8;
	int offset = 0;
	for(int i=0; i<4; i++){
		if(i & 1)
			offset = A1_UNITA;
		else
			offset = A1_UNITB;
		unsigned int cch = ch + (i/2)*64;
		ptr[i*2+0] = calcA1Address(cch, offset);

		unsigned int u = (g_c[cch]->getAperture(i&1) & 0xffff) |
						((g_c[cch + 32]->getAperture(i&1) & 0xffff)<<16);
		ptr[i*2+1] = htonl(u);

		saveMessage("aperture u%d %d %d, %d %d", i&1,
				cch, g_c[cch]->getAperture(i&1),
				cch+32, g_c[cch+32]->getAperture(i&1));
	}
	g_sendW++;
	g_echo++;
}

void setMF(int chan){
	// sets both the filter coeficients and thresholds for both units --
	// this in 3 outgoing packets (12 32 bit ints, 24 with address).
	// also sets chan+32 (of course)
	int j, k;
	unsigned int u;
	chan &= (0xff ^ 32); //map to lower channels, 0-31, 64-95.
	unsigned int* ptr = g_sendbuf;
	ptr += (g_sendW % g_sendL) * 8; //8 because we send 8 32-bit ints /pkt.
	for(int i=0; i<4; i++){
		ptr[i*2+0] = calcA1Address(chan, A1_IIRA + i);
		j = (int)((g_c[chan]->getMF(0))[i] * 16384.f);
		k = (int)((g_c[chan+32]->getMF(0))[i] * 16384.f);
		u = (unsigned int)((j&0xffff) | ((k&0xffff)<<16));
		ptr[i*2+1] = htonl(u);
	}
	g_sendW++;
	g_echo++;

	// second packet, 1 unit 0 coef, unit 0 aperture, 2 unit 1 coefs.
	ptr = g_sendbuf;
	ptr += (g_sendW % g_sendL) * 8;

	ptr[0] = calcA1Address(chan, A1_IIRA + 4);
	j = (int)((g_c[chan]->getMF(0))[4] * 16384.f);
	k = (int)((g_c[chan+32]->getMF(0))[4] * 16384.f);
	u = (unsigned int)((j&0xffff) | ((k&0xffff)<<16));
	ptr[1] = htonl(u);

	ptr[2] = calcA1Address(chan, A1_UNITA);
	j = (int)((g_c[chan]->getAperture(0)) * 16384.f);
	k = (int)((g_c[chan+32]->getAperture(0)) * 16384.f);
	u = (unsigned int)((j&0xffff) | ((k&0xffff)<<16));
	ptr[3] = htonl(u);

	for(int i=0; i<2; i++){
		ptr[i*2+4] = calcA1Address(chan, A1_IIRB + i);
		j = (int)((g_c[chan]->getMF(1))[i] * 16384.f);
		k = (int)((g_c[chan+32]->getMF(1))[i] * 16384.f);
		u = (unsigned int)((j&0xffff) | ((k&0xffff)<<16));
		ptr[i*2+5] = htonl(u);
	}
	g_sendW++;
	g_echo++;

	//third packet, 3 unit 1 coefs, unit 1 aperture.
	ptr = g_sendbuf;
	ptr += (g_sendW % g_sendL) * 8;
	for(int i=0; i<3; i++){
		ptr[i*2+0] = calcA1Address(chan, A1_IIRB + i);
		j = (int)((g_c[chan]->getMF(1))[i+2] * 16384.f);
		k = (int)((g_c[chan+32]->getMF(1))[i+2] * 16384.f);
		u = (unsigned int)((j&0xffff) | ((k&0xffff)<<16));
		ptr[i*2+1] = htonl(u);
	}
	ptr[6] = calcA1Address(chan, A1_UNITB);
	j = (int)((g_c[chan]->getAperture(1)) * 16384.f);
	k = (int)((g_c[chan+32]->getAperture(1)) * 16384.f);
	u = (unsigned int)((j&0xffff) | ((k&0xffff)<<16));
	ptr[7] = htonl(u);

	g_sendW++;
	g_echo++;
}

void setAll(){
	//update the channels.
	setChans();
	//the filters.. also updates the gains.
	for(int i=0; i<32; i++){
		setPrefilter500_5k(i);
		setPrefilter500_5k(i+64);
	}
	for(int i=0; i<16; i++){
		//can transmit 8 AGCs at a time.
		//will set i, i+32, i+16. i+48, i+64, i+96, i+80, i+112.
		setAGC(i, i+16, i+64, i+80);
	}
	for(int i=0; i<32; i++){
		setAperture(i);
	}
}