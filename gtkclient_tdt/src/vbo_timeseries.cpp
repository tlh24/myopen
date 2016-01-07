#define GL_GLEXT_PROTOTYPES

#include <math.h>
#include <GL/glut.h>    // Header File For The GLUT Library
#include "vbo_timeseries.h"

VboTimeseries::VboTimeseries(int n)
{
	m_n = n;
	int siz = m_n*3; // t, x, y
	m_f = (float *)malloc(siz);
	for (int i=0; i<m_n; i++) {
		m_f[i*3+0] = (float)i;
		m_f[i*3+1] = sinf((float)i*0.02);
		m_f[i*3+2] = 0.f;
	}
	m_w = m_r = 0;
	m_vbo = 0; // not configured yet
	m_vs = 0;
}

VboTimeseries::~VboTimeseries()
{
	free(m_f);
	if (m_vbo)
		glDeleteBuffersARB(1, &m_vbo);
}