#include <iostream>
#include <fstream>
#include "analogwriter.h"

using namespace google::protobuf::io;

AnalogWriter::AnalogWriter()
{
	m_enabled = false;
	m_fn.assign("");
}

AnalogWriter::~AnalogWriter()
{
	if (m_enabled)
		close();
}

bool AnalogWriter::open(const char *fn)
{
	m_os.open(fn, std::ofstream::binary | std::ofstream::trunc);
	if (m_os.fail())
		return false;

	m_fn.assign(fn);

	m_w = 0;
	m_r = 0;

	fprintf(stdout,"AnalogWriter: started logging to %s.\n",fn);

	m_enabled = true;

	return true;
}

bool AnalogWriter::close()
{
	if (enabled()) {
		if (!write())
			return false;
		m_enabled = false;

		m_os.flush();
		if (m_os.fail())
			return false;
		m_os.close();

		m_w = 0;
		m_r = 0;

		fprintf(stdout,"AnalogWriter: stopped logging to file\n");
	}

	return true;
}

bool AnalogWriter::add(Analog *o)
{
	if (!m_enabled)
		return true;

	std::atomic<long> w; 
	w = m_w; 

	unsigned int magic = ANALOG_MAGIC;
	unsigned int sz = o->ByteSize();

	unsigned int *tmp = (unsigned int *)malloc(sizeof(magic)+sizeof(sz)+sz);
	unsigned int *u = tmp;
	*u++ = magic;
	*u++ = sz;
	o->SerializeToArray((void *)u, sz);
	char *cp = (char *)tmp;
	for (unsigned int i=0; i<sz+8; i++) {
		m_buf[w & ANALOG_MASK] = cp[i];
		w++;
	}

	m_w = w; // atomic

	free(tmp);

	return true;
}

bool AnalogWriter::write()   // call from one and only one thread
{
	if (!m_enabled)
		return true;

	std::atomic<long> w; 
	w = m_w;   

	while (m_r<w) {
		m_os.write(&(m_buf[m_r & ANALOG_MASK]), 1);
		if (m_os.fail()) {
			fprintf(stderr,"ERROR: AnalogWriter write failed!\n");
			return false;
		}
		m_r++; // atomic
	}
	return true;
}

bool AnalogWriter::enabled()
{
	return m_enabled;
}

float AnalogWriter::capacity()
{
	return (float)(m_w-m_r)/ANALOG_BUF_SIZE;
}

long AnalogWriter::bytes()
{
	return m_r * sizeof(char);
}

string AnalogWriter::filename()
{
	return m_fn;
}