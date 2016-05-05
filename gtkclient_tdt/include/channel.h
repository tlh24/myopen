#ifndef __CHANNEL_H__
#define __CHANNEL_H__

#include <armadillo>
#include <string>
#include "matStor.h"
#include "random.h"
#include "util.h"
#include "spikebuffer.h"

using namespace arma;

long double gettime();
void glPrint(char *text);
#define NUSVBO 512
#define NWFVBO NUSVBO*NSORT

extern gboolean g_showUnsorted;
extern gboolean g_showTemplate;
extern gboolean g_showPca;
extern gboolean g_showWFVgrid;
extern gboolean g_showISIhist;
extern gboolean g_showWFstd;

extern int g_whichAlignment;
extern int g_whichSpikePreEmphasis;

//need some way of encapsulating per-channel information.
class Channel
{
private:
	float 	m_threshold; 	// 1 = + 10mV.
	float	m_centering; 	// left/right centering. used to look for threshold crossing.
	float 	m_gain;
	float 	m_aperture[NSORT]; 		// aka MSE per sample.
public:
	Vbo		*m_wfVbo; 				// range 1 mean 0
	Vbo		*m_usVbo;				// unsorted units
	VboPca	*m_pcaVbo; 				// 2D points, with color.
	float	m_pca[2][NWFSAMP]; 	// range 1 mean 0
	float 	m_pcaScl[2]; 		// sqrt of the eigenvalues.
	float	m_template[NSORT][NWFSAMP]; // range 1 mean 0.
	float	m_loc[4];
	int		m_ch; 			//channel number, obvi.
	running_stat<double>	m_wfstats; // mean of the continuous waveform.
	i64 	m_isi[NSORT][100]; 	//counts of the isi, in units of ms.
	i64		m_lastSpike[NSORT]; //zero when a spike occurs. in samples.
	bool	m_enabled;
	SpikeBuffer m_spkbuf;
	// TODO wrap spikebuffer methods into channel so that we can make the
	// spikebuffer private
	string 	m_chanName;
	float 	m_scaleFactor; // from po8e scaling to uV

	Channel(int ch, MatStor *ms)
	{
		m_wfVbo = new Vbo(6, 	NWFVBO, NWFSAMP+2); // sorted units, with color.
		m_usVbo = new Vbo(3, 	NUSVBO, NWFSAMP+2); // unsorted units, all gray.
		m_pcaVbo = new VboPca(6, 1024*8, 1, ch, NWFSAMP, ms);	// x, y, t, r, g, b
		m_wfVbo->m_useSAA = m_usVbo->m_useSAA = m_pcaVbo->m_useSAA = false;
		m_pcaVbo->m_fade = 0.f;
		m_ch = ch;
		//m_var = 0.0;
		m_wfstats.reset();
		m_enabled = true;

		for (int j=0; j<NWFSAMP; j++) {
			// only need first two pc's
			m_pca[0][j] = 1.f/8.f;
			m_pca[1][j] = 1.f/8.f;
		}
		m_pcaScl[0] = 1.f;
		m_pcaScl[1] = 1.f;

		for (int k=0; k<NSORT; k++) {
			for (int j=0; j<NWFSAMP; j++) {
				m_template[k][j] = 0.5*sinf(j/6.f) / 1e2; // sinusoids scaled to ~100 uV
			}
			m_aperture[k] = 0.f;
		}

		//read from matlab if it's there..
		if (ms) {
			ms->getValue3(ch, 0, "pca", &(m_pca[0][0]), NWFSAMP);
			ms->getValue3(ch, 1, "pca", &(m_pca[1][0]), NWFSAMP);
			ms->getValue3(ch, 0, "pcaScl", m_pcaScl, 2);
			for (int j=0; j<NSORT; j++) {
				ms->getValue3(ch, j, "template", &(m_template[j][0]), NWFSAMP);
				m_aperture[j] = ms->getValue2(ch, j, "aperture", 0.f); // old default: 0.003f
			}

			m_threshold = ms->getValue(ch, "threshold", 0.6f);
			m_centering = ms->getValue(ch, "centering", NWFSAMP/2.f);
			m_gain = ms->getValue(ch, "gain", 1.f);
			m_enabled = (bool)ms->getValue(ch, "enabled", 1.f);
		}

		//init m_wfVbo.
		for (int i=0; i<NWFVBO; i++) {
			float *f = m_wfVbo->addRow();
			f[0] = 0.f;
			f[1] = 0.5f;
			f[2] = 0.f;
			f[3] = 0.f;
			f[4] = 0.f;
			f[5] = 0.f;
			for (int j=0; j<(m_wfVbo->m_cols-2); j++) {
				f[(j+1)*6 + 0] = (float)j/(m_wfVbo->m_cols-3);
				f[(j+1)*6 + 1] = 0.5f;
				f[(j+1)*6 + 2] = 0.0f;
				for (int k=0; k<3; k++)
					f[(j+1)*6 + 3 + k] = 0.5f; //all init gray.
			}
			f[(m_wfVbo->m_cols-1)*6 + 0] = 1.f;
			f[(m_wfVbo->m_cols-1)*6 + 1] = 0.5f;
			f[(m_wfVbo->m_cols-1)*6 + 2] = 0.0f;
			for (int k=0; k<3; k++)
				f[(m_wfVbo->m_cols-1)*6 + 3 + k] = 0.5f; //all init gray.
		}

		//init unsorted Vbo,
		for (int i=0; i<NUSVBO; i++) {
			float *f = m_usVbo->addRow();
			f[0] = 0.f;
			f[1] = 0.5f;
			f[2] = 0.f;
			for (int j=0; j<(m_usVbo->m_cols-2); j++) {
				f[(j+1)*3 + 0] = (float)j/(m_usVbo->m_cols-3);
				f[(j+1)*3 + 1] = uniform() - 0.5f;
				f[(j+1)*3 + 2] = 0.0f;
			}
			f[(m_usVbo->m_cols-1)*3 + 0] = 1.f;
			f[(m_usVbo->m_cols-1)*3 + 1] = 0.5f;
			f[(m_usVbo->m_cols-1)*3 + 2] = 0.0f;
		}

		m_loc[0] = m_loc[1] = 0.f;
		m_loc[2] = m_loc[3] = 1.f;

		for (int u=0; u<NSORT; u++) {
			m_lastSpike[u] = 0;
			for (size_t i=0; i < sizeof(m_isi[0])/sizeof(m_isi[0][0]); i++) {
				m_isi[u][i] = 0;
			}
		}
	}
	~Channel()
	{
		delete m_wfVbo;
		m_wfVbo = 0;
		delete m_usVbo;
		m_usVbo = 0;
		delete m_pcaVbo;
		m_pcaVbo = 0;
	}
	void save(MatStor *ms)
	{
		for (int j=0; j<NSORT; j++) {
			ms->setValue3(m_ch, j, "pca", &(m_pca[j][0]), NWFSAMP);
			ms->setValue3(m_ch, j, "template", &(m_template[j][0]), NWFSAMP);
			ms->setValue2(m_ch, j, "aperture", m_aperture[j]);
		}
		ms->setValue3(m_ch, 0, "pcaScl", m_pcaScl, 2);
		ms->setValue(m_ch, "threshold", m_threshold);
		ms->setValue(m_ch, "centering", m_centering);
		ms->setValue(m_ch, "gain", m_gain);
		ms->setValue(m_ch, "enabled", m_enabled);
		m_pcaVbo->save(m_ch, ms);
	}
	int addWf(float *wf, int unit, float time, bool updatePCA)
	{
		if (!m_wfVbo) return 0; //being called from another thread, likely.
		//wf assumed to be NWFSAMP points long.
		//wf should range 1 mean 0.
		float color[3] = {0.5, 0.5, 0.5}; //unsorted.
		//error type 1 moves toward green-yellow; error type 2 moves to purple.
		//see color wheel in gimp.

		switch (unit) {	// 1-indexed
		case 1:
			color[0] =  31.f/255.f;
			color[1] = 120.f/255.f;
			color[2] = 180.f/255.f;
			break;
		case 2:
			color[0] = 227.f/255.f;
			color[1] =  26.f/255.f;
			color[2] =  28.f/255.f;
			break;
		case 3:
			color[0] =  51.f/255.f;
			color[1] = 160.f/255.f;
			color[2] =  44.f/255.f;
			break;
		case 4:
			color[0] = 255.f/255.f;
			color[1] = 127.f/255.f;
			color[2] =   0.f/255.f;
			break;
		}

		/*
		if (unit == 1) {
			//color[0] = 0.0f;        //cyan.
			//color[1] = 1.0f;
			//color[2] = 1.0f;
			color[0] = 107.f/255.f;
			color[1] = 174.f/255.f;
			color[2] = 214.f/255.f;
		}

		if (unit == 3) {
			color[0] = 0.0f;        //cyan-green.
			color[1] = 1.0f;
			color[2] = 0.5f;
		}

		if (unit == 5) {
			color[0] = 0.0f;        //blue-green
			color[1] = 0.5f;
			color[2] = 1.0f;
		}

		if (unit == 2) {
			//color[0] = 1.0f;        //red
			//color[1] = 0.0f;
			//color[2] = 0.0f;
			color[0] = 251.f/255.f;
			color[1] = 106.f/255.f;
			color[2] = 74.f/255.f;
		}

		if (unit == 4) {
			color[0] = 1.0f;        //orange
			color[1] = 0.5f;
			color[2] = 0.0f;
		}

		if (unit == 6) {
			color[0] = 1.0f;        //magenta.
			color[1] = 0.0f;
			color[2] = 0.5f;
		}
		*/

		//copy to m_wfVbo first.
		if (unit > 0) {
			float *f = m_wfVbo->addRow();
			for (int j=0; j<NWFSAMP; j++) {
				f[(j+1)*6 + 1] = wf[j];
				f[(j+1)*6 + 2] = time;
				for (int k=0; k<3; k++)
					f[(j+1)*6 + 3 + k] = color[k];
			}
		} else {
			float *f = m_usVbo->addRow();
			for (int j=0; j<NWFSAMP; j++) {
				f[(j+1)*3 + 1] = wf[j];
				f[(j+1)*3 + 2] = time;
			}
		}
		if (updatePCA) {
			//add waveform to database.
			float *nw = m_pcaVbo->addWf();
			for (int j=0; j<NWFSAMP; j++) {
				nw[j] = wf[j];
			}
			//compute PCA. just inner product.
			// TODO: this seems to be a data race
			float *pca = m_pcaVbo->addRow();
			for (int i=0; i<2; i++) {
				pca[i] = 0.f;
				for (int j=0; j<NWFSAMP; j++) {
					pca[i] += m_pca[i][j] * wf[j];
				}
			}
			pca[2] = time;
			for (int i=0; i<3; i++) {
				pca[3+i] = color[i];
			}
		}
		return unit;
	}
	void copy()
	{
		if (m_wfVbo)  m_wfVbo->copy();
		if (m_usVbo)  m_usVbo->copy();
		if (m_pcaVbo) m_pcaVbo->copy(false,false);
	}
	void setVertexShader(cgVertexShader *vs)
	{
		m_pcaVbo->setVertexShader(vs);
		m_wfVbo->setVertexShader(vs);
		m_usVbo->setVertexShader(vs);
	}
	void configure(cgVertexShader *vs)
	{
		m_pcaVbo->configure();
		m_wfVbo->configure();
		m_usVbo->configure();
		setVertexShader(vs);
	}
	bool mouse(float *f)
	{
		//possibly set the threshold and centering for this channel.
		//incoming location will be in global coordinates (+-1)

		float n  = NWFSAMP-1;
		float nn = n*2;

		float x = f[0];
		float y = f[1];
		x -= m_loc[0];
		y -= m_loc[1];
		x /= m_loc[2];
		y /= m_loc[3];
		if (x >= 1/nn && x <= n/nn && y >= 0.0 && y <= 1.f) {
			m_threshold = ((y-0.5f)*2.f)/m_gain;
			x *= nn;
			x -= 0.5f;
			x = n-x; //inverse centering transform.
			m_centering = x;
			resetPca();
			return true;
		} else return false;
	}
	void addPoly(float *f)
	{
		m_pcaVbo->addPoly(f);
	}
	void resetPoly()
	{
		m_pcaVbo->m_polyW = 0;
	}
	void setApertureLocal(int n, float aperture)
	{
		// XXX TODO
		// need to increase the limits to num_sorted, right?
		// also need to include more colors here
		if (n >= 0 && n < NSORT)
			m_aperture[n] = aperture;
		float color[3] = {0.f, 1.f, 1.f};
		switch (n) {	// 0-indexed
		case 0:
			color[0] =  31.f/255.f;
			color[1] = 120.f/255.f;
			color[2] = 180.f/255.f;
			break;
		case 1:
			color[0] = 227.f/255.f;
			color[1] =  26.f/255.f;
			color[2] =  28.f/255.f;
			break;
		case 2:
			color[0] =  51.f/255.f;
			color[1] = 160.f/255.f;
			color[2] =  44.f/255.f;
			break;
		case 3:
			color[0] = 255.f/255.f;
			color[1] = 127.f/255.f;
			color[2] =   0.f/255.f;
			break;
		}
		m_pcaVbo->updateAperture(m_template[n], aperture, color);
	}
	float getThreshold()
	{
		return m_threshold;
	}
	void setThreshold(float thresh)
	{
		if (thresh != m_threshold)
			resetPca();
		m_threshold = thresh;
	}
	void autoThreshold(double s)
	{
		m_threshold = m_wfstats.mean() + m_wfstats.stddev() * s;
	}
	int getCentering()
	{
		return (int)m_centering;
	}
	void setCentering(float c)
	{
		if (c != m_centering)
			resetPca();
		m_centering = c;
	}
	void setLoc(float x, float y, float w, float h)
	{
		m_wfVbo->setLoc(x, y+h/2, w/2.f, h*m_gain);
		m_usVbo->setLoc(x, y+h/2, w/2.f, h*m_gain);
		m_pcaVbo->setLoc(x+w/2.f, y+h/4, w/2.f, h/2.f);
		m_loc[0] = x;
		m_loc[1] = y;
		m_loc[2] = w;
		m_loc[3] = h;
	}
	void setGain(float gain)
	{
		float x = m_loc[0];
		float y = m_loc[1];
		float w = m_loc[2];
		float h = m_loc[3];
		m_wfVbo->setLoc(x, y+h/2, w/2.f, h*gain);
		m_usVbo->setLoc(x, y+h/2, w/2.f, h*gain);
		m_gain = gain;
	}
	float getGain()
	{
		return m_gain;
	}
	void setEnabled(bool enabled)
	{
		m_enabled = enabled;
	}
	bool getEnabled()
	{
		return m_enabled;
	}
	void toggleEnabled()
	{
		m_enabled = !m_enabled;
	}
	void draw(int drawmode, float time, float *cursPos,
	          bool closest, bool sortMode)
	{
		float ox = m_loc[0];
		float oy = m_loc[1];
		float ow = m_loc[2]/2;
		float oh = m_loc[3];
		//draw the distribution in the background

		if (g_showWFstd) {
			//glColor4f(0.2f,0.f,1.f,0.4f);
			glColor4ub(8,48,107,150);
			glBegin(GL_TRIANGLE_STRIP);
			for (int i=0; i<128; i++) {
				double x = (double)i / 127.0 - 0.5;
				x *= 2.0;
				x /= m_gain;
				double f = 0.5; // 1.0 / (sqrt(m_var) * 2.50662827); leave the normalization const out.
				double m = m_wfstats.mean();
				double v = m_wfstats.var();
				if (v <= 0) {
					v = 1e-6;	// protect against div/0
				}
				double e = (x - m)*(x - m) / (-2.0 * v);
				f *= exp(e);
				float g = (float)i / 127.f;
				glVertex2f(ox     , g*oh+oy);
				glVertex2f(f*ow+ox, g*oh+oy);
			}
			glEnd();
		}

		glColor4f(0.5f, 0.5f, 0.5f, 0.5f);
		//draw only the spikes in spike mode.
		if (g_showUnsorted) {
			m_usVbo->draw(drawmode, time, true);
		}
		m_wfVbo->draw(drawmode, time, true);
		if (1) {
			//draw the threshold & centering.
			//glColor4f(1.f,1.f,1.f,0.4f);
			glColor4ub(161,217,155,150);
			glLineWidth(1.f);
			glBegin(GL_LINE_STRIP);
			float t0 = m_threshold*m_gain;
			float t = oh*(t0/2.f+0.5) + oy;
			if (g_whichSpikePreEmphasis == 0) {
				glVertex2f(ox, t);
				glVertex2f(ow+ox, t);
			} else if (g_whichSpikePreEmphasis == 1) {
				glVertex2f(ox, t);
				glVertex2f(ow+ox, t);
				glEnd();
				glBegin(GL_LINE_STRIP);
				float t2 = oh*(-t0/2.f+0.5) + oy;
				glVertex2f(ox, t2);
				glVertex2f(ow+ox, t2);
			}
			glEnd();
			//glColor4f(1.f,1.f,1.f,0.3f);

			glColor4ub(161,217,155,150);
			glBegin(GL_LINE_STRIP);
			float c;
			if (g_whichAlignment == 0) { // cursor aligned
				c = (float)m_centering;
			} else {
				c = floor(NWFSAMP/2);
			}
			c = NWFSAMP-1-c;
			c += 0.5f;
			c /= (NWFSAMP-1); //centering transform.
			glVertex2f(ow*c+ox, t-0.2*oh);
			glVertex2f(ow*c+ox, t+0.2*oh);
			glEnd();
		}
		if (sortMode) {
			m_pcaVbo->draw(GL_POINTS, time, true, cursPos, closest);
			if (closest)
				m_pcaVbo->drawClosestWf(m_gain);

			glBegin(GL_LINE_STRIP);

			//draw the templates.
			if (g_showTemplate) {
				glLineWidth(3.f);
				for (int k=0; k<NSORT; k++) {
					switch (k) {
					case 0:
						glColor4ub( 31,120,180,175);
						break;
					case 1:
						glColor4ub(227, 26, 28,175);
						break;
					case 2:
						glColor4ub( 51,160, 44,175);
						break;
					case 3:
						glColor4ub(255,127,  0,175);
						break;
					}
					//glColor4f(0.6f, 0.f, 1.f, 0.65f);
					//glColor4ub(8,48,107,175);
					//glColor4f(1.f, 0.5f, 0.f, 0.65f);
					//glColor4ub(103,0,13,175);
					for (int j=0; j<NWFSAMP; j++) {
						float ny = m_gain*m_template[k][j] + 0.5f;
						float nx = (float)(j)/(NWFSAMP-1);
						glVertex3f(nx*ow+ox, ny*oh+oy, 0.f);
					}
					glColor4f(0.f, 0.f, 0.f, 0.75f);
					glVertex3f(1.f*ow+ox, 0.5f*oh+oy, 1.f);
					glVertex3f(0.f*ow+ox, 0.5f*oh+oy, 1.f);
				}
			}

			//and the PCA templates.
			if (g_showPca) {
				glLineWidth(5.f);
				for (int k=0; k<NSORT; k++) {
					for (int j=0; j<NWFSAMP; j++) {
						//float ny = m_pca[k][j]*m_pcaScl[k]*m_gain+0.5;
						float ny = m_pca[k][j]*m_pcaScl[k]+0.5; // no need to gain?
						float nx = (float)(j)/(NWFSAMP-1);
						glColor4f(1.f-k, k, 0.f, 0.75f);
						glVertex3f(nx*ow+ox, ny*oh+oy, 0.f);
					}
					glColor4f(0.f, 0.f, 0.f, 0.75f);
					glVertex3f(1.f*ow+ox, 0.5f*oh+oy, 1.f);
					glVertex3f(0.f*ow+ox, 0.5f*oh+oy, 1.f);
				}
			}

			glEnd();

			if (g_showWFVgrid) {
				//draw vertical scale.
				double top = 10e3/m_gain; //10 mV
				double tic = 1; //uV
				int unit = 1;
				while (tic * 7 < 10e3/m_gain) {
					if (unit == 1) {
						unit = 2;
						tic *= 2.0;
					} else if (unit == 2) {
						unit = 5;
						tic *= 2.5;
					} else {
						unit = 1;
						tic *= 2.0;
					}
				}
				std::string units = std::string("uV");
				float div = 1.f;
				if (tic >= 1000) {
					div = 1000.f;
					units = std::string("mV");
				}
				char buf[64];
				glColor4f(1.f,1.f,1.f,0.3f);
				glLineWidth(1.f);
				for (double v = 0.0; v < top; v+= tic) {
					float y = m_gain*v/1e4;
					y /= 2.f;
					y += 0.5f;
					glBegin(GL_LINES);
					glVertex3f(0.f*ow+ox, y*oh+oy, 0.f);
					glVertex3f(1.f*ow+ox, y*oh+oy, 0.f);
					glEnd();
					snprintf(buf, 64, "%d %s", (int)floor(v/div), units.c_str());
					float yof = 4.f/g_viewportSize[1]; //1 pixels vertical offset.
					float xof = 2.f*(strlen(buf)*8)/g_viewportSize[0];
					glRasterPos2f(1.f*ow+ox-xof, y*oh+oy+yof);
					glPrint(buf);
					if (v > 0.0) {
						y = m_gain*v/-1e4;
						y /= 2.f;
						y += 0.5f;
						glBegin(GL_LINES);
						glVertex3f(0.f*ow+ox, y*oh+oy, 0.f);
						glVertex3f(1.f*ow+ox, y*oh+oy, 0.f);
						glEnd();
						snprintf(buf, 64, "-%d%s", (int)floor(v/div), units.c_str());
						xof = 2.f*(strlen(buf)*8)/g_viewportSize[0];
						glRasterPos2f(1.f*ow+ox-xof, y*oh+oy+yof);
						glPrint(buf);
					}
				}
			}
			if (g_showISIhist) { //isi.
				int nisi = sizeof(m_isi[0])/sizeof(m_isi[0][0]);
				//draw shaded plots of the ISI.
				for (int u=0; u<NSORT; u++) {
					i64 max = 1;
					for (int i=0; i < nisi; i++) {
						max = m_isi[u][i] > max ? m_isi[u][i] : max;
					}
					max = max < 100 ? 100 : max;
					float scl = (float)max;
					switch (u) {
					case 0:
						glColor4f(0.0f, 1.0f, 1.0f, 0.2f);
						break;
					case 1:
						glColor4f(1.0f, 0.0f, 0.0f, 0.25f);
						break;
					case 2:
						glColor4f(0.0f, 1.0f, 0.0f, 0.25f);
						break;
					}
					glBegin(GL_TRIANGLE_STRIP);
					for (int i=0; i < nisi; i++) {
						float y1 = (float)m_isi[u][i]/scl;
						float x1 = (float)i/((float)(nisi-1));
						glVertex2f(x1*ow+ox+ow, y1*oh*0.5+oy);
						glVertex2f(x1*ow+ox+ow, oy);
					}
					glEnd();
				}
				//labels -- every 10ms.
				glColor4f(1.f, 1.f, 1.f, 0.35);
				glLineWidth(1.f);
				for (int i=0; i<nisi/10; i++) {
					float x1 = (float)(i*10)/((float)(nisi-1));
					float yof = 2.f/g_viewportSize[1]; //1 pixels vertical offset.
					float xof = 2.f/g_viewportSize[0];
					glRasterPos2f(x1*ow+ox+ow+xof, oy+yof);
					char buf[64];
					snprintf(buf, 64, "%d", i*10);
					glPrint(buf);
				}
				glColor4f(1.f, 1.f, 1.f, 0.2);
				glBegin(GL_LINES);
				for (int i=0; i<nisi/10; i++) {
					float x1 = (float)(i*10)/((float)(nisi-1));
					glVertex2f(x1*ow+ox+ow, oy);
					glVertex2f(x1*ow+ox+ow, oy + 25.f*2.f/g_viewportSize[1]);
				}
				glEnd();
			}
		}

		if (!m_enabled) {
			glColor4ub(203,24,29,64);
			glBegin(GL_TRIANGLE_STRIP);
			glVertex2f(ox   , oy   );
			glVertex2f(ox+ow, oy   );
			glVertex2f(ox,    oy+oh);
			glVertex2f(ox+ow, oy+oh);
			glEnd();
		}

		//finally, the channel. upper left hand corner.
		glColor4f(1.f, 1.f, 1.f, 0.5);
		glRasterPos2f(ox, oy + oh - 14.f*2.f/g_viewportSize[1]); // 14 pixels vertical offset.
		//kearning is from the lower left hand corner.
		char buf[64];
		if (m_chanName.length() > 0) {
			snprintf(buf, 64, "%s", m_chanName.c_str());
		} else {
			snprintf(buf, 64, "Ch %d", m_ch+1);
		}
		glPrint(buf);
	}
	int updateTemplate(int unit)	// why / when is this called?
	{
		if (unit < 0 || unit >= NSORT) {
			warn("unit out of range in Channel::updateTemplate()");
			return false;
		}

		float aperture = 0;
		float color[3] = {0.f, 0.f, 0.f};
		switch (unit) {	// 0-indexed
		case 0:
			color[0] =  31.f/255.f;
			color[1] = 120.f/255.f;
			color[2] = 180.f/255.f;
			break;
		case 1:
			color[0] = 227.f/255.f;
			color[1] =  26.f/255.f;
			color[2] =  28.f/255.f;
			break;
		case 2:
			color[0] =  51.f/255.f;
			color[1] = 160.f/255.f;
			color[2] =  44.f/255.f;
			break;
		case 3:
			color[0] = 255.f/255.f;
			color[1] = 127.f/255.f;
			color[2] =   0.f/255.f;
			break;
		}
		float temp[NWFSAMP];
		m_pcaVbo->getTemplate(temp, aperture, color);
		for (int i=0; i<NWFSAMP; i++) {
			m_template[unit][i] = temp[i];
		}
		m_aperture[unit] = aperture;
		return true;
	}
	void resetPca()
	{
		//should be called if threshold, gain
		//(or really anything else) is changed / invalidates current display.
		m_pcaVbo->reset();
		m_wfVbo->setFade(1.7);//clear it a bit quicker.
		m_usVbo->setFade(1.7);
		for (int u=0; u<NSORT; u++) {
			m_lastSpike[u] = 0;
			for (size_t i=0; i < sizeof(m_isi[0])/sizeof(m_isi[0][0]); i++) {
				m_isi[u][i] = 0;
			}
		}
	}
	void computePca()
	{
		long double t;
		int nsamp = MIN((int)m_pcaVbo->m_w, m_pcaVbo->m_rows);
		if (nsamp < NWFSAMP) {
			printf("Channel::computePca %d (%d) samples, not enough\n",
			       nsamp, (int)m_pcaVbo->m_w);
			return;
		}

		mat X(nsamp, NWFSAMP);
		for (int i=0; i<nsamp; i++) {
			for (int j=0; j<NWFSAMP; j++) {
				X(i, j) = m_pcaVbo->m_wf[i*NWFSAMP + j];
			}
		}

		printf("PCA [%d x %d]\t", nsamp, NWFSAMP);

		// standardize the data
		t = gettime();
		mat C = cov(X);
		printf("cov: %0.3Lf ms\t", 1e3*(gettime()-t));

		// compute eigenvalues and eigenvectors
		t = gettime();
		vec eigval;
		mat eigvec;
		eig_sym(eigval, eigvec, C);

		// sort descending
		vec d = fliplr(eigval);
		mat V = fliplr(eigvec);

		// normalize the eigenvectors by the sqrt of the eigenvalues
		for (int k=0; k<2; k++) {
			m_pcaScl[k] = sqrt(d(k));
			for (int i=0; i<NWFSAMP; i++) {
				m_pca[k][i] = V(i,k) / m_pcaScl[k];
			}
		}

		// recalculate the pca points for immediate display.
		t = gettime();
		for (int i=0; i<nsamp; i++) {
			for (int k=0; k<2; k++) {
				float pca = 0;
				for (int j=0; j<NWFSAMP; j++) {
					pca += m_pcaVbo->m_wf[i*NWFSAMP + j] * m_pca[k][j];
				}
				m_pcaVbo->m_f[i*6 + k] = pca;
			}
		}
		printf("eig: %0.3Lf ms\t", 1e3*(gettime()-t));

		t = gettime();
		m_pcaVbo->m_r = 0;
		m_pcaVbo->m_w = nsamp; //force a copy-over of the whole thing.
		m_pcaVbo->copy(false,true);
		printf("cpy: %0.3Lf ms\n", 1e3*(gettime()-t));

#ifdef DEBUG
		X.save("waveforms.h5", hdf5_binary);
		C.save("pca_cov.h5", hdf5_binary);
		V.save("pca_v.h5", hdf5_binary);
#endif
	}

	void updateISI(int unit, int sample)
	{
		//this used for calculating ISI.
		unit -= 1; //comes in 0 = unsorted.
		if (unit >=0 && unit < NSORT) {
			int dsamp = sample - m_lastSpike[unit];
			int b = floor(dsamp/SRATE_KHZ - 0.5);
			int nisi = (int)(sizeof(m_isi[0])/sizeof(m_isi[0][0]));
			//printf("%d isi %d u %d\n", m_ch, b, unit);
			if (b > 0 && b < nisi)
				m_isi[unit][b]++;
			m_lastSpike[unit] = sample;
		}
	}
	float getAperture(int unit)
	{
		if (unit >=0 && unit < NSORT) {
			return m_aperture[unit];
		} else return 0.f;
	}
	float getApertureUv(int unit)
	{
		//returns the aperture in uv. (uv^2 is less intuitive)
		//input samples are 1 = 10mV.
		//so waveform misalignment of 0.1 (1mV) -> 0.01; should be represented as
		//1000uv^2, hence have to multiply by 1e8.
		//sqrt(m_aperture * 1e8)
		if (unit >=0 && unit < NSORT) {
			return sqrt(m_aperture[unit] * 1e8);
		} else return 0.f;
	}
	void setApertureUv(int unit, float aper)
	{
		if (unit >=0 && unit < NSORT) {
			setApertureLocal( unit, aper*aper / 1e8);
		}
	}
};

#endif
