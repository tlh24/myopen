#include <stdlib.h>
#include <stdio.h>
#include "spikebuffer.h"

SpikeBuffer::SpikeBuffer()
{
	m_w = 0;
	m_r = 0;
}

SpikeBuffer::~SpikeBuffer()
{
}

bool SpikeBuffer::addSample(unsigned int _tk, float _wf)
{
	long w = m_w; // atomic;

	m_tk[w & SPIKE_MASK] = _tk;
	m_wf[w & SPIKE_MASK] = _wf;
	w++;

	m_w = w; // atomic

	return true;
}

bool SpikeBuffer::getSpike(double *tk, double *wf, int n, float threshold, int alignment)
{

	if (alignment >= n) {
		fprintf(stderr,"ERROR: (Spikebuffer) wf alignment greater than wf length!\n");
		return false;
	}

	long w = m_w;   // atomic

	bool res = false;

	// as long as there is space in the buffer for a whole wf
	while (m_r < (w-n)) {

		long x = m_r + alignment;

		float a = m_wf[(x  ) & SPIKE_MASK];
		float b = m_wf[(x+1) & SPIKE_MASK];

		if ((threshold > 0 && (a <= threshold && b > threshold))
		    || (threshold < 0 && (a >= threshold && b < threshold))) {

			for (int i=0; i<n; i++) {
				tk[i] = (double)m_tk[(m_r+i) & SPIKE_MASK];
				wf[i] = (double)m_wf[(m_r+i) & SPIKE_MASK];
			}
			m_r++;	// atomic
			res = true;
			break;
		}
		m_r++;	// atomic
	}
	return res;
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