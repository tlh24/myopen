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

	unsigned int tmp = ICMS_MAGIC;
	memcpy(&m_buf[w & ICMS_MASK], &tmp, sizeof(tmp));
	w += sizeof(tmp);

	unsigned int sz = o->ByteSize();
	memcpy(&m_buf[w & ICMS_MASK], &sz, sizeof(sz));
	w += sizeof(sz);

	//printf("packet sz: %d\n",sz);
	o->SerializeToArray(&m_buf[w & ICMS_MASK], sz);
	w += sz;

	m_w = w; // atomic

	return true;
}

bool ICMSWriter::write()   // call from one and only one thread
{
	if (!m_enabled)
		return true;

	long w = m_w;   // atomic
	if (w-m_r <= 0)
		return true;

	// we can write multiple packets at once,
	// but we need to be aligned on magic
	unsigned int magic;
	memcpy(&magic, &m_buf[m_r & ICMS_MASK], sizeof(magic));

	if (magic != ICMS_MAGIC) {
		printf("magic problem!\n");
		return false;
	}

	m_os.write(&m_buf[m_r & ICMS_MASK], w-m_r);
	if (m_os.fail()) {
		fprintf(stderr,"ERROR: ICMSWriter write failed!\n");
		return false;
	}
	m_r = w;    // atomic

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