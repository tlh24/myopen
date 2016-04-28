/* H5Writer.h - inspired by protobuflogger.h, by zheng */
#include <gtk/gtk.h>
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
	hid_t			m_h5topgroup;	// assume one top group per file
	vector<hid_t>	m_h5dataspaces;	// [ containers for the datapsaces
	vector<hid_t> 	m_h5props;		// [ and the chunk properties
	mutex 			m_mtx;			// so we dont disable while writing
	GtkWidget 		*m_w;			// for drawing to the gui
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

	// returns the number of objects in the queue
	virtual size_t capacity() = 0;

	// returns the number of bytes written
	virtual size_t bytes();

	// returns the name of the file we are writing to
	virtual string filename();

	virtual void registerWidget(GtkWidget *w);

	virtual void draw();

	virtual void setUUID(char *uuid_str);

	virtual const char *name() = 0;
protected:
	void shuffleDataset(hid_t prop);
	void deflateDataset(hid_t prop);
};

#endif
