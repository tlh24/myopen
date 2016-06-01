#include "h5writer.h"

#ifndef __H5AnalogWriter_H__
#define	__H5AnalogWriter_H__

class H5AnalogWriter : public H5Writer
{
protected:
	hid_t 			m_h5Dsamples;
	hid_t 			m_h5Dtk;
	hid_t 			m_h5Dts;
	size_t			m_nc;			// num channels
	size_t  		m_ns;			// number of samples allocated to dataset

public:
	H5AnalogWriter();
	~H5AnalogWriter();

	// start the writer. fn is filename
	using H5Writer::open;
	bool open(const char *fn, size_t nc);

	bool setMetaData(float scale, char *name, size_t slen);

	//flush and close log file
	bool close();

	// write the buffer to disk
	bool write(u64 nc, u64 ns, i64 *tk, double *ts, i16 *data);

	const char *name()
	{
		return "H5 Analog Writer v1.6";
	};
};

#endif
