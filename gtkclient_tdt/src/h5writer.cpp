#include <array>
#include "h5writer.h"

H5Writer::H5Writer()
{
	m_enabled = false;
	m_h5file = 0;
	m_fn.assign("");
	m_w = NULL;
}

H5Writer::~H5Writer()
{
	close();
}

bool H5Writer::open(const char *fn)
{
	if (isEnabled()) {
		return false;
	}
	// Create a new file using default properties.
	m_h5file = H5Fcreate(fn, H5F_ACC_TRUNC, H5P_DEFAULT, H5P_DEFAULT);

	if (m_h5file < 0) {
		return false;
	}

	m_fn.assign(fn);

	fprintf(stdout,"%s: started logging to %s.\n", name(), fn);

	// we intentionally don't enable here: rather, enable in the subclasses

	return true;
}

bool H5Writer::close()
{

	if (isEnabled()) {	// subclass should have disabled already honestly.
		disable();
		fprintf(stdout,"%s: stopped logging to file\n", name());
		m_fn.clear();
	}

	if (m_h5file) {
		H5Fclose(m_h5file);
		m_h5file = 0;
	}

	return true;
}

bool H5Writer::isEnabled()
{
	return m_enabled;
}

void H5Writer::enable()
{
	m_enabled = true;
}

void H5Writer::disable()
{
	m_enabled = false;
}

size_t H5Writer::bytes()
{
	return 0;
}

string H5Writer::filename()
{
	return m_fn;
}

void H5Writer::registerWidget(GtkWidget *w)
{
	m_w = w;
}

void H5Writer::draw()
{
	if (isEnabled()) {

		size_t n = filename().find_last_of("/");
		char str[256];

		double b = bytes() / 1e6;

		if (b >= 1e3) {
			b /= 1e3;
			snprintf(str, 256, "%s: %.2f GB",
				filename().substr(n+1).c_str(), b);
		} else {
			snprintf(str, 256, "%s: %.2f MB",
				filename().substr(n+1).c_str(), b);
		}
		gtk_label_set_text(GTK_LABEL(m_w), str);
	}
}
