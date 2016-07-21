#ifndef __VBO_TIMESERIES_H__
#define __VBO_TIMESERIES_H__

#include <atomic>
#include "cgVertexShader.h"

// for historical reasons (lol) this isn't a subclass of Vbo()
// (which is just a Vbo for drawing spike waveforms)
// This is a Vbo class for drawing timeseries data (LFP, EEG, etc)

class VboTimeseries
{
protected:
	float 				*m_f; // local floating point memory
	std::atomic<u32> 	m_w; // write pointer
	std::atomic<u32> 	m_r; // read pointer (for copying to graphics memory).
	u32 				m_n; // number of samples in buffer
	GLuint				m_vbo;	// vertex buffer object
	CGprofile   		m_pro;
	cgVertexShader 		*m_vs;	// vertex shader
public:
	u32 				m_nplot; // number of samples to plot
	VboTimeseries(u32 n);
	~VboTimeseries();
	void configure();
	void setCGProfile(CGprofile pro);
	void setVertexShader(cgVertexShader *vs);
	void setNPlot(u32 _nplot);
	void copy();
	void addData(float *f, u32 ns);
	void draw(int drawmode, float nchan, float yoffset);
};
#endif