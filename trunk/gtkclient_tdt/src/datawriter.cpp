#include <iostream>
#include <fstream>
#include "readerwriterqueue.h"
#include "datawriter.h"

using namespace google::protobuf::io;
using namespace moodycamel;

DataWriter::DataWriter()
{
	m_enabled = false;
	m_fn.assign("");
}

DataWriter::~DataWriter()
{
	close();
}

bool DataWriter::open(const char *fn)
{
	if (m_enabled)
		return false;
	m_os.open(fn, std::ofstream::binary | std::ofstream::trunc);
	if (m_os.fail())
		return false;

	m_fn.assign(fn);

	m_num_written = 0;

	fprintf(stdout,"%s: started logging to %s.\n", name(), fn);

	m_enabled = true;

	return true;
}

bool DataWriter::close()
{
	if (m_enabled) {

		m_enabled = false;

		fprintf(stdout,"%s: stopped logging to file\n", name());

		m_num_written = 0;

		m_fn.clear();

		m_os.flush();
		if (m_os.fail())
			return false;
		m_os.close();
	}

	return true;
}

bool DataWriter::enabled()
{
	return m_enabled;
}

size_t DataWriter::bytes()
{
	return m_num_written * sizeof(char);
}

string DataWriter::filename()
{
	return m_fn;
}



AnalogWriter::AnalogWriter()
{
	m_q = NULL;
}

bool AnalogWriter::open(const char *fn)
{
	if (enabled())
		return false;
	m_q = new ReaderWriterQueue<Analog *>(ANALOG_BUF_SIZE);
	return DataWriter::open(fn);
}

bool AnalogWriter::close()
{
	if (enabled()) {
		delete m_q;
		m_q = NULL;
	}
	return DataWriter::close();
}

bool AnalogWriter::add(Analog *o)	// call from a single producer thread
{
	if (!m_enabled)
		return false;

	return m_q->enqueue(o);	// todo: what if this (memory alloc) fails
}

bool AnalogWriter::write()   // call from a single consumer thread
{
	if (!m_enabled)
		return false;

	bool dequeued;
	do {
		Analog *o;
		dequeued = m_q->try_dequeue(o);
		if (dequeued) {

			unsigned int magic = ANALOG_MAGIC;
			unsigned int sz = o->ByteSize();
			unsigned int *tmp = (unsigned int *)malloc(sizeof(magic)+sizeof(sz)+sz);
			unsigned int *u = tmp;
			*u++ = magic;
			*u++ = sz;
			o->SerializeToArray((void *)u, sz);
			char *c = (char *)tmp;
			m_os.write(c, sz+8);
			if (m_os.fail()) { // write lost, should we requeue?
				fprintf(stderr,"ERROR: %s write failed!\n", name());

				return false;
			}
			m_num_written += sz+8;
			free(tmp);
			delete o;	// free the memory that was pointed to
		}
	} while (dequeued);

	return true;
}

size_t AnalogWriter::capacity()
{
	if (!m_q)
		return 0;
	return m_q->size_approx();
}



ICMSWriter::ICMSWriter()
{
	m_q = NULL;
}

bool ICMSWriter::open(const char *fn)
{
	if (enabled())
		return false;
	m_q = new ReaderWriterQueue<ICMS *>(ICMS_BUF_SIZE);
	return DataWriter::open(fn);
}

bool ICMSWriter::close()
{
	if (enabled()) {
		delete m_q;
		m_q = NULL;
	}
	return DataWriter::close();
}

bool ICMSWriter::add(ICMS *o)	// call from a single producer thread
{
	if (!m_enabled)
		return false;

	return m_q->enqueue(o);	// todo: what if this (memory alloc) fails
}

bool ICMSWriter::write()   // call from a single consumer thread
{
	if (!m_enabled)
		return false;

	bool dequeued;
	do {
		ICMS *o;
		dequeued = m_q->try_dequeue(o);
		if (dequeued) {

			unsigned int magic = ICMS_MAGIC;
			unsigned int sz = o->ByteSize();
			unsigned int *tmp = (unsigned int *)malloc(sizeof(magic)+sizeof(sz)+sz);
			unsigned int *u = tmp;
			*u++ = magic;
			*u++ = sz;
			o->SerializeToArray((void *)u, sz);
			char *c = (char *)tmp;
			m_os.write(c, sz+8);
			if (m_os.fail()) { // write lost, should we requeue?
				fprintf(stderr,"ERROR: %s write failed!\n", name());

				return false;
			}
			m_num_written += sz+8;
			free(tmp);
			delete o;	// free the memory that was pointed to
		}
	} while (dequeued);

	return true;
}

size_t ICMSWriter::capacity()
{
	if (!m_q)
		return 0;
	return m_q->size_approx();
}
