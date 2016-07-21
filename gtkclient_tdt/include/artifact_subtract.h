#ifndef __ARTIFACT_SUBTRACT_H__
#define	__ARTIFACT_SUBTRACT_H__

#include <queue>
#include <vector>
#include "util.h"

// this class represents a single recording channel
// and all the different stim buffers that could apply to it
// for the current implementation, nsc is always 16

class ArtifactSubtract
{
protected:
	int nsc;	// number of stim chans
	int delay;	// delay in samples
	float alpha; // averaging parameter
	int buflen;	// samples
	float *sa;	// SA buffer
	std::queue<i64> *q;	// holds a queue of ticks
	int *hot_ptr;	// pointer in buffer of where stim is happening
public:

	ArtifactSubtract(int _buflen);
	~ArtifactSubtract();
	void setDelay(int _delay);
	void processStim(i64 tk, u16 ev);
	float processSample(i64 tk, float f);
};

#endif