#ifndef __ARTIFACT_SUBTRACT_H__
#define	__ARTIFACT_SUBTRACT_H__

#include <queue>
#include <unordered_map>
#include "util.h"

// this class represents a single recording channel
// and all the different stim chans and currents that could apply to it
// the data structures are keyed off of the current amplitude in uA (u16)

class ArtifactSubtract
{
protected:
	int nsc;	// num stim channels (always 16)
	int buflen;	// samples
	int delay; // delay in samples
	float alpha; // averaging parameter
	std::unordered_map<u16, float *> *sa; 	// SA buffers
	std::unordered_map<u16, int> *hot_ptr; 	// pointer into SA buffer
	std::queue<std::pair<u16,i64>> *q; 		// a queue of ticks
public:
	ArtifactSubtract(int _nsc, int _buflen, int _delay, float _alpha);
	~ArtifactSubtract();
	void processStim(i64 tk, u16 chan, u16 current);
	float processSample(i64 tk, float f);
};

#endif