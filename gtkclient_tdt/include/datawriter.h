/* datawriter.h - inspired by protobuflogger.h, by zheng */
#include <gtk/gtk.h>
#include <iostream>
#include <fstream>
#include <atomic>

#ifndef __DATAWRITER_H__
#define	__DATAWRITER_H__

using namespace std;

class DataWriter
{
private:
	std::atomic<bool> m_enabled;	// are we writing?

protected:
	size_t m_num_written; 			// how many bytes have been written
	std::string m_fn; 				// the file name
	ofstream m_os;					// object for writing to file
	GtkWidget *m_w;					// for drawing to the gui

public:
	DataWriter();

	virtual ~DataWriter();

	// start the writer. fn is filename
	virtual bool open(const char *fn);

	//flush and close log file
	virtual bool close();

	// write the buffer to disk
	virtual bool write() = 0;

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

	virtual const char *name() = 0;
};

#endif
