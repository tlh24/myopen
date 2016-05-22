#include <cmath>
#include <algorithm>
#include <sys/time.h>	// for CLOCK_MONOTONIC_RAW
#include <time.h>		// for timespec, clock_gettime
#include "random.h"
#include "pulse_queue.h"
// pulse queue


PulseQueue::PulseQueue(int _n)
{
	n = _n;
	for (int i=0; i<n; i++) {
		f.push_back(0.01); // Hz
		qlast.push_back(uniform()*2*PI); // random phase
	}
	pulseDT = 0.001;	// 1 msec
	numSimultaneous = 1;
	t0 = gettime();
	tlast = -inf;
}

PulseQueue::~PulseQueue()
{

}

// ch is 1-indexed
// returns false on error
bool PulseQueue::setPulseRate(int ch, float _f)
{
	if (ch < 1 || ch > n) {
		return false;
	}
	f[ch-1] = _f;
	return true;
}

void PulseQueue::setPulseDT(double dt)
{
	pulseDT = dt > 0 ? dt : 0;
}

void PulseQueue::setNumSimultaneous(int _n)
{
	numSimultaneous = _n > n ? n : _n;
}

std::vector<int> PulseQueue::step()
{
	// advance clock
	auto t = gettime();
	auto dt = t - t0;
	t0 = t;

	// what pulses are happening in this interval?
	std::queue<int> qtmp;
	for (int i=0; i<n; i++) {
		float qnew = fmod(qlast[i] + dt*f[i]*2*PI, 2*PI);
		if (qnew < qlast[i]) { // ie gone over 2pi boundary
			qtmp.push(i);
		}

		qlast[i] = qnew;
	}

	// potentially sort qnew here

	// append to the pulse queue
	while (!qtmp.empty()) {
		pulseQ.push(qtmp.front());
		qtmp.pop();
	}

	std::vector<int> pulses;

	// do i need to pulse and can i?
	if (pulseQ.size() > 0 && (t-tlast) > pulseDT) {
		for (int i=0; i<std::min((int)pulseQ.size(), numSimultaneous); i++) {
			pulses.push_back(pulseQ.front());
			pulseQ.pop();
		}
		tlast = t;
	}
	return pulses;
}

long double PulseQueue::gettime()
{
	timespec pt ;
	clock_gettime(CLOCK_MONOTONIC_RAW, &pt);
	long double ret = (long double)(pt.tv_sec) ;
	ret += (long double)(pt.tv_nsec) / 1e9 ;
	return ret;
}