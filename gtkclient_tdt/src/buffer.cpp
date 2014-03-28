#include <stdlib.h>
#include <stdio.h>
#include "buffer.h"

Buffer::Buffer(size_t _n)
{
	n = _n;
	mask = n-1;
	m_data = (float *)malloc(n*sizeof(float));
	m_w = 0;
	m_r = 0;
}

Buffer::~Buffer()
{
	if (m_data)
		free(m_data);
	m_w = 0;
	m_r = 0;
}

bool Buffer::addSample(float _sample)
{
	long w = m_w; // atomic;

	m_data[w & mask] = _sample;
	w++;

	m_w = w; // atomic

	return true;
}

bool Buffer::getSample(float *sample)
{
	long w = m_w;   // atomic
	if (m_r < w) {
		*sample = m_data[m_r & mask];
		m_r++;	// atomic
		return true;
	}
	return false;
}

float Buffer::capacity()
{
	return (float)1.f - (m_w-m_r)/n;
}

long Buffer::bytes()
{
	return m_r * sizeof(char);
}


// for debugging

long Buffer::rp()
{
	return m_r;
}

long Buffer::wp()
{
	return m_w;
}