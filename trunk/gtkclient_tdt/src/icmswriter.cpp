#include <iostream>
#include <fstream>
#include "icmswriter.h"

using namespace google::protobuf::io;

ICMSWriter::ICMSWriter()
{
	m_enabled = false;
}

ICMSWriter::~ICMSWriter()
{
	if (m_enabled)
		close();
}

bool ICMSWriter::open(const char *fn)
{

	m_os.open(fn, std::ofstream::binary | std::ofstream::trunc);
	if (m_os.fail())
		return false;

	m_w = 0;
	m_r = 0;

	fprintf(stdout,"ICMSWriter: started logging to %s.\n",fn);

	m_enabled = true;

	return true;
}

bool ICMSWriter::close()
{
	if (!write())
		return false;
	m_enabled = false;

	m_os.flush();
	if (m_os.fail())
		return false;
	m_os.close();

	m_w = 0;
	m_r = 0;
	return true;
}

bool ICMSWriter::add(ICMS *o)
{
	if (!m_enabled)
		return true;

	long w = m_w; // atomic;

	unsigned int magic = ICMS_MAGIC;
	unsigned int sz = o->ByteSize();

	unsigned int *tmp = (unsigned int*)malloc(sizeof(magic)+sizeof(sz)+sz);
	unsigned int* u = tmp; 
	*u++ = magic; 
	*u++ = sz; 
	o->SerializeToArray((void*)u, sz);
	char* cp = (char*)tmp; 
	for (int i=0; i<sz+8; i++) {
		m_buf[w & ICMS_MASK] = cp[i];
		w++;
	}

	m_w = w; // atomic

	free(tmp);

	return true;
}

bool ICMSWriter::write()   // call from one and only one thread
{
	if (!m_enabled)
		return true;

	long w = m_w;   // atomic

	while(m_r<w) {
		m_os.write(&(m_buf[m_r & ICMS_MASK]), 1);
		if (m_os.fail()) {
			fprintf(stderr,"ERROR: ICMSWriter write failed!\n");
			return false;
		}
		m_r++; // atomic
	}  
	return true;
}

bool ICMSWriter::enabled()
{
	return m_enabled;
}

float ICMSWriter::capacity()
{
	return (float)(m_w-m_r)/ICMS_BUF_SIZE;
}

long ICMSWriter::bytes()
{
	return m_r * sizeof(char);
}