/* icmswriter.h - inspired by protobuflogger.h, by zheng */
#include <iostream>
#include <fstream>
#include <atomic>
#include "analog.pb.h"

#ifndef __ANALOGWRITER_H__
#define	__ANALOGWRITER_H__

#define ANALOG_BUF_SIZE (67108864) // BYTES, MUST BE POWER OF 2
#define ANALOG_MASK (ANALOG_BUF_SIZE-1)
#define ANALOG_MAGIC 0xbeefbabe

using namespace std;
using namespace google::protobuf::io;
using namespace gtkclient;

class AnalogWriter
{
protected:
	char m_buf[ANALOG_BUF_SIZE];      // the protobuf(fer)
	std::atomic<size_t> m_w;       // atomic write pointer
	std::atomic<size_t> m_r;       // atomic read pointer
	std::atomic<bool> m_enabled; // are we writing?
	std::string m_fn; // the file name
	ofstream m_os; // object for writing to file

public:
	AnalogWriter();

	virtual ~AnalogWriter();

	// start the writer. fn is filename
	bool open(const char *fn);

	//flush and close log file
	bool close();

	// log an icms protobuf
	bool add(Analog *a);

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
		return "Analog Writer v1";
	};

protected:

};
#endif
