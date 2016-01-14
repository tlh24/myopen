#define GL_GLEXT_PROTOTYPES

#include <math.h>
#include <GL/glut.h>    // Header File For The GLUT Library
#include "util.h"
#include "vbo_raster.h"

VboRaster::VboRaster(u32 nchan, u32 nsamp)
{
	m_nchan = nchan;
	m_nsamp = nsamp;
	m_f = (float *)malloc(m_nchan*m_nsamp*2*sizeof(float)); // TODO check for malloc failure
	for (u32 i=0; i<m_nchan; i++) {
		for (u32 j=0; j< m_nsamp; j++) {
			m_f[(i*m_nsamp+j)*2+0] = (float)i/m_nchan+(float)j/m_nsamp;
			m_f[(i*m_nsamp+j)*2+1] = (float)i;
		}
	}
	m_w = 0;
	m_r = 0;
	m_vbo = 0; // not configured yet
	// colord defaults to white
	m_red = 0.5;
	m_green = 0.5;
	m_blue = 0.5;
	m_alpha = 0.75;
}
VboRaster::~VboRaster()
{
	if (m_f)
		free(m_f);
	if (m_vbo)
		glDeleteBuffersARB(1, &m_vbo);
}
void VboRaster::configure()
{
	if (m_vbo)
		glDeleteBuffersARB(1, &m_vbo);
	glGenBuffersARB(1, &m_vbo);
	glBindBufferARB(GL_ARRAY_BUFFER_ARB, m_vbo);
	int siz = m_nchan*m_nsamp*2*sizeof(float);
	glBufferDataARB(GL_ARRAY_BUFFER_ARB, siz, 0, GL_DYNAMIC_DRAW_ARB);
	glBufferSubDataARB(GL_ARRAY_BUFFER_ARB, 0, siz, m_f);
}
void VboRaster::setColor(float r, float g, float b, float a)
{
	m_red = r;
	m_green = g;
	m_blue = b;
	m_alpha = a;
}
void VboRaster::copy()
{
	auto copyData = [](GLuint vbo, u32 sta, u32 fin, float *ptr, int stride) {
		glBindBufferARB(GL_ARRAY_BUFFER_ARB, vbo);
		sta *= stride;
		fin *= stride;
		ptr += sta;
		glBufferSubDataARB(GL_ARRAY_BUFFER_ARB, sta*4, (fin-sta)*4, (GLvoid *)ptr);
	};

	// copy the new stuff to the VBO. can be called from a different thread.
	u32 w = m_w; // atomic
	if (m_r < w) {
		u32 n = (m_nchan * m_nsamp);
		u32 sta = m_r % n;
		u32 fin = w % n;
		if (fin < sta) { //wrap
			copyData(m_vbo, sta, n, m_f, 2);
			copyData(m_vbo, 0, fin, m_f, 2);
		} else {
			copyData(m_vbo, sta, fin, m_f, 2);
		}
		m_r = w; // atomic
	}
}
void VboRaster::addEvent(float the_time, int the_chan)
{
	u32 w = m_w % (m_nchan * m_nsamp); // atomic
	m_f[w*2+0] = the_time;
	m_f[w*2+1] = (float)the_chan;
	m_w++; // atomic
}
void VboRaster::draw()
{
	glEnableClientState(GL_VERTEX_ARRAY);
	glBindBufferARB(GL_ARRAY_BUFFER_ARB, m_vbo);
	glVertexPointer(2, GL_FLOAT, 0, nullptr);
	glColor4f(m_red, m_green, m_blue, m_alpha);
	glPointSize(2);
	glDrawArrays(GL_POINTS, 0, m_nchan*m_nsamp);
	glBindBufferARB(GL_ARRAY_BUFFER_ARB, 0);
}
u32 VboRaster::size()
{
	return m_nchan;
}