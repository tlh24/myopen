#include <iostream>
#include <fstream>
#include <atomic>
#include "readerwriterqueue.h"
#include "datawriter.h"
#include "icms.pb.h"

#ifndef __ICMSWRITER_H__
#define	__ICMSWRITER_H__

using namespace std;
using namespace google::protobuf::io;
using namespace gtkclient;
using namespace moodycamel;

enum {
	ICMS_BUF_SIZE 	= 65536,
	ICMS_MAGIC 		= 0xdeadbabe
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

	const char *name()
	{
		return "ICMS Writer v3";
	};

protected:

};

#endif
