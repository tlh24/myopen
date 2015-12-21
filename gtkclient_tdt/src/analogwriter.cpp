#include <iostream>
#include <fstream>
#include "analogwriter.h"

using namespace google::protobuf::io;
using namespace moodycamel;

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
