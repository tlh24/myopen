#ifndef __HEADSTAGE_H__
#define __HEADSTAGE_H__

#include "gtkclient.h"
#include "channel.h"
//globals.  could make a class for these but .. David will do it
//yeah let's make a class shall we

class Headstage{

public:
	Headstage();
	Headstage(int*, const std::vector<Channel*>&);	

	unsigned int*	sendbuf[NSCALE];
	i64		sendW[NSCALE]; //where to write to (in 32-byte increments)
	i64 		sendR[NSCALE]; //where to read from
	i64		sendL[NSCALE]; //the length of the buffer (in 32-byte packets)
	char		messages[1024][128]; //save these, plaintext, in the file.
	i64		messW[NSCALE];
	i64		messR[NSCALE];

	unsigned int echo[NSCALE] = {0};
	unsigned int headecho[NSCALE] = {0};
	unsigned int oldheadecho[NSCALE] = {100};
	unsigned int echoMask = 0x0fffffff; //used to clear address bits
	  // 0xffffffff puts gtkclient in compatability mode. (before svn v 605)
	  // 0x0fffffff puts gtkclient in echo mode. (after svn v. 605)
	  
	std::vector<Channel*> ptr_c;
	int*	 ptr_channel;

	void saveMessage(const char *fmt, ...);
	void updateGain(int chan);
	void setOsc(int chan);
	void setChans(int signalChain);
	void setAGC(int ch1, int ch2, int ch3, int ch4);
	void enableAGC(int* chs);
	void setAperture(int ch);
	void setLMS(bool on);
	void setTemplate(int ch, int aB);
	void setBiquad(int chan, float* biquad, int biquadNum);
	void resetBiquads(int chan);
	void setFilter2(int chan);
	void setFlat(int chan);
	void setAll(int signalChain);
	
	unsigned int echoHeadstage(unsigned int echoID, unsigned int address);
	
private:
  /** 500 - 6.7kHz **/
  float m_lowpass_coefs[8] ={ 0.240833,0.481711,0.323083,-0.456505,
					  0.240833,0.481619,0.233390,-0.052153};
  float m_highpass_coefs[8] ={0.936405,-1.872810,1.916303,-0.926028,
					  0.936405,-1.872810,1.821050,-0.830291};
  /** 150 - 10kHz **/
  float m_lowpass_coefs2[8] = {0.453447,0.906993,-0.632535,-0.485595,
	  0.453447,0.906796,-0.463824,-0.089354};
  float m_highpass_coefs2[8] = {0.980489,-1.960979,1.976285,-0.977184,
	  0.980489,-1.960979,1.944907,-0.945792};
	
};
#endif
