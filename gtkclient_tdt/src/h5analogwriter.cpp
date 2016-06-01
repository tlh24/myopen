#include <cstring>
#include "util.h"
#include "h5analogwriter.h"

H5AnalogWriter::H5AnalogWriter()
{

	m_h5Dsamples = 0;
	m_h5Dtk = 0;
	m_h5Dts = 0;
	m_nc = 0;
	m_ns = 0;
}
H5AnalogWriter::~H5AnalogWriter() {}
bool H5AnalogWriter::open(const char *fn, size_t nc)
{
	if (isEnabled())
		return false;
	if (!H5Writer::open(fn)) {
		return false;
	}

	if (!createGroup("/acquisition/timeseries/broadband")) {
		return false;
	}
	if (!createGroup("/acquisition/timeseries/broadband/sync")) {
		return false;
	}

	// broadband/electrode_idx
	auto idx = new i32[nc];
	for (size_t i=0; i<nc; i++) {
		idx[i] = i; // 0-indexed
	}
	hsize_t dims = nc;
	hid_t ds = H5Screate_simple(1, &dims, NULL);
	if (ds < 0) {
		close();
		return false;
	}
	hid_t dset = H5Dcreate(m_h5file,
	                       "/acquisition/timeseries/broadband/electrode_idx",
	                       H5T_STD_I32LE, ds, H5P_DEFAULT, H5P_DEFAULT, H5P_DEFAULT);
	if (dset < 0) {
		close();
		return false;
	}
	H5Dwrite(dset, H5T_NATIVE_INT32, H5S_ALL, H5S_ALL, H5P_DEFAULT, idx);
	H5Dclose(dset);	// dont need to hold this dataset open
	H5Sclose(ds);
	delete[] idx;

	// create broadband/data dataspace
	// do not allow numchans to grow
	// but allow the number of samples to be unlimited
	// [num samples][num channels]
	hsize_t init_dims[2] = {0, nc};
	hsize_t max_dims[2] = {H5S_UNLIMITED, nc};
	ds = H5Screate_simple(2, init_dims, max_dims);
	if (ds < 0) {
		close();
		return false;
	}
	// Create a dataset creation property list and set it to use chunking
	// Online advice is to, "keep chunks above 10KiB or so"
	// Realistically it should probably be something that can fit into L1 cache
	// so: definitely under 64 KB
	// 32*32*2 bytes ~= 2 KB
	// 32*128*2 bytes ~= 8 KB
	// 32*256*2 bytes ~= 8 KB
	// also, perhaps compression will work better with slightly larger blocks
	hid_t prop = H5Pcreate(H5P_DATASET_CREATE);
	if (m_shuffle)
		shuffleDataset(prop);
	if (m_deflate)
		deflateDataset(prop);
	hsize_t chunk_dims[2] = {256, nc < 32 ? nc : 32};
	H5Pset_chunk(prop, 2, chunk_dims);
	// Create the broadband dataset
	m_h5Dsamples = H5Dcreate(m_h5file, "/acquisition/timeseries/broadband/data",
	                         H5T_STD_I16LE, ds, H5P_DEFAULT, prop, H5P_DEFAULT);
	if (m_h5Dsamples < 0) {
		close();
		return false;
	}
	m_h5dataspaces.push_back(ds);
	m_h5props.push_back(prop);


	// create broadband/sync/ticks dataspace
	// allow the number of samples to be unlimited
	init_dims[0] 	= 0;
	max_dims[0] 	= H5S_UNLIMITED;
	ds = H5Screate_simple(1, init_dims, max_dims);
	if (ds < 0) {
		close();
		return false;
	}
	//Create a dataset creation property list and set it to use chunking
	prop = H5Pcreate(H5P_DATASET_CREATE);
	if (m_shuffle)
		shuffleDataset(prop);
	if (m_deflate)
		deflateDataset(prop);
	chunk_dims[0] = 256;
	H5Pset_chunk(prop, 1, chunk_dims);
	// Create the tick dataset
	m_h5Dtk = H5Dcreate(m_h5file, "/acquisition/timeseries/broadband/sync/ticks",
	                    H5T_STD_I64LE, ds, H5P_DEFAULT, prop, H5P_DEFAULT);
	if (m_h5Dtk < 0) {
		close();
		return false;
	}
	m_h5dataspaces.push_back(ds);
	m_h5props.push_back(prop);


	// create broadband/timestamps dataspace
	// allow the number of samples to be unlimited
	init_dims[0] 	= 0;
	max_dims[0] 	= H5S_UNLIMITED;
	ds = H5Screate_simple(1, init_dims, max_dims);
	if (ds < 0) {
		close();
		return false;
	}
	//Create a dataset creation property list and set it to use chunking
	prop = H5Pcreate(H5P_DATASET_CREATE);
	if (m_shuffle)
		shuffleDataset(prop);
	if (m_deflate)
		deflateDataset(prop);
	chunk_dims[0] = 256;
	H5Pset_chunk(prop, 1, chunk_dims);
	// Create the timestamps dataset
	m_h5Dts = H5Dcreate(m_h5file, "/acquisition/timeseries/broadband/timestamps",
	                    H5T_IEEE_F64LE, ds, H5P_DEFAULT, prop, H5P_DEFAULT);
	if (m_h5Dts < 0) {
		close();
		return false;
	}
	m_h5dataspaces.push_back(ds);
	m_h5props.push_back(prop);

	m_nc = nc;

	enable();
	return true;
}

bool H5AnalogWriter::close()
{

	// indicate the number of samples written
	hid_t ds = H5Screate(H5S_SCALAR);
	hid_t dset = H5Dcreate(m_h5file,
	                       "/acquisition/timeseries/broadband/num_samples",
	                       H5T_STD_I32LE, ds, H5P_DEFAULT, H5P_DEFAULT, H5P_DEFAULT);
	H5Dwrite(dset, H5T_NATIVE_INT32, H5S_ALL, H5S_ALL, H5P_DEFAULT, &m_ns);
	H5Dclose(dset);	// dont need to hold this dataset open
	H5Sclose(ds);

	disable();

	m_ns = 0;
	m_nc = 0;

	if (m_h5Dts > 0) {
		H5Dclose(m_h5Dts);
		m_h5Dts = 0;
	}

	if (m_h5Dtk > 0) {
		H5Dclose(m_h5Dtk);
		m_h5Dtk = 0;
	}

	if (m_h5Dsamples > 0) {
		H5Dclose(m_h5Dsamples);
		m_h5Dsamples = 0;
	}

	return H5Writer::close();
}

// this function consumes and frees the memory in the arrays it is passed
bool H5AnalogWriter::write(u64 nc, u64 ns, i64 *tk, double *ts, i16 *data)
{
	if (!isEnabled())
		return false;

	//Lock so that the file isnt closed out from under us
	lock_guard<mutex> lock(m_mtx); // very important!!!

	if (nc != m_nc) {
		warn("num channels mismatch");
		return false;
	}

	// extend sample dataset to fit new data
	// TODO: CHECK FOR ERROR
	hsize_t new_dims[2] = {m_ns + ns, m_nc};
	H5Dset_extent(m_h5Dsamples, new_dims);
	// select hyperslab in extended oprtion of dataset
	hid_t filespace = H5Dget_space(m_h5Dsamples);
	hsize_t offset[2] = {m_ns, 0};
	hsize_t packet_dims[2] = {ns, m_nc};
	H5Sselect_hyperslab(filespace, H5S_SELECT_SET, offset, NULL,
	                    packet_dims, NULL);
	// Define memory space for new data
	// TODO CHECK FOR ERROR
	hid_t memspace = H5Screate_simple(2, packet_dims, NULL);
	// Write the dataset.
	// TODO: CHECK FOR ERROR
	H5Dwrite(m_h5Dsamples, H5T_NATIVE_INT16, memspace, filespace,
	         H5P_DEFAULT, data);
	H5Sclose(memspace);
	H5Sclose(filespace);

	// extend tick dataset to fit new data
	// TODO: CHECK FOR ERROR
	new_dims[0] = m_ns + ns;
	H5Dset_extent(m_h5Dtk, new_dims);
	// select hyperslab in extended oprtion of dataset
	filespace = H5Dget_space(m_h5Dtk);
	offset[0] = m_ns;
	packet_dims[0] = ns;
	H5Sselect_hyperslab(filespace, H5S_SELECT_SET, offset, NULL,
	                    packet_dims, NULL);
	// Define memory space for new data
	// TODO CHECK FOR ERROR
	memspace = H5Screate_simple(1, packet_dims, NULL);
	// Write the dataset.
	// TODO: CHECK FOR ERROR
	H5Dwrite(m_h5Dtk, H5T_NATIVE_INT64, memspace, filespace,
	         H5P_DEFAULT, tk);
	H5Sclose(memspace);
	H5Sclose(filespace);

	// extend ts dataset to fit new data
	// TODO: CHECK FOR ERROR
	new_dims[0] = m_ns + ns;
	H5Dset_extent(m_h5Dts, new_dims);
	// select hyperslab in extended oprtion of dataset
	filespace = H5Dget_space(m_h5Dts);
	offset[0] = m_ns;
	packet_dims[0] = ns;
	H5Sselect_hyperslab(filespace, H5S_SELECT_SET, offset, NULL,
	                    packet_dims, NULL);
	// Define memory space for new data
	// TODO CHECK FOR ERROR
	memspace = H5Screate_simple(1, packet_dims, NULL);
	// Write the dataset.
	// TODO: CHECK FOR ERROR
	H5Dwrite(m_h5Dts, H5T_NATIVE_DOUBLE, memspace, filespace,
	         H5P_DEFAULT, ts);
	H5Sclose(memspace);
	H5Sclose(filespace);

	m_ns += ns; // increment sample pointer

	delete[] tk;
	delete[] ts;
	delete[] data;

	return true;
}

bool H5AnalogWriter::setMetaData(float scale, char *name, size_t slen)
{
	hid_t ds, attr, atype;
	hsize_t dims;
	std::string s;

	// broadband/ancestry
	std::vector<std::string> ancestry;
	ancestry.push_back("TimeSeries");
	ancestry.push_back("ElectricalSeries");
	size_t max_str = 0;
	for (auto &x : ancestry) {
		max_str = max_str > x.size() ? max_str : x.size();
	}
	auto ss = new char[max_str*ancestry.size()];
	for (size_t i=0; i<ancestry.size(); i++) {
		strncpy(&ss[i*max_str], ancestry[i].c_str(), ancestry[i].size());
	}
	dims = ancestry.size();
	ds = H5Screate_simple(1, &dims, NULL);
	atype = H5Tcopy(H5T_C_S1);
	H5Tset_size(atype, max_str);
	H5Tset_strpad(atype, H5T_STR_NULLTERM);
	attr = H5Acreate_by_name(m_h5file,
	                         "/acquisition/timeseries/broadband", "ancestry",
	                         atype, ds, H5P_DEFAULT, H5P_DEFAULT, H5P_DEFAULT);
	H5Awrite(attr, atype, ss); // TODO: CHECK ERROR
	delete[] ss;
	H5Aclose(attr); // TODO: check error
	H5Tclose(atype);
	H5Sclose(ds);

	// broadband/source
	ds = H5Screate(H5S_SCALAR);
	atype = H5Tcopy(H5T_C_S1);
	s = "TDT RZ2";
	H5Tset_size(atype, s.size());
	H5Tset_strpad(atype, H5T_STR_NULLTERM);
	attr = H5Acreate_by_name(m_h5file,
	                         "/acquisition/timeseries/broadband", "source",
	                         atype, ds, H5P_DEFAULT, H5P_DEFAULT, H5P_DEFAULT);
	H5Awrite(attr, atype, s.c_str()); // TODO: CHECK ERROR
	H5Aclose(attr); // TODO: check error
	H5Tclose(atype);
	H5Sclose(ds);

	// broadband/description
	ds = H5Screate(H5S_SCALAR);
	atype = H5Tcopy(H5T_C_S1);
	s = "Broadband Data";
	H5Tset_size(atype, s.size());
	H5Tset_strpad(atype, H5T_STR_NULLTERM);
	attr = H5Acreate_by_name(m_h5file,
	                         "/acquisition/timeseries/broadband", "description",
	                         atype, ds, H5P_DEFAULT, H5P_DEFAULT, H5P_DEFAULT);
	H5Awrite(attr, atype, s.c_str()); // TODO: CHECK ERROR
	H5Aclose(attr); // TODO: check error
	H5Tclose(atype);
	H5Sclose(ds);

	// broadband/neurodata_type
	ds = H5Screate(H5S_SCALAR);
	atype = H5Tcopy(H5T_C_S1);
	s = "TimeSeries";
	H5Tset_size(atype, s.size());
	H5Tset_strpad(atype, H5T_STR_NULLTERM);
	attr = H5Acreate_by_name(m_h5file,
	                         "/acquisition/timeseries/broadband", "neurodata_type",
	                         atype, ds, H5P_DEFAULT, H5P_DEFAULT, H5P_DEFAULT);
	H5Awrite(attr, atype, s.c_str()); // TODO: CHECK ERROR
	H5Aclose(attr); // TODO: check error
	H5Tclose(atype);
	H5Sclose(ds);

	// broadband/data/conversion
	ds = H5Screate(H5S_SCALAR);
	attr = H5Acreate_by_name(m_h5file, "/acquisition/timeseries/broadband/data", "conversion",
	                         H5T_IEEE_F32LE, ds, H5P_DEFAULT, H5P_DEFAULT, H5P_DEFAULT);
	H5Awrite(attr, H5T_NATIVE_FLOAT, &scale); // TODO: CHECK ERROR
	H5Aclose(attr); // TODO: check error
	H5Sclose(ds);

	// broadband/data/resolution (this is actually the same as scale)
	ds = H5Screate(H5S_SCALAR);
	attr = H5Acreate_by_name(m_h5file, "/acquisition/timeseries/broadband/data", "resolution",
	                         H5T_IEEE_F32LE, ds, H5P_DEFAULT, H5P_DEFAULT, H5P_DEFAULT);
	H5Awrite(attr, H5T_NATIVE_FLOAT, &scale); // TODO: CHECK ERROR
	H5Aclose(attr); // TODO: check error
	H5Sclose(ds);

	// broadband/data/unit
	ds = H5Screate(H5S_SCALAR);
	atype = H5Tcopy(H5T_C_S1);
	s = "volt";
	H5Tset_size(atype, s.size());
	H5Tset_strpad(atype, H5T_STR_NULLTERM);
	attr = H5Acreate_by_name(m_h5file, "/acquisition/timeseries/broadband/data", "unit",
	                         atype, ds, H5P_DEFAULT, H5P_DEFAULT, H5P_DEFAULT);
	H5Awrite(attr, atype, s.c_str()); // TODO: CHECK ERROR
	H5Aclose(attr); // TODO: check error
	H5Tclose(atype);
	H5Sclose(ds);

	// broadband/timestamps/interval
	ds = H5Screate(H5S_SCALAR);
	attr = H5Acreate_by_name(m_h5file, "/acquisition/timeseries/broadband/timestamps", "interval",
	                         H5T_STD_I32LE, ds, H5P_DEFAULT, H5P_DEFAULT, H5P_DEFAULT);
	i32 interval = 1;
	H5Awrite(attr, H5T_NATIVE_INT32, &interval); // TODO: CHECK ERROR
	H5Aclose(attr); // TODO: check error
	H5Sclose(ds);

	// broadband/timestamps/unit
	ds = H5Screate(H5S_SCALAR);
	atype = H5Tcopy(H5T_C_S1);
	s = "Seconds";
	H5Tset_size(atype, s.size());
	H5Tset_strpad(atype, H5T_STR_NULLTERM);
	attr = H5Acreate_by_name(m_h5file, "/acquisition/timeseries/broadband/timestamps", "unit",
	                         atype, ds, H5P_DEFAULT, H5P_DEFAULT, H5P_DEFAULT);
	H5Awrite(attr, atype, s.c_str()); // TODO: CHECK ERROR
	H5Aclose(attr); // TODO: check error
	H5Tclose(atype);
	H5Sclose(ds);

	// sampling rate
	// this isnt allowed in NWB spec if timestamps are set
	/*
	ds = H5Screate(H5S_SCALAR);
	attr = H5Acreate(m_h5file, "/acquisition/broadband/Sampling Rate", H5T_IEEE_F64LE, ds,
	                 H5P_DEFAULT, H5P_DEFAULT);
	H5Awrite(attr, H5T_NATIVE_DOUBLE, &sr); // TODO: CHECK ERROR
	H5Aclose(attr); // TODO: check error
	H5Sclose(ds);
	*/

	// broadband/sync/ticks/schema_id
	ds = H5Screate(H5S_SCALAR);
	atype = H5Tcopy(H5T_C_S1);
	s = "Custom";
	H5Tset_size(atype, s.size());
	H5Tset_strpad(atype, H5T_STR_NULLTERM);
	attr = H5Acreate_by_name(m_h5file,
	                         "/acquisition/timeseries/broadband/sync/ticks", "schema_id",
	                         atype, ds, H5P_DEFAULT, H5P_DEFAULT, H5P_DEFAULT);
	H5Awrite(attr, atype, s.c_str()); // TODO: CHECK ERROR
	H5Aclose(attr); // TODO: check error
	H5Tclose(atype);
	H5Sclose(ds);

	// channel names
	// XXX this should be moved elsewhere for NWB compliance
	dims = m_nc;
	ds = H5Screate_simple(1, &dims, NULL);
	atype = H5Tcopy(H5T_C_S1);
	H5Tset_size(atype, slen);
	H5Tset_strpad(atype, H5T_STR_NULLTERM);
	attr = H5Acreate_by_name(m_h5file, "/acquisition/timeseries/broadband", "Channel Name",
	                         atype, ds, H5P_DEFAULT, H5P_DEFAULT, H5P_DEFAULT);
	H5Awrite(attr, atype, name); // TODO: CHECK ERROR
	H5Aclose(attr);
	H5Tclose(atype);
	H5Sclose(ds);

	return true;
}

