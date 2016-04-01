#include <stdlib.h>
#include <stdio.h>
#include <math.h>
#include "spikebuffer.h"

NEO::NEO()
{
	x_prev  = 0;
	x_prev2 = 0;
	m_mean  = 0;
}

NEO::~NEO()
{
}

float NEO::eval(float x)
{
	float y = x_prev * x_prev - x * x_prev2;
	x_prev2 = x_prev;
	x_prev = x;
	// exponential running average
	m_mean *= 0.999997;
	m_mean += 0.000003 * y;
	return y;
}
float NEO::mean()
{
	return m_mean;
}

SpikeBuffer::SpikeBuffer()
{
	m_w = 0;
	m_r = 0;
}

SpikeBuffer::~SpikeBuffer()
{
}

bool SpikeBuffer::addSample(u32 _tk, float _wf)
{
	long w = m_w; // atomic;

	m_tk[w & SPIKE_MASK] = _tk;
	m_wf[w & SPIKE_MASK] = _wf;
	m_neo[w & SPIKE_MASK] = neof.eval(_wf);
	w++;

	m_w = w; // atomic

	return true;
}
bool SpikeBuffer::getSpike(u32 *tk, float *wf, float *neo, int n, float threshold, int alignment, int pre_emphasis)
{

	if (alignment >= n) {
		fprintf(stderr,"ERROR: (Spikebuffer) wf alignment greater than wf length!\n");
		return false;
	}

	float a, b, thr;

	long w = m_w;   // atomic

	// as long as there is space in the buffer for a whole wf
	while (m_r < (w-n)) {

		long x = m_r  + alignment;

		switch (pre_emphasis) {
		case 2:
			a = m_neo[(x  ) & SPIKE_MASK];
			b = m_neo[(x+1) & SPIKE_MASK];
			thr = threshold * neof.mean();
			break;
		case 1:
			a = fabs(m_wf[(x  ) & SPIKE_MASK]);
			b = fabs(m_wf[(x+1) & SPIKE_MASK]);
			thr = fabs(threshold);
			break;
		case 0:
		default:
			a = m_wf[(x  ) & SPIKE_MASK];
			b = m_wf[(x+1) & SPIKE_MASK];
			thr = threshold;
		}

		if ((thr > 0 && (a <= thr && b > thr))
		    || (thr < 0 && (a >= thr && b < thr))) {

			for (int i=0; i<n; i++) {
				tk[i] 	= m_tk[(m_r+i) & SPIKE_MASK];
				wf[i] 	= m_wf[(m_r+i) & SPIKE_MASK];
				neo[i] 	= m_neo[(m_r+i) & SPIKE_MASK];
			}
			m_r+=n; // atomic
			return true;
		}
		m_r++; // atomic
	}
	return false;
}
float SpikeBuffer::capacity()
{
	return (float)1.f - (m_w-m_r)/SPIKE_BUF_SIZE;
}

long SpikeBuffer::bytes()
{
	return m_r * sizeof(char);
}


// for debugging

long SpikeBuffer::rp()
{
	return m_r;
}

long SpikeBuffer::wp()
{
	return m_w;
}
