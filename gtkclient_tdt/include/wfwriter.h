#ifndef __WFPACKET_H__
#define __WFPACKET_H__

//#define _LARGEFILE_SOURCE enabled by default.
#define _FILE_OFFSET_BITS 64

struct wfpak {
	double time; //wall clock time of spike, aligned to beginning.
	long	ticks; //tdt ticks of spike. 8 bytes.
	short	channel;
	short	unit;
	short len;
	short	wf[32];
};
#define WFBUFSIZ (1024*512) //this is much larger than needed, but eh, insurance.
#define WFBUFMASK (WFBUFSIZ-1)

class WfWriter
{
public:
	std::atomic<long> m_w; //this is great!
	std::atomic<bool>	m_enable;
	long m_r;
	wfpak m_d[WFBUFSIZ];
	FILE *m_fid;

	WfWriter() {
		m_w = m_r = 0;
		m_enable = false;
		m_fid = 0;
	}
	~WfWriter() {}
	FILE *open(char *name) {
		m_fid = fopen(name, "w");
		if (m_fid == 0)
			std::cout << "could not open " << name << std::endl;
		else
			m_enable = true;
		return m_fid;
	}
	void close() {
		if (m_enable) {
			write();
			fclose(m_fid);
			m_enable = false;
			m_w = m_r = 0;
		}
	}
	void add(wfpak *wf) {  //non-blocking. call from po8e thread.
		if (m_enable) {
			long w = m_w++; //must be atomic.
			memcpy(&(m_d[w & WFBUFMASK]), wf, sizeof(wfpak));
		}
	}
	int write() { //call from another thread.
		if (m_enable) {
			long w = m_w;
			for (; m_r<w; m_r++) {
				unsigned int tmp = 0xc0edfad0; //magic number, for alignment.
				fwrite((void *)&tmp, 4, 1, m_fid);
				fwrite((void *)&(m_d[m_r & WFBUFMASK]), sizeof(wfpak), 1, m_fid);
			}
			return 1;
		}
		return 0;
	}
	long bytes() {
		return m_r * sizeof(wfpak);
	}
	//convert the file to matlab.
};
#endif

