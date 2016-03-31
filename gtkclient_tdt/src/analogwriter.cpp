#include <iostream>
#include <fstream>
#include "util.h"
#include "analogwriter.h"

using namespace google::protobuf::io;
using namespace moodycamel;

AnalogWriter::AnalogWriter()
{
	m_q = NULL;
}

bool AnalogWriter::open(const char *fn, AnalogFileHeader *h)
{
	if (isEnabled())
		return false;
	if (!DataWriter::open(fn)) {
		return false;
	}
	m_q = new ReaderWriterQueue<AnalogData *>(ANALOG_BUF_SIZE);

	if (!writeFileHeader(h)) {
		AnalogWriter::close();
		return false;
	}

	enable();
	return true;
}

bool AnalogWriter::close()
{
	disable();
	delete m_q;
	m_q = NULL;
	return DataWriter::close();
}

bool AnalogWriter::add(AnalogData *o)	// call from a single producer thread
{
	if (!isEnabled()) {
		return false;
	}
	return m_q->enqueue(o);	// todo: what if this (memory alloc) fails
}

bool AnalogWriter::write()   // call from a single consumer thread
{
	if (!isEnabled())
		return false;

	bool dequeued;
	do {
		AnalogData *o;
		dequeued = m_q->try_dequeue(o);
		if (dequeued) {

			u32 sz = o->ByteSize();
			size_t n = sizeof(sz)+sz;
			u32 *tmp = (u32 *)malloc(n);
			u32 *u = tmp;
			*u++ = sz;
			o->SerializeToArray((void *)u, sz);
			char *c = (char *)tmp;
			m_os.write(c, n);
			if (m_os.fail()) { // write lost, should we requeue?
				fprintf(stderr,"ERROR: %s write failed!\n", name());
				free(tmp);
				delete o;
				return false;
			}
			m_num_written += n;
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
bool AnalogWriter::writeFileHeader(AnalogFileHeader *h)
{
	// First send the magic at the start of the file
	u32 magic = ANALOG_MAGIC;
	u32 sz = h->ByteSize();
	size_t n = sizeof(magic)+sizeof(sz)+sz;
	u32 *tmp = (u32 *)malloc(n);
	u32 *u = tmp;
	*u++ = magic;
	*u++ = sz;
	h->SerializeToArray((void *)u, sz);
	char *c = (char *)tmp;
	m_os.write(c, n);
	if (m_os.fail()) { // write lost, should we requeue?
		fprintf(stderr,"ERROR: %s write failed! Data lost!\n", name());
		free(tmp);
		delete h;
		return false;
	}
	m_num_written += n;
	free(tmp);
	delete h;	// free the memory that was pointed to
	return true;
}
