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
	int maxcurrent; // num currents allowed
	int buflen;	// samples per buffer
	float alpha; // averaging parameter

	float *sa;
	long  *of; // read offset, signed (-1 is a sentinal)

public:
	ArtifactSubtract(int _nsc, int _nrc, int _maxcurrent,
	                 int _buflen, float _alpha);
	~ArtifactSubtract();
	void filter(float *f, u16 *sc, u16 *current, int ns);
};

#endif
