#include <string>
#include <vector>
#include <atomic>
#include <mutex>
#include "hdf5.h"

#ifndef __H5WRITER_H__
#define	__H5WRITER_H__

using namespace std;

class H5Writer
{
private:
	atomic<bool> m_enabled;			// are we writing?

protected:
	string 			m_fn; 			// the file name
	hid_t 			m_h5file;		// the h5 file
	vector<hid_t>	m_h5groups;		// for the groups
	vector<hid_t>	m_h5dataspaces;	// [ containers for the datapsaces
	vector<hid_t> 	m_h5props;		// [ and the chunk properties
	mutex 			m_mtx;			// so we dont disable while writing
	bool			m_deflate;		// should we compress?
	int 			m_deflate_level; // 0 [uncompressed]- 9 [max compressed]
	bool 			m_shuffle;		// makes compression more efficient

public:
	H5Writer();

	virtual ~H5Writer();

	// start the writer. fn is filename
	virtual bool open(const char *fn);

	// close log file
	virtual bool close();

	// is the writer enabled?
	virtual bool isEnabled();

	// kinda on the nose
	virtual void enable();
	virtual void disable();

	void setDeflate(bool b);
	void setDeflateLevel(int x);
	void setShuffle(bool b);

	// returns the number of bytes written
	virtual size_t bytes();

	// returns the name of the file we are writing to
	virtual string filename();

	virtual void setUUID(char *uuid_str);

	virtual void setVersion();

	void setFileCreateDate(char *str);

	void setSessionStartTime(char *str);

	void setSessionDescription(const char *str);

	virtual const char *name() = 0;
protected:
	void shuffleDataset(hid_t prop);
	void deflateDataset(hid_t prop);
	bool createGroup(const char *s);
};

#endif
