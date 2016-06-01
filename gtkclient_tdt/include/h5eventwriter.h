#include "h5writer.h"

#ifndef __H5EventWriter_H__
#define	__H5EventWriter_H__

class H5EventWriter : public H5Writer
{
protected:
	vector<std::string>	m_names;
	vector<hid_t>	m_h5Devents;
	vector<hid_t> 	m_h5Dts;
	vector<hid_t> 	m_h5Dtk;
	size_t			m_nc;		// num channels
	vector<size_t>  m_ns;		// num samples allocated to each dataset

public:
	H5EventWriter();
	~H5EventWriter();

	// start the writer. fn is filename
	using H5Writer::open;
	bool open(const char *fn, size_t nc, std::vector<std::string> names);

	bool setMetaData();

	//flush and close log file
	bool close();

	// write the buffer to disk
	bool write(u16 ec, i64 tk, double ts, u16 ev);

	const char *name()
	{
		return "H5 Event Writer v1.0";
	};
};

#endif