#ifndef __ARTIFACT_H__
#define __ARTIFACT_H__

#define ARTBUF	256

class Artifact {
	
	public:
		float 	m_buf[ARTBUF];	// the artifact buffer
		i64		m_index;		// index into the buffer, or -1
		i64		m_navg;			// number of examples of the artifact in the buffer

		Artifact() {
			for (int i=0;i<ARTBUF;i++) {
				m_buf[i] = 0.f;
			}
			m_index = -1;
			m_navg  = 0;
		}
};

#endif