#ifndef __ARTIFACT_H__
#define __ARTIFACT_H__

#define ARTBUF	128	// 64 ~ 2.62 msec ; 96 ~ 3.93 msec ; 128 ~ 5.24 msec
#define NARTPTR	8 // number of artifact buffer pointers

extern int g_spikesCols;
extern float g_artifactDispAtten;

class Artifact
{

public:
	float 	m_wav[RECCHAN *ARTBUF];	// the average artifact buffer
	float	m_std[RECCHAN *ARTBUF];	// the artifact standard deviation
	i64		m_windex[NARTPTR];		// write index into the buffer, or -1
	i64		m_rindex[NARTPTR];		// read index into the buffer, or -1
	i64		m_nsamples;				// number of examples in the average

	// windex is where we are writing into m_wav (and m_now)
	// rindex is where we can read from the buffer to subtract artifact

	float	m_now[RECCHAN *ARTBUF];	// the last captured artifact
	// nb we keep this around not for computing
	// the average, which can be easily done
	// recursively, but for saving snippets of
	//the artifact

	Artifact() {
		for (int i=0; i<RECCHAN*ARTBUF; i++) {
			m_wav[i] = 0.f;
			m_now[i] = 0.f;
		}
		for (int i=0; i<NARTPTR; i++) {
			m_windex[i] = -1;
			m_rindex[i] = -1;
		}
		m_nsamples  = 0;
	}
	~Artifact() {

	}
	void clearArtifacts()  {
		for (int j=0; j<RECCHAN*ARTBUF; j++) {
			m_wav[j] = 0.f;
		}
		m_nsamples = 0;
	}
	void draw() {

		int rows = RECCHAN / g_spikesCols;
		if (RECCHAN % g_spikesCols)
			rows++;
		float xf = g_spikesCols;
		float yf = rows;
		float xz = 2.f/xf;
		float yz = 2.f/yf;

		for (int k=0; k<RECCHAN; k++) {
			float xo = (k%g_spikesCols)/xf;
			float yo = ((k/g_spikesCols)+1)/yf;
			float x = xo*2.f-1.f;
			float y = 1.f-yo*2.f;
			float w = xz;
			float h = yz;

			glColor4ub(221,52,151,255);
			glLineWidth(1.5f);

			glBegin(GL_LINE_STRIP);
			for (int j=0; j<ARTBUF; j++) {
				float f  = m_wav[k*ARTBUF+j];
				float ny = f/g_artifactDispAtten + 0.5f;
				float nx = (float)(j)/((float)ARTBUF-1.f);
				glVertex3f(nx*w+x, ny*h+y, 0.f);
			}
			glColor4f(0.f, 0.f, 0.f, 0.75f);
			glVertex3f(1.f*w+x, 0.5f*h+y, 1.f);
			glVertex3f(0.f*w+x, 0.5f*h+y, 1.f);
			glEnd();

			// channel label. upper left hand corner.
			glColor4f(1.f, 1.f, 1.f, 0.5);
			glRasterPos2f(x, y + h - 14.f*2.f/g_viewportSize[1]); // 14 pixels vertical offset.
			//kearning is from the lower left hand corner.
			char buf[64];
			snprintf(buf, 64, "Ch %d", k);
			glPrint(buf);
		}

		// draw some lines.
		glLineWidth(1.f);
		glBegin(GL_LINES);
		glColor4f(1.f, 1.f, 1.f, 0.4);
		for (int c=1; c<g_spikesCols; c++) {
			float cf = (float)c / g_spikesCols;
			glVertex2f(cf*2.f-1.f, -1.f);
			glVertex2f(cf*2.f-1.f,  1.f);
		}
		for (int r=1; r<rows; r++) {
			float rf = (float)r / rows;
			glVertex2f(-1.f, rf*2.f-1.f);
			glVertex2f( 1.f, rf*2.f-1.f);
		}
		glEnd();

		// xxx chan labels here?

	}
};

#endif