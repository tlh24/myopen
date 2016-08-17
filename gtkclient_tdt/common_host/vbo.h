#ifndef __VBO_H__
#define __VBO_H__

#include <atomic>
#include "util.h"
#include "matStor.h"

void copyData(GLuint vbo, u32 sta, u32 fin, float *ptr, int stride);
void glColor4_8bit(int r, int g, int b, int a);
extern float g_viewportSize[2];

class Vbo
{
public:
	float 	*m_f; //local floating point memory.
	int		m_dim; // 2, 3, 4... dimensional.
	int		m_rows; // C style matrix
	int		m_cols; // e.g. 34 for waveforms.
	std::atomic<int> m_w; //write pointer.
	int		m_r; //read pointer.  (for copying to graphics memory).
	float	m_loc[4]; //location on the screen - x, y, w, h.
	float	m_color[4];
	float	m_fade;
	bool	m_reset; //a request, possibly from another thread.
	bool	m_useSAA; //use sum absolute (L1 norm, headsdtage SAA instr.) as opposed to L2 norm.
	GLuint	m_vbo;
	cgVertexShader *m_vs; //need to convert this to GLSL, not CG -- fewer deps.

	Vbo(int dim, int rows, int cols)
	{
		m_dim = dim;
		m_rows = rows;
		m_cols = cols;
		m_w = m_r = 0;
		m_loc[0] = 0.f;
		m_loc[1] = 0.f;
		m_loc[2] = 1.f;
		m_loc[3] = 1.f;
		for (int i=0; i<4; i++)
			m_color[i] = 0.05f; //this is additive color.
		m_fade = 0.3f;
		int siz = dim*rows*cols*sizeof(float);
		m_f = (float *)malloc(siz);
		for (int i=0; i<dim*rows*cols; i++) {
			m_f[i] = 0.f;
		}
		m_vbo = 0; //not configured yet.
		m_vs = 0;
		m_reset = false;
		m_useSAA = true; //default to headstage SAA algorithm.
	}
	virtual ~Vbo()
	{
		free(m_f);
		if (m_vbo) glDeleteBuffersARB(1, &m_vbo);
	}
	void configure()
	{
		if (m_vbo) glDeleteBuffersARB(1, &m_vbo);
		int siz = m_dim*m_rows*m_cols*sizeof(float);
		glGenBuffersARB(1, &m_vbo);
		glBindBufferARB(GL_ARRAY_BUFFER_ARB, m_vbo);
		glBufferDataARB(GL_ARRAY_BUFFER_ARB, siz,
		                0, GL_STATIC_DRAW_ARB);
		glBufferSubDataARB(GL_ARRAY_BUFFER_ARB,
		                   0, siz, m_f);
	}
	void setVertexShader(cgVertexShader *vs)
	{
		// just stores a pointer! must be instantiated elsewhere.
		m_vs = vs;
	}
	void setLoc(float x, float y, float w, float h)
	{
		m_loc[0] = x;
		m_loc[1] = y;
		m_loc[2] = w;
		m_loc[3] = h;
	}
	void setColor(float r, float g, float b, float a)
	{
		m_color[0] = r;
		m_color[1] = g;
		m_color[2] = b;
		m_color[3] = a;
	}
	void setFade(float f)
	{
		m_fade = f;
	}
	void copy()
	{
		//copy the new stuff to the VBO. can be called from a different thread.
		unsigned int sta = m_r % m_rows;
		unsigned int fin = m_w % m_rows;
		if (m_w - m_r == m_rows) {
			sta = 0;
			fin = m_rows;
		}
		if (fin != sta) {
			if (fin < sta) { //wrap
				copyData(m_vbo, sta, m_rows, m_f, m_dim * m_cols);
				copyData(m_vbo, 0, fin, m_f, m_dim * m_cols);
			} else {
				copyData(m_vbo, sta, fin, m_f, m_dim * m_cols);
			}
		}
		m_r = m_w;
	}
	float *addRow()
	{
		float *r = m_f;
		r += ((m_w % m_rows) * m_dim * m_cols);
		m_w++;
		return r; //write to this pointer.
	}
	void reset()
	{
		m_reset = true;
	}
	void drawReal(int drawmode, float time, bool update,
	              float x, float y, float w, float h)   //draws everything! things should be set up at this point..
	{
		if (!m_vs) {
			printf("m_vs = NULL in Vbo::drawReal\n");
			return;
		}
		if (m_reset) {
			m_w = m_r = 0;
			m_reset = false;
		}
		if (update) {
			m_vs->setParam(2,"time",time);
		}
		if (m_r > 0) {
			m_vs->setParam(5,"col",m_color[0],m_color[1],m_color[2], m_color[3]);
			m_vs->setParam(5,"off", x,y,w,h);
			if (m_fade > 0.3) m_fade -= 0.01;
			m_vs->setParam(2,"fade",m_fade);
			m_vs->bind();
			cgGLEnableProfile(myCgVertexProfile);
			checkForCgError("enabling vertex profile");
			glEnableClientState(GL_VERTEX_ARRAY); //clean residual state.
			glBindBufferARB(GL_ARRAY_BUFFER_ARB, m_vbo);
			//note: want to draw the newest data soonest; hence should
			// draw in two chunks: m_r % m_rows to m_rows-1
			// then 0 to m_r % m_rows.
			int r = m_r % m_rows;
			if (m_r > m_rows) {
				if (m_dim == 6) { //color and vertex location.
					glEnableClientState(GL_COLOR_ARRAY);
					glVertexPointer(3, GL_FLOAT, m_dim*4,
					                (void *)(m_dim*m_cols*r*4));
					glColorPointer(3, GL_FLOAT, m_dim*4,
					               (void *)(m_dim*m_cols*r*4 + 3*4)); //byte offset.
				} else {
					glVertexPointer(m_dim, GL_FLOAT, m_dim*4,
					                (void *)(m_dim*m_cols*r*4));
				}
				glDrawArrays(drawmode, 0, (m_rows-r) * m_cols);
			}
			if (r > 0) {
				if (m_dim == 6) { //color and vertex location.
					glEnableClientState(GL_COLOR_ARRAY);
					glVertexPointer(3, GL_FLOAT, m_dim*4,(void *)0);
					glColorPointer(3, GL_FLOAT, m_dim*4,(void *)(3*4));
				} else {
					glVertexPointer(m_dim, GL_FLOAT, m_dim*4, 0);
				}
				glDrawArrays(drawmode, 0, r * m_cols);
			}
			glBindBufferARB(GL_ARRAY_BUFFER_ARB, 0);
			cgGLDisableProfile(myCgVertexProfile);
			checkForCgError("disabling vertex profile");
			glDisableClientState(GL_VERTEX_ARRAY); //clean residual state.
			glDisableClientState(GL_COLOR_ARRAY);
		}
	}
	void draw(int drawmode, float time, bool update)
	{
		glLineWidth(1.f);
		drawReal(drawmode, time, update, m_loc[0],m_loc[1],m_loc[2],m_loc[3]);
	}
};
class VboPca : public Vbo
{
public:
	float	*m_mean; //center of the data (used for PCA)
	float	*m_max;
	float 	*m_maxSmooth;
	float 	*m_meanSmooth;
	float 	*m_wf;
	float 	*m_poly;
	int 	m_polyW;
	int 	m_drawWf;
	int 	m_wfLen;

	VboPca(int dim, int rows, int cols, int ch, MatStor *ms) : Vbo(dim, rows, cols)
	{
		construct(ch, 32, nullptr, nullptr, ms);
	}
	VboPca(int dim, int rows, int cols, float *pca_mean, float *pca_max) : Vbo(dim, rows, cols)
	{
		construct(-1, 32, pca_mean, pca_max, nullptr);
	}
	VboPca(int dim, int rows, int cols, int ch, int wfLen, MatStor *ms) : Vbo(dim, rows, cols)
	{
		construct(ch, wfLen, nullptr, nullptr, ms);
	}

	virtual ~VboPca()
	{
		free(m_mean);
		free(m_max);
		free(m_maxSmooth);
		free(m_meanSmooth);
		free(m_wf);
		free(m_poly);
	}
	void construct(int ch, int wfLen, float *pca_mean, float *pca_max,
	               MatStor *ms)
	{
		//if (m_dim != 6) printf("Error: dim != 6 in VboPca\n");
		m_mean = (float *)malloc(m_dim * sizeof(float));
		m_max = (float *)malloc(m_dim * sizeof(float));
		m_maxSmooth = (float *)malloc(m_dim * sizeof(float));
		m_meanSmooth = (float *)malloc(m_dim * sizeof(float));
		for (int i=0; i<m_dim; i++) {
			m_mean[i] = 0.f;
			m_max[i] = 1.f;
			m_maxSmooth[i] = 1.f;
			m_meanSmooth[i] = 0.f;
		}
		if (ms) {
			ms->getValue3(ch, 0, "vbopca_mean", m_mean, m_dim);
			ms->getValue3(ch, 0, "vbopca_max", m_max, m_dim);
		} else if (pca_mean && pca_max) {
			memcpy(m_mean, pca_mean, m_dim);
			memcpy(m_max,  pca_max, m_dim);
		}
		m_wfLen = wfLen;
		m_wf = (float *)malloc(m_rows * m_wfLen * sizeof(float));
		// XXX DO WE NEED TO SET THE SIZE OF THE POLY TO BE 1024*NSORT?
		m_poly = (float *)malloc(1024 * 2 * sizeof(float)); //for sorting.
		m_polyW = 0;
		m_drawWf = 0;
		m_color[3] = -0.5; //additive alpha. so make the points partially transparent.
	}
	void save(int ch, MatStor *ms)
	{
		if (ms) {
			ms->setValue3(ch, 0, "vbopca_mean", m_mean, m_dim);
			ms->setValue3(ch, 0, "vbopca_max", m_max, m_dim);
		}
	}
	float *addWf()
	{
		//assumes that we will call addRow() immediately *afterward*.
		//this is used for the internal cache / mouse selector / aperture recalculation.
		float *r = m_wf;
		r += m_wfLen * (m_w % m_rows);
		return r;
		//returns a pointer that caller can fill with the waveform.
	}
	void calcScale(float &x, float &y, float &w, float &h)
	{
		w = m_loc[2] / (2.5*m_maxSmooth[0]);
		h = m_loc[3] / (2*m_maxSmooth[1]);
		x = m_loc[0] - (m_meanSmooth[0] - m_maxSmooth[0])*w;
		y = m_loc[1] - (m_meanSmooth[1] - m_maxSmooth[1])*h;
	}
	void addPoly(float *curs)
	{
		//add it in local coordinates.
		float x,y,w,h;
		calcScale(x,y,w,h);
		int p = m_polyW % 1024;
		float cx = curs[0];
		float cy = curs[1];
		cx -= x;
		cy -= y;
		cx /= w;
		cy /= h;
		m_poly[p*2 + 0] = cx;
		m_poly[p*2 + 1] = cy;
		m_polyW++;
	}
	void copy(bool updateScale, bool updateAll)
	{
		//update the mean & max excursion. only makes sense for 2d data.
		if (updateScale) {
			for (int i = m_r; i<m_w; i++) {
				int j = i % m_rows;
				for (int k=0; k<m_dim; k++) {
					float x = m_f[j*m_cols * m_dim + k];
					m_mean[k] = m_mean[k] * 0.995 + x * 0.005;
					m_max[k] *= 0.999;
					float d = fabs(m_mean[k] - x);
					if (d > m_max[k]) m_max[k] = d;
				}
				//printf("updating, %d rows\n", m_w-m_r);
			}
		}
		if (updateAll) {
			//two passes: mean and max.
			for (int k=0; k<m_dim; k++)
				m_mean[k] = 0.f;
			for (int i = m_r; i<m_w; i++) {
				int j = i % m_rows;
				for (int k=0; k<m_dim; k++) {
					float x = m_f[j*m_cols*m_dim + k];
					m_mean[k] += x;
				}
			}
			for (int k=0; k<m_dim; k++) {
				m_mean[k] /= m_w - m_r;
				m_max[k] = 0.f;
			}
			for (int i = m_r; i<m_w; i++) {
				int j = i % m_rows;
				for (int k=0; k<m_dim; k++) {
					float x = m_f[j*m_cols*m_dim + k];
					float d = fabs(m_mean[k] - x);
					if (d > m_max[k]) m_max[k] = d;
				}
			}
			for (int k=0; k<m_dim; k++) {
				m_meanSmooth[k] = m_mean[k];
				m_maxSmooth[k] = m_max[k];
			}
		}
		Vbo::copy();
	}
	void draw(int drawmode, float time, bool update, float *curs, bool drawclose)
	{
		//order: we scale before offset. pretty easy algebra.
		float x,y,w,h;
		calcScale(x,y,w,h);
		for (int i=0; i<m_dim; i++) {
			m_maxSmooth[i] = 0.995*m_maxSmooth[i] + 0.005*m_max[i];
			m_meanSmooth[i] = 0.995*m_meanSmooth[i] + 0.005*m_mean[i];
		}
		//printf("mean %f %f max %f %f points %d\n", m_mean[0],m_mean[1],
		//	   m_maxSmooth[0], m_maxSmooth[1], m_w);
		glLineWidth(1.f);
		glPointSize(2.f);
		drawReal(drawmode, time, update, x,y,w,h);
		if (drawclose) {
			//also calculate cursor in local space.
			//cursor is normally in +-1 x & y space.
			float cx, cy;
			cx = curs[0];
			cy = curs[1];
			cx -= x;
			cy -= y;
			cx /= w;
			cy /= h;
			//find the closest in our dataset.
			float d = FLT_MAX;
			int closest = 0;
			for (int i=0; i< MIN((int)m_w,m_rows); i++) {
				float xx = m_f[i*m_cols*m_dim + 0];
				float yy = m_f[i*m_cols*m_dim + 1];
				xx -= cx;
				yy -= cy;
				float dd = xx*xx + yy*yy;
				if (dd < d) {
					closest = i;
					d = dd;
				}
			}
			//draw an X on the closest
			int i = closest;
			float xx = m_f[i*m_cols*m_dim + 0];
			float yy = m_f[i*m_cols*m_dim + 1];
			xx *= w;
			yy *= h;
			xx += x;
			yy += y;
			float ww = 10.f / g_viewportSize[0];
			float hh = 10.f / g_viewportSize[1];
			glBegin(GL_LINES);
			glColor4_8bit(233, 162, 201, 255);
			glVertex3f( xx-ww, yy-hh, 0.f);
			glVertex3f( xx+ww, yy+hh, 0.f);
			glVertex3f( xx+ww, yy-hh, 0.f);
			glVertex3f( xx-ww, yy+hh, 0.f);
			m_drawWf = closest;
			glEnd();
		}
		//finally, draw the poly (if there is one).
		float fx = m_poly[0];
		float fy = m_poly[1];
		fx *= w;
		fy *= h;
		fx += x;
		fy += y;
		glLineWidth(3.f);
		glBegin(GL_LINE_STRIP);
		glColor4f(1.f, 1.f, 1.f, 0.35);
		for (int j=0; j<MIN(m_polyW,1024); j++) {
			float nx = m_poly[j*2+0];
			float ny = m_poly[j*2+1];
			nx *= w;
			ny *= h;
			nx += x;
			ny += y;
			glVertex3f(nx, ny, 0.f);
		}
		glVertex3f(fx, fy, 0.f);
		glEnd();
	}
	void drawClosestWf(float gain)
	{
		//offsets to the wafeform display.
		float ow = m_loc[2];
		float oh = m_loc[3]*2;
		float ox = m_loc[0] - m_loc[2];
		float oy = m_loc[1] - m_loc[3]/2;
		int i = m_drawWf;
		glColor4_8bit(233, 162, 201, 255);
		glLineWidth(4.f);
		glBegin(GL_LINE_STRIP);
		for (int j=0; j<m_wfLen; j++) {
			float ny = m_wf[i*m_wfLen + j]*gain + 0.5f;
			float nx = (float)j/(m_wfLen-1);
			glVertex3f(nx*ow+ox, ny*oh+oy, 0.f);
		}
		glEnd();
		glColor4f(0.f, 0.f, 0.f, 1.f);
		glLineWidth(1.0f);
		glBegin(GL_LINE_STRIP);
		for (int j=0; j<m_wfLen; j++) {
			float ny = m_wf[i*m_wfLen + j]*gain + 0.5f;
			float nx = (float)j/(m_wfLen-1);
			glVertex3f(nx*ow+ox, ny*oh+oy, 0.f);
		}
		glEnd();
	}
	bool getTemplate(float *temp, float &aperture, float *color)
	{
		if (m_polyW < 3) return false;

		for (int i=0; i<m_wfLen; i++)
			temp[i] = 0.f;
		int npts = 0;
		bool *inside = (bool *)malloc(m_rows * sizeof(bool));
		int len = MIN(m_polyW, 1024);
		for (int i=0; i<MIN((int)m_w,m_rows) && len > 3; i++) {
			//task 1 is to see if each pca point is within the poly region.
			//this is easy - count the number of polylines crossed by a line
			//starting at this point heading to -inf.
			float x = m_f[m_dim*m_cols*i + 0];
			float y = m_f[m_dim*m_cols*i + 1];
			int k = len;
			k--;
			//first determine if the polygon is CW or CCW.
			float x0 = m_poly[0];
			float y0 = m_poly[1];
			float x1 = m_poly[2];
			float y1 = m_poly[3];
			float x2 = m_poly[4];
			float y2 = m_poly[5];
			int crossPos = 0;
			int crossNeg = 0;
			for (int j=0; j<len; j++) {
				float nx = x0 - x1;
				float ny = y0 - y1;
				float px = x1 - x2;
				float py = y1 - y2;
				float cross = nx*py - ny*px;
				if (cross > 0) crossPos++;
				if (cross < 0) crossNeg++;
				x0 = x1;
				y0 = y1;
				x1 = x2;
				y1 = y2;
				x2 = m_poly[((j+3)%len)*2+0];
				y2 = m_poly[((j+3)%len)*2+1];
			}
			float px = m_poly[k*2+0];
			float py = m_poly[k*2+1];
			float scl = 1.f;
			if (crossPos < crossNeg) scl = -1.f;
			int intersects = 0;
			for (int j=0; j<len; j++) {
				float nx = m_poly[j*2+0];
				float ny = m_poly[j*2+1];
				//check possible intersects.
				if ((py <= y && ny > y) || (py > y && ny <= y)) { //why are these uninit here?  confused, but could be why the buttons don't work at first.
					if (px < x && nx < x) intersects++;
					if ((px <= x && nx > x) || (px > x && nx <= x)) {
						//two vectors -> cross product yeilds left/right.
						float vx = nx-px;
						float vy = ny-py;
						float wx = x-px;
						float wy = y-py;
						float cross = vx*wy - vy*wx;
						if (cross*scl > 0.f) intersects++;
					}
				}
				px = nx;
				py = ny;
			}
			if (intersects % 2 == 1) {
				//include this point!
				inside[i] = true;
				//set the color.
				for (int j=0; j<3; j++)
					m_f[m_dim*m_cols*i + j + 3] = color[j];
				for (int j=0; j<m_wfLen; j++)
					temp[j] += m_wf[i*m_wfLen + j]; // range 1 mean 0.
				npts++;
			} else {
				inside[i] = false;
				m_f[m_dim*m_cols*i + 2] = 1.0f;
			}
		}
		if (npts <= 0) {
			if (inside != NULL)
				free(inside);
			return false;
		}
		for (int k=0; k<m_wfLen; k++) {
			temp[k] /= (float)npts;
		}
		//loop again, calculate mean aperture. (don't do stdev -- the headstage uses abs, not x^2)
		aperture = 0;
		for (int i=0; i<MIN((int)m_w,m_rows); i++) {
			if (inside[i]) {
				for (int j=0; j<m_wfLen; j++) {
					float r = m_wf[i*m_wfLen + j] - temp[j];
					if (m_useSAA)
						aperture += fabs(r);
					else aperture += r*r;
				}
			}
		}
		aperture /= (float)npts;
		if (m_useSAA) {
			aperture *= 0.45; //empirical.
		} else {
			aperture /= m_wfLen;
			aperture *= 2.0; //also empirical.
		}
		//really should iteratively assign this, moving until we get a set number of type 1/2 errors.
		copyData(m_vbo, 0, m_rows, m_f, m_dim * m_cols);
		if (inside != NULL)
			free(inside);
		return true;
	}
	void updateAperture(float *temp, float aperture, float *color)
	{
		// redisplays the sorting based on MSE / SAA algorithm.
		// wf and template are range 1 mean 0. (+-0.5)
		// if m_useSAA aperture is 1/255 whats in the UI.
		// else aperture just the MSE.
		for (int i=0; i<MIN((int)m_w,m_rows); i++) {
			float sum = 0.f;
			if (m_useSAA) {
				for (int j=0; j<16; j++) {
					sum += fabs(m_wf[i*m_wfLen + j + 8] - temp[j]);
				}
			} else {
				for (int j=0; j<m_wfLen; j++) {
					float r = m_wf[i*m_wfLen + j] - temp[j];
					sum += r*r;
				}
				sum /= m_wfLen;
			}
			if (sum < aperture) {
				for (int j=0; j<3; j++)
					m_f[m_dim*m_cols*i + j + 3] = color[j]; //6: x y z color.
			} else {
				// if it was sorted, but no longer meets criteria, change it to gray.
				bool was = true;
				for (int j=0; j<3; j++)
					was &= m_f[m_dim*m_cols*i + j + 3] == color[j];
				if (was) {
					for (int j=0; j<3; j++)
						m_f[m_dim*m_cols*i + j + 3] = 0.5; //6: x y z color.
				}
			}
		}
		copyData(m_vbo, 0, m_rows, m_f, m_dim * m_cols);
	}
};

void copyData(GLuint vbo, u32 sta, u32 fin, float *ptr, int stride)
{
	glBindBufferARB(GL_ARRAY_BUFFER_ARB, vbo);
	sta *= stride;
	fin *= stride;
	ptr += sta;
	glBufferSubDataARB(GL_ARRAY_BUFFER_ARB, sta*4, (fin-sta)*4, (GLvoid *)ptr);
}

// just a helper function
void glColor4_8bit(int r, int g, int b, int a)
{
	glColor4f(
	    (float)(r % 256)/255.f,
	    (float)(g % 256)/255.f,
	    (float)(b % 256)/255.f,
	    (float)(a % 256)/255.f);
}

#endif
