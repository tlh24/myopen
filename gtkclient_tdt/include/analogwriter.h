#include <iostream>
#include <fstream>
#include <atomic>
#include "readerwriterqueue.h"
#include "datawriter.h"
#include "analog.pb.h"

#ifndef __ANALOGWRITER_H__
#define	__ANALOGWRITER_H__

using namespace std;
using namespace google::protobuf::io;
using namespace gtkclient;
using namespace moodycamel;

enum {
	ANALOG_BUF_SIZE = 65536,
	ANALOG_MAGIC 	= 0xbeefbabe,
};

class AnalogWriter : public DataWriter
{
protected:
	ReaderWriterQueue<AnalogData *> *m_q; // the protobuf(fer)

public:
	AnalogWriter();

	// start the writer. fn is filename
	using DataWriter::open;
	bool open(const char *fn,  AnalogFileHeader *h);

	//flush and close log file
	bool close();

	// log an analog protobuf
	bool add(AnalogData *a);

	// write the buffer to disk
	bool write();

	// returns the number of objects in the queue
	size_t capacity();

	const char *name()
	{
		return "Analog Writer v4";
	};

protected:
	bool writeFileHeader(AnalogFileHeader *h);
};

#endif
