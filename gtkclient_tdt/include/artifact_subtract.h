#ifndef __ARTIFACT_SUBTRACT_H__
#define	__ARTIFACT_SUBTRACT_H__

#include <queue>
#include <unordered_map>
#include "util.h"

// This class represents the effects of N stimulation channels
// (and their 2^N combinations) with K currents on M recording channels.
//
// The data structures are keyed off of the current amplitude in uA (u16)

class ArtifactSubtract
{
protected:
	int nsc;	// num stim channels
	int nrc; 	// num rec channels
	int buflen;	// samples per buffer
	int delay; // delay in samples
	float alpha; // averaging parameter
	std::unordered_map<u16, float *> *sa; 	// SA buffers
	std::unordered_map<u16, int> *offset; 	// offset into SA buffer
	std::queue<std::pair<u16,i64>> *q; 		// a queue of ticks
public:
	ArtifactSubtract(int _nsc, int _nrc, int _buflen, int _delay, float _alpha);
	~ArtifactSubtract();
	void processStim(u16 sc, u16 current, i64 tk);
	float processSample(size_t rc, i64 tk, float f);
};

#endif