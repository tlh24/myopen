#ifndef __VBO_RASTER_H__
#define __VBO_RASTER_H__

#include <atomic>
#include "cgVertexShader.h"

// for historical reasons (lol) this isn't a subclass of Vbo()
// (which is just a Vbo for drawing spike waveforms)
// This is a Vbo class for drawing event times (spike ticks, pulses, etc)

class VboRaster
{
protected:
	float 				*m_f; // local floating point memory
	std::atomic<u32> 	m_w; // write pointer
	std::atomic<u32> 	m_r; // read pointer (for copying to graphics memory).
	u32 				m_nchan; // number of channels
	u32 				m_nsamp; // number of samples in buffer
	GLuint				m_vbo;	// vertex buffer object
	float 				m_red;
	float 				m_green;
	float 				m_blue;
	float 				m_alpha;
public:
	VboRaster(u32 nchan, u32 nsamp);
	~VboRaster();
	void configure();
	void setColor(float r, float g, float b, float a);
	void copy();
	void addEvent(float the_time, float the_chan);
	void draw();
	u32 size();
};
#endif