#define GL_GLEXT_PROTOTYPES

#include <math.h>
#include <GL/glut.h>    // Header File For The GLUT Library
#include "util.h"
#include "vbo_raster.h"

VboRaster::VboRaster(u32 n)
{
	m_n = n;
	m_f = (float *)malloc(m_n*3*sizeof(float)); // TODO check for malloc failure
	for (u32 i=0; i<m_n; i++) {
		m_f[i*3+0] = (float)i;
		m_f[i*3+1] = sinf((float)i*0.02); // arbitrary initial data
		m_f[i*3+2] = 0.f;
	}
	m_w = 0;
	m_r = 0;
	m_nplot = m_n;
	m_vbo = 0; // not configured yet
	m_vs = 0;
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
	int siz = m_n*3*sizeof(float);
	glBufferDataARB(GL_ARRAY_BUFFER_ARB, siz, 0, GL_STATIC_DRAW_ARB);
	glBufferSubDataARB(GL_ARRAY_BUFFER_ARB, 0, siz, m_f);
	//int sz;
	//glGetBufferParameterivARB(GL_ARRAY_BUFFER_ARB, GL_BUFFER_SIZE_ARB, &sz);
	//printf("Vertex Array in VBO:%d bytes\n", sz);
}
void VboRaster::setCGProfile(CGprofile pro)
{
	m_pro = pro;
}
void VboRaster::setVertexShader(cgVertexShader *vs)
{
	// just stores a pointer! must be instantiated elsewhere.
	m_vs = vs;
}
void VboRaster::setNPlot(u32 _nplot)
{
	// make it multiples of 128.
	_nplot &= (0xffffffff ^ 127);
	_nplot = _nplot > m_n ? m_n : _nplot;
	_nplot = _nplot < 512 ? 512 : _nplot;
	m_nplot = _nplot;
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
		u32 sta = m_r % m_nplot;
		u32 fin = w % m_nplot;

		if (fin < sta) { //wrap
			copyData(m_vbo, sta, m_nplot, m_f, 3);
			copyData(m_vbo, 0, fin, m_f, 3);
		} else {
			copyData(m_vbo, sta, fin, m_f, 3);
		}
		m_r = w; // atomic
	}
}
void VboRaster::addData(float *f, u32 ns)
{
	u32 w = m_w; // atomic
	for (size_t k=0; k<ns; k++)
		m_f[((w+k)% m_nplot)*3 +1] = f[k];
	m_w += ns; // atomic
}
void VboRaster::draw(int drawmode, float yoffset)
{
	if (!m_vs) {
		warn("m_vs = NULL in VboRaster");
		return;
	}
	glEnableClientState(GL_VERTEX_ARRAY);
	m_vs->setParam(2, "xzoom", 1.f/m_nplot);
	m_vs->setParam(2, "yoffset", yoffset);
	m_vs->bind();

	cgGLEnableProfile(m_pro);
	checkForCgError("enabling vertex profile");

	glBindBufferARB(GL_ARRAY_BUFFER_ARB, m_vbo);
	glVertexPointer(3, GL_FLOAT, 0, nullptr);
	glPointSize(1);
	glDrawArrays(drawmode, 0, m_nplot);

	cgGLDisableProfile(m_pro);
	checkForCgError("disabling vertex profile");

	glBindBufferARB(GL_ARRAY_BUFFER_ARB, 0);
}