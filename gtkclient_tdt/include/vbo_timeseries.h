#ifndef __VBO_TIMESERIES_H__
#define __VBO_TIMESERIES_H__

#include "cgVertexShader.h"

// for historical reasons (lol) this isn't a subclass of Vbo()
// (which is just a Vbo for drawing spike waveforms)
// This is a Vbo class for drawing timeseries data (LFP, EEG, etc)

class VboTimeseries
{
public:
	float  		   *m_f; // local floating point memory
	int				m_w; // write pointer
	int				m_r; // read pointer (for copying to graphics memory).
	int 			m_n; // number of samples in buffer
	GLuint			m_vbo;	// vertex buffer object
	cgVertexShader *m_vs;	// vertex shader

	VboTimeseries(int n);
	~VboTimeseries();
};
#endif