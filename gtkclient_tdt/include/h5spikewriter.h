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
	size_t			m_nc;			// num channels
	size_t			m_nu;			// num units (including unsorted)
	size_t			m_nwf;			// number of samples in a wf
	vector<hid_t> 	m_h5groups;		// holds a group for each ch and unit
	map<pair<i16, i16>, hid_t> m_h5Dtk;	// holds a tk dataset for each (ch,un)
	map<pair<i16, i16>, hid_t> m_h5Dts;	// holds a ts dataset for each (ch,un)
	map<pair<i16, i16>, hid_t> m_h5Dwf;	// holds a wf dataset for each (ch,un)
	map<pair<i16, i16>, size_t> m_ns;	// num samples written for each (ch,un)
	ReaderWriterQueue<SPIKE *> *m_q; 	// the queue for data packets

public:
	H5SpikeWriter();
	~H5SpikeWriter();

	// start the writer. fn is filename
	//using H5Writer::open;
	//bool open(const char *fn, size_t nc, size_t nu, size_t nwf);

	//bool setMetaData(double sr, float *scale, char *name, int slen);

	//flush and close log file
	//bool close();

	// log an analog protobuf
	//bool add(SPIKE *s);

	// write the buffer to disk
	//bool write();

	// returns the number of objects in the queue
	//size_t capacity();

	//size_t bytes();

	const char *name()
	{
		return "H5 Spike Writer v1.2";
	};

protected:
};

#endif
