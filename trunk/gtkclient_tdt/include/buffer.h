#include <atomic>

#ifndef __BUFFER_H__
#define	__BUFFER_H__

using namespace std;

class Buffer
{
protected:
	size_t n;						// MUST BE POWER OF TWO
	size_t mask;					// n-1
	float *m_data; 				// the buffer
	std::atomic<long> m_w;      	// atomic write pointer
	std::atomic<long> m_r;       	// atomic read pointer

public:
	Buffer(size_t _n);	// MUST BE POWER OF TWO

	virtual ~Buffer();

	bool addSample(float _sample);

	bool getSample(float *sample);

	// returns buffer capcity as a fraction. 1 means filled. 0 means empty.
	float capacity();

	// returns the number of bytes written
	long bytes();

	const char *name() {
		return "buffer v1";
	};

	long rp();
	long wp();

protected:

};
#endif