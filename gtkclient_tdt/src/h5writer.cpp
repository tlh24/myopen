#include <string.h>
#include "util.h"
#include "h5writer.h"

H5Writer::H5Writer()
{
	m_enabled = false;
	m_fn.assign("");
	m_h5file = 0;
	m_h5groups.clear();
	m_h5dataspaces.clear();
	m_h5props.clear();
	m_deflate = true;
	m_deflate_level = 1;
	m_shuffle = true;
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

	// these are all required by NWB
	if (!createGroup("/general")) {
		return false;
	}
	if (!createGroup("/acquisition")) {
		return false;
	}
	if (!createGroup("/acquisition/images")) {
		return false;
	}
	if (!createGroup("/acquisition/timeseries")) {
		return false;
	}
	if (!createGroup("/stimulus")) {
		return false;
	}
	if (!createGroup("/stimulus/presentation")) {
		return false;
	}
	if (!createGroup("/stimulus/templates")) {
		return false;
	}
	if (!createGroup("/epochs")) {
		return false;
	}

	hsize_t dims = 0;
	hid_t ds = H5Screate_simple(1, &dims, NULL);
	hid_t atype = H5Tcopy(H5T_C_S1);
	H5Tset_size(atype, 1); // size must be at least 1
	H5Tset_strpad(atype, H5T_STR_NULLTERM);
	hid_t attr = H5Acreate_by_name(m_h5file,
	                               "/epochs", "tags",
	                               atype, ds, H5P_DEFAULT, H5P_DEFAULT, H5P_DEFAULT);
	H5Awrite(attr, atype, "");
	H5Aclose(attr);
	H5Tclose(atype);
	H5Sclose(ds);

	if (!createGroup("/processing")) {
		return false;
	}
	if (!createGroup("/analysis")) {
		return false;
	}

	m_fn.assign(fn);
	fprintf(stdout,"%s: started logging to %s\n", name(), fn);

	// we intentionally don't enable here: rather, enable in the subclasses

	return true;
}

bool H5Writer::close()
{
	for (auto &x : m_h5props) {
		if (x > 0) {
			H5Pclose(x);
		}
	}
	m_h5props.clear();

	for (auto &x : m_h5dataspaces) {
		if (x > 0) {
			H5Sclose(x);
		}
	}
	m_h5dataspaces.clear();

	for (auto &x : m_h5groups) {
		if (x > 0) {
			H5Gclose(x);
		}
	}
	m_h5groups.clear();

	if (m_h5file) {
		H5Fclose(m_h5file);
		m_h5file = 0;
	}

	if (!m_fn.empty()) {
		fprintf(stdout,"%s: stopped logging to %s\n", name(), m_fn.c_str());
		m_fn.clear();
	}

	return true;
}

bool H5Writer::isEnabled()
{
	return m_enabled;
}

void H5Writer::enable()
{
	lock_guard<mutex> lock(m_mtx);
	m_enabled = true;
}

void H5Writer::disable()
{
	lock_guard<mutex> lock(m_mtx);
	m_enabled = false;
}
void H5Writer::setDeflate(bool b)
{
	m_deflate = b;
}
void H5Writer::setDeflateLevel(int x)
{
	m_deflate_level = x < 0 ? 0 : x > 9 ? 9 : x;
}
void H5Writer::setShuffle(bool b)
{
	m_shuffle = b;
}

size_t H5Writer::bytes()
{
	return 0;
}

string H5Writer::filename()
{
	return m_fn;
}

void H5Writer::shuffleDataset(hid_t prop)
{
	if (H5Zfilter_avail(H5Z_FILTER_SHUFFLE)) {
		unsigned int filter_info;
		H5Zget_filter_info(H5Z_FILTER_SHUFFLE, &filter_info);
		if ((filter_info & H5Z_FILTER_CONFIG_ENCODE_ENABLED) ||
		    (filter_info & H5Z_FILTER_CONFIG_DECODE_ENABLED) ) {
			H5Pset_shuffle(prop);
		} else {
			error("HDF5: shuffle filter not available");
		}
	} else {
		error("HDF5: shuffle filter not available");
	}
}
void H5Writer::deflateDataset(hid_t prop)
{
	if (H5Zfilter_avail(H5Z_FILTER_DEFLATE)) {
		unsigned int filter_info;
		H5Zget_filter_info(H5Z_FILTER_DEFLATE, &filter_info);
		if ((filter_info & H5Z_FILTER_CONFIG_ENCODE_ENABLED) &&
		    (filter_info & H5Z_FILTER_CONFIG_DECODE_ENABLED) ) {
			H5Pset_deflate(prop, m_deflate_level);
		} else {
			error("HDF5: gzip filter not available");
		}
	} else {
		error("HDF5: gzip filter not available");
	}
}
void H5Writer::setUUID(char *uuid_str)
{
	// all h5 files get the same uuid (until we restart the program)
	hid_t ds = H5Screate(H5S_SCALAR);
	hid_t dtype = H5Tcopy (H5T_C_S1);
	H5Tset_size(dtype, strlen(uuid_str));
	H5Tset_strpad(dtype, H5T_STR_NULLTERM);
	hid_t dset = H5Dcreate(m_h5file, "/identifier", dtype, ds,
	                       H5P_DEFAULT, H5P_DEFAULT, H5P_DEFAULT);
	H5Dwrite(dset, dtype, H5S_ALL, H5S_ALL, H5P_DEFAULT, uuid_str);
	H5Dclose(dset);
	H5Tclose(dtype);
	H5Sclose(ds);
}
void H5Writer::setVersion()
{
	// set the NWB version
	const char *str = "NWB-1.0.3-Beta";

	hid_t ds = H5Screate(H5S_SCALAR);
	hid_t dtype = H5Tcopy (H5T_C_S1);
	H5Tset_size(dtype, strlen(str));
	H5Tset_strpad(dtype, H5T_STR_NULLTERM);
	hid_t dset = H5Dcreate(m_h5file, "/nwb_version", dtype, ds,
	                       H5P_DEFAULT, H5P_DEFAULT, H5P_DEFAULT);
	H5Dwrite(dset, dtype, H5S_ALL, H5S_ALL, H5P_DEFAULT, str);
	H5Dclose(dset);
	H5Tclose(dtype);
	H5Sclose(ds);
}
void H5Writer::setFileCreateDate(char *str)
{

	hsize_t dims = 1;
	hid_t ds = H5Screate_simple(1, &dims, NULL);
	hid_t dtype = H5Tcopy(H5T_C_S1);
	H5Tset_size(dtype, strlen(str));
	H5Tset_strpad(dtype, H5T_STR_NULLTERM);
	hid_t dset = H5Dcreate(m_h5file, "/file_create_date", dtype, ds,
	                       H5P_DEFAULT, H5P_DEFAULT, H5P_DEFAULT);
	H5Dwrite(dset, dtype, H5S_ALL, H5S_ALL, H5P_DEFAULT, str);
	H5Dclose(dset);
	H5Tclose(dtype);
	H5Sclose(ds);
}
void H5Writer::setSessionStartTime(char *str)
{
	hsize_t dims = 1;
	hid_t ds = H5Screate_simple(1, &dims, NULL);
	hid_t dtype = H5Tcopy(H5T_C_S1);
	H5Tset_size(dtype, strlen(str));
	H5Tset_strpad(dtype, H5T_STR_NULLTERM);
	hid_t dset = H5Dcreate(m_h5file, "/session_start_time", dtype, ds,
	                       H5P_DEFAULT, H5P_DEFAULT, H5P_DEFAULT);
	H5Dwrite(dset, dtype, H5S_ALL, H5S_ALL, H5P_DEFAULT, str);
	H5Dclose(dset);
	H5Tclose(dtype);
	H5Sclose(ds);
}
void H5Writer::setSessionDescription(const char *str)
{
	hid_t ds = H5Screate(H5S_SCALAR);
	hid_t dtype = H5Tcopy (H5T_C_S1);
	H5Tset_size(dtype, strlen(str));
	H5Tset_strpad(dtype, H5T_STR_NULLTERM);
	hid_t dset = H5Dcreate(m_h5file, "/session_description", dtype, ds,
	                       H5P_DEFAULT, H5P_DEFAULT, H5P_DEFAULT);
	H5Dwrite(dset, dtype, H5S_ALL, H5S_ALL, H5P_DEFAULT, str);
	H5Dclose(dset);
	H5Tclose(dtype);
	H5Sclose(ds);
}
bool H5Writer::createGroup(const char *s)
{
	hid_t g = H5Gcreate(m_h5file, s, H5P_DEFAULT, H5P_DEFAULT, H5P_DEFAULT);
	if (g < 0) {
		close();
		return false;
	}
	m_h5groups.push_back(g);
	return true;
}