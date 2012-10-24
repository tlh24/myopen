#ifndef __HEADSTAGE_H__
#define __HEADSTAGE_H__

#include "gtkglobals.h"

//globals.  could make a class for these but .. eh
extern unsigned int*	g_sendbuf[NSCALE];
extern i64		g_sendW[NSCALE]; //where to write to (in 32-byte increments)
extern i64 		g_sendR[NSCALE]; //where to read from
extern i64		g_sendL[NSCALE]; //the length of the buffer (in 32-byte packets)
extern char		g_messages[1024][128]; //save these, plaintext, in the file.
extern i64		g_messW[NSCALE];
extern i64		g_messR[NSCALE];

extern unsigned int g_echo[NSCALE];
extern unsigned int g_headecho[NSCALE];
extern unsigned int g_oldheadecho[NSCALE];

void saveMessage(const char *fmt, ...);
void updateGain(int chan);
void setOsc(int chan);
void setChans();
void setAGC(int ch1, int ch2, int ch3, int ch4);
void enableAGC(int* chs);
void setAperture(int ch);
void setLMS(bool on);
void setTemplate(int ch, int aB);
void setBiquad(int chan, float* biquad, int biquadNum);
void resetBiquads(int chan);
void setFilter2(int chan);
void setFlat(int chan);
void setAll();
#endif
