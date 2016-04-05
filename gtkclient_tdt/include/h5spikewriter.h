#include <utility>
#include <map>
#include "h5writer.h"
#include "readerwriterqueue.h"

#ifndef __H5SpikeWriter_H__
#define	__H5SpikeWriter_H__

using namespace std;
using namespace moodycamel;

typedef struct SPIKE {
	i16		ch;		// channel (1-indexed), only 32767 channels okay? :)
	i16		un;		// unit (0=unsorted, 1=a, 2=b, 3=c, etc)
	i64		tk; 	// tdt tick of the spike, aligned to the start of the wf
	double 	ts; 	// the timesamp of spike, aligned to the start of the wf
	size_t	ns;		// number of waveform samples
	i16		*wf;	// the waveform
} SPIKE;

enum {
	H5S_BUF_SIZE = 65536,
};

class H5SpikeWriter : public H5Writer
{
protected:
	vector<hid_t>	m_h5Gchans;
	map<pair<i16, i16>, hid_t> m_h5Gchanunits;
	map<pair<i16, i16>, hid_t> m_h5Gchanunits;
	hid_t 			m_h5Dsamples;
	hid_t 			m_h5Dtk;
	hid_t 			m_h5Dts;
	ReaderWriterQueue<AD *> *m_q; 	// the queue for data packets
	size_t			m_nc;			// num channels
	size_t 			m_nu;			// num units (including unsorted)
	size_t  		m_ns;			// number of samples allocated to dataset

public:
	H5SpikeWriter();
	~H5SpikeWriter();

	// start the writer. fn is filename
	using H5Writer::open;
	bool open(const char *fn, size_t nc);

	bool setMetaData(double sr, float *scale, char *name, int slen);

	//flush and close log file
	bool close();

	// log an analog protobuf
	bool add(AD *a);

	// write the buffer to disk
	bool write();

	// returns the number of objects in the queue
	size_t capacity();

	size_t bytes();

	const char *name()
	{
		return "H5 Analog Writer v1.2";
	};

protected:
};

#endif
