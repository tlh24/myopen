#ifndef __PULSE_QUEUE_H__
#define	__PULSE_QUEUE_H__

#include <limits>
#include <vector>
#include <queue>
#include "util.h"

class PulseQueue
{
protected:

	int n; 						// number of stim channels
	double pulseDT; 			// (seconds)
	int numSimultaneous;		// number of channels to allow on at once
	std::vector<float> f;		// stim pulse rate for each chan (Hz)

	std::queue<int> pulseQ;		// pulse queue (holds channel number)
	long double t0;
	long double tlast;
	std::vector<float> qlast;	// holds phase

	const long double PI = 3.14159265;
	const double inf = std::numeric_limits<double>::infinity();

	long double gettime(); // in seconds!

public:
	PulseQueue(int _n);
	~PulseQueue();

	bool setPulseRate(int ch, float _f);
	void setPulseDT(double dt);
	void setNumSimultaneous(int _n);

	int step();

};

#endif