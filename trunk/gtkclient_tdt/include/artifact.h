#ifndef __ARTIFACT_H__
#define __ARTIFACT_H__

#define ARTBUF	64	// ~ 2.6 msec

class Artifact
{

public:
	float 	m_buf[RECCHAN *ARTBUF];	// the artifact buffer
	i64		m_index;				// index into the buffer, or -1
	i64		m_nsamples;				// number of examples in the average

	Artifact() {
		for (int i=0; i<RECCHAN*ARTBUF; i++) {
			m_buf[i] = 0.f;
		}
		m_index = -1;
		m_nsamples  = 0;
	}

};

#endif