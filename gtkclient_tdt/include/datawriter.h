/* datawriter.h - inspired by protobuflogger.h, by zheng */
#include <gtk/gtk.h>
#include <iostream>
#include <fstream>
#include <atomic>
#include "readerwriterqueue.h"
#include "icms.pb.h"
#include "analog.pb.h"

#ifndef __DATAWRITER_H__
#define	__DATAWRITER_H__

using namespace std;
using namespace google::protobuf::io;
using namespace gtkclient;
using namespace moodycamel;

enum {
	ANALOG_BUF_SIZE = 65536,
	ANALOG_MAGIC 	= 0xbeefbabe,
	ICMS_BUF_SIZE 	= 65536,
	ICMS_MAGIC 		= 0xdeadbabe
};

class DataWriter
{
protected:
	std::atomic<bool> m_enabled;	// are we writing?
	size_t m_num_written; 			// how many objects have been written
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
	virtual bool enabled();

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

class AnalogWriter : public DataWriter
{
protected:
	ReaderWriterQueue<Analog *> *m_q; // the protobuf(fer)

public:
	AnalogWriter();

	// start the writer. fn is filename
	bool open(const char *fn);

	//flush and close log file
	bool close();

	// log an analog protobuf
	bool add(Analog *a);

	// write the buffer to disk
	bool write();

	// returns the number of objects in the queue
	size_t capacity();

	const char *name() {
		return "Analog Writer v3";
	};

protected:

};

class ICMSWriter : public DataWriter
{
protected:
	ReaderWriterQueue<ICMS *> *m_q; // the protobuf(fer)

public:
	ICMSWriter();

	// start the writer. fn is filename
	bool open(const char *fn);

	//flush and close log file
	bool close();

	// log an icms protobuf
	bool add(ICMS *a);

	// write the buffer to disk
	bool write();

	// returns the number of objects in the queue
	size_t capacity();

	const char *name() {
		return "ICMS Writer v3";
	};

protected:

};


#endif
