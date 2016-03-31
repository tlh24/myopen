#include "h5writer.h"
#include "readerwriterqueue.h"

#ifndef __H5H5AnalogWriter_H__
#define	__H5H5AnalogWriter_H__

using namespace std;
using namespace moodycamel;

typedef struct AD {
	i64 	tk;	// the tick for the first sample
	double 	ts;	// the ts for the first sample
	size_t 	nc;	// num channels
	size_t 	ns;	// num samples
	i16 	*data;
} AD;

enum {
	H5A_BUF_SIZE = 65536,
};

class H5AnalogWriter : public H5Writer
{
protected:
	hid_t 	m_h5dataspace;
	hid_t 	m_h5chunkprops;
	hid_t 	m_h5dataset;
	ReaderWriterQueue<AD *> *m_q; // the queue for data packets
	size_t	m_nc;	// num channels
	size_t  m_ns; 	// number of samples allocated to dataset

public:
	H5AnalogWriter();

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
		return "H5 Analog Writer v1";
	};

protected:
};

#endif
