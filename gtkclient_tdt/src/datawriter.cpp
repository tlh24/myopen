#include <gtk/gtk.h>
#include <iostream>
#include <fstream>
#include "datawriter.h"

DataWriter::DataWriter()
{
	m_enabled = false;
	m_num_written = 0;
	m_fn.assign("");
	m_w = NULL;
}

DataWriter::~DataWriter()
{
	close();
}

bool DataWriter::open(const char *fn)
{
	if (isEnabled()) {
		return false;
	}
	m_os.open(fn, std::ofstream::binary | std::ofstream::trunc);

	if (m_os.fail()) {
		return false;
	}

	m_fn.assign(fn);

	m_num_written = 0;

	fprintf(stdout,"%s: started logging to %s.\n", name(), fn);

	// dont enable here: rather, enable in the subclasses
	//enable();

	return true;
}

bool DataWriter::close()
{
	if (isEnabled()) {	// subclass should have disabled already honestly.
		disable();
		fprintf(stdout,"%s: stopped logging to file\n", name());
		m_num_written = 0;
		m_fn.clear();
		m_os.flush();
		if (m_os.fail()) {
			return false;
		}
		m_os.close();
	}
	return true;
}

bool DataWriter::isEnabled()
{
	return m_enabled;
}

void DataWriter::enable()
{
	m_enabled = true;
}

void DataWriter::disable()
{
	m_enabled = false;
}

size_t DataWriter::bytes()
{
	return m_num_written * sizeof(char);
}

string DataWriter::filename()
{
	return m_fn;
}

void DataWriter::registerWidget(GtkWidget *w)
{
	m_w = w;
}

void DataWriter::draw()
{
	if (isEnabled()) {
		size_t n = filename().find_last_of("/");
		char str[256];
		snprintf(str, 256, "%s: %.2f MB",
		         filename().substr(n+1).c_str(),
		         (double)bytes()/1e6);
		gtk_label_set_text(GTK_LABEL(m_w), str);
	}
}
