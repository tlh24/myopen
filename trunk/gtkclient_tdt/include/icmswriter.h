/* icmswriter.h - inspired by protobuflogger.h, by zheng */
#include <iostream>
#include <fstream>
#include <atomic>
#include "icms.pb.h"

#ifndef __ICMSWRITER_H__
#define	__ICMSWRITER_H__

#define ICMS_BUF_SIZE (33554432) // BYTES, MUST BE POWER OF 2
#define ICMS_MASK (ICMS_BUF_SIZE-1)
#define ICMS_MAGIC 0xdeadbabe

using namespace std;
using namespace google::protobuf::io;
using namespace gtkclient;

class ICMSWriter
{
protected:
	char m_buf[ICMS_BUF_SIZE];      // the protobuf(fer)
	std::atomic<long> m_w;       // atomic write pointer
	std::atomic<long> m_r;       // atomic read pointer
	std::atomic<bool> m_enabled; // are we writing?
	std::string m_fn; // the file name
	ofstream m_os; // object for writing to file

public:
	ICMSWriter();

	virtual ~ICMSWriter();

	// start the writer. fn is filename
	bool open(const char *fn);

	//flush and close log file
	bool close();

	// log an icms protobuf
	bool add(ICMS *a);

	// write the buffer to disk
	bool write();

	// is the writer enabled?
	bool enabled();

	// returns buffer capcity as a fraction. 1 means filled. 0 means empty.
	float capacity();

	// returns the number of bytes written
	long bytes();

	// returns the name of the file we are writing to
	string filename();

	const char *name() {
		return "ICMS Writer v2";
	};

protected:

};
#endif
