#include <atomic>

#ifndef __SPIKEBUFFER_H__
#define	__SPIKEBUFFER_H__

#define SPIKE_BUF_SIZE (1024) // BYTES, MUST BE POWER OF 2
#define SPIKE_MASK (SPIKE_BUF_SIZE-1)

using namespace std;

class SpikeBuffer
{
protected:
	float m_wf[SPIKE_BUF_SIZE];	 		// the spike buffer
	unsigned int m_tk[SPIKE_BUF_SIZE];	// the tick buffer
	std::atomic<long> m_w;       		// atomic write pointer
	std::atomic<long> m_r;       		// atomic read pointer

public:
	SpikeBuffer();

	virtual ~SpikeBuffer();

	bool addSample(unsigned int _tk, float _wf);

	bool getSpike(double *tk, double *wf, int n, float threshold, int alignment);

	// returns buffer capcity as a fraction. 1 means filled. 0 means empty.
	float capacity();

	// returns the number of bytes written
	long bytes();

	const char *name() {
		return "spike buffer v1";
	};

protected:

};
#endif
