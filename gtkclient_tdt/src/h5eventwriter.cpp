#include <cstring>
#include "util.h"
#include "h5eventwriter.h"

H5EventWriter::H5EventWriter()
{
	m_h5Devents.clear();
	m_h5Dtk.clear();
	m_h5Dts.clear();
	m_nc = 0;
	m_ns.clear();
}

H5EventWriter::~H5EventWriter() {}


bool H5EventWriter::open(const char *fn, size_t nc, std::vector<std::string> names)
{
	if (isEnabled())
		return false;
	if (!H5Writer::open(fn)) {
		return false;
	}

	for (auto &x: names) {
		std::string s = "/stimulus/presentation/" + x;
		if (!createGroup(s.c_str())) {
			return false;
		}


		// create stimulus/presentation/x/data dataspace
		hsize_t init_dims = 0;
		hsize_t max_dims = H5S_UNLIMITED;
		hid_t ds = H5Screate_simple(1, &init_dims, &max_dims);
		if (ds < 0) {
			close();
			return false;
		}
		// create stimulus/presentation/x/data properties
		hid_t prop = H5Pcreate(H5P_DATASET_CREATE);
		if (m_shuffle)
			shuffleDataset(prop);
		if (m_deflate)
			deflateDataset(prop);
		hsize_t chunk_dims = 512;
		H5Pset_chunk(prop, 1, &chunk_dims);
		// Create the stimulus/presentation/x/data dataset
		s = "/stimulus/presentation/" + x + "/data";
		hid_t dset = H5Dcreate(m_h5file, s.c_str(),
		                       H5T_STD_U16LE, ds, H5P_DEFAULT, prop, H5P_DEFAULT);
		if (dset < 0) {
			close();
			return false;
		}
		m_h5dataspaces.push_back(ds);
		m_h5props.push_back(prop);
		m_h5Devents.push_back(dset);


		// create stimulus/presentation/x/timeseries dataspace
		init_dims = 0;
		max_dims = H5S_UNLIMITED;
		ds = H5Screate_simple(1, &init_dims, &max_dims);
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
		chunk_dims = 512;
		H5Pset_chunk(prop, 1, &chunk_dims);
		// Create the timestamps dataset
		s = "/stimulus/presentation/" + x + "/timestamps";
		dset = H5Dcreate(m_h5file, s.c_str(),
		                 H5T_IEEE_F64LE, ds, H5P_DEFAULT, prop, H5P_DEFAULT);
		if (dset < 0) {
			close();
			return false;
		}
		m_h5dataspaces.push_back(ds);
		m_h5props.push_back(prop);
		m_h5Dts.push_back(dset);


		s = "/stimulus/presentation/" + x + "/sync";
		if (!createGroup(s.c_str())) {
			return false;
		}


		// create stimulus/presentation/x/sync/ticks dataspace
		// allow the number of samples to be unlimited
		init_dims = 0;
		max_dims = H5S_UNLIMITED;
		ds = H5Screate_simple(1, &init_dims, &max_dims);
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
		chunk_dims = 512;
		H5Pset_chunk(prop, 1, &chunk_dims);
		// Create the tick dataset
		s = "/stimulus/presentation/" + x + "/sync/ticks";
		dset = H5Dcreate(m_h5file, s.c_str(),
		                 H5T_STD_I64LE, ds, H5P_DEFAULT, prop, H5P_DEFAULT);
		if (dset < 0) {
			close();
			return false;
		}
		m_h5dataspaces.push_back(ds);
		m_h5props.push_back(prop);
		m_h5Dtk.push_back(dset);

		m_ns.push_back(0);

	}

	m_nc = nc;
	m_names = names;

	enable();
	return true;
}

bool H5EventWriter::close()
{

	for (size_t i=0; i<m_names.size(); i++) {

		// indicate the number of samples written
		hid_t ds = H5Screate(H5S_SCALAR);
		std::string s = "/stimulus/presentation/" + m_names[i] + "/num_samples";
		hid_t dset = H5Dcreate(m_h5file, s.c_str(),
		                       H5T_STD_I32LE, ds, H5P_DEFAULT, H5P_DEFAULT, H5P_DEFAULT);
		H5Dwrite(dset, H5T_NATIVE_INT32, H5S_ALL, H5S_ALL, H5P_DEFAULT, &(m_ns[i]));
		H5Dclose(dset);	// dont need to hold this dataset open
		H5Sclose(ds);
	}

	disable();

	m_ns.clear();
	m_nc = 0;

	for (auto &x : m_h5Devents) {
		if (x > 0) {
			H5Dclose(x);
		}
	}
	m_h5Devents.clear();

	for (auto &x : m_h5Dts) {
		if (x > 0) {
			H5Dclose(x);
		}
	}
	m_h5Dts.clear();

	for (auto &x : m_h5Dtk) {
		if (x > 0) {
			H5Dclose(x);
		}
	}
	m_h5Dtk.clear();

	m_names.clear();

	return H5Writer::close();
}

bool H5EventWriter::write(u16 ec, i64 tk, double ts, u16 ev)
{
	if (!isEnabled())
		return false;

	//Lock so that the file isnt closed out from under us
	lock_guard<mutex> lock(m_mtx); // very important!!!

	if (ec > m_nc) {
		warn("num channels mismatch");
		return false;
	}

	// extend events dataset to fit new data
	// TODO: CHECK FOR ERROR
	hsize_t new_dims = m_ns[ec] + 1;
	H5Dset_extent(m_h5Devents[ec], &new_dims);
	// select hyperslab in extended oprtion of dataset
	hid_t filespace = H5Dget_space(m_h5Devents[ec]);
	hsize_t offset = m_ns[ec];
	hsize_t packet_dims = 1;
	H5Sselect_hyperslab(filespace, H5S_SELECT_SET, &offset, NULL,
	                    &packet_dims, NULL);
	// Define memory space for new data
	// TODO CHECK FOR ERROR
	hid_t memspace = H5Screate_simple(1, &packet_dims, NULL);
	// Write the dataset.
	// TODO: CHECK FOR ERROR
	H5Dwrite(m_h5Devents[ec], H5T_NATIVE_UINT16, memspace, filespace,
	         H5P_DEFAULT, &ev);
	H5Sclose(memspace);
	H5Sclose(filespace);

	// extend timestamp dataset to fit new data
	// TODO: CHECK FOR ERROR
	H5Dset_extent(m_h5Dts[ec], &new_dims);
	filespace = H5Dget_space(m_h5Dts[ec]);
	H5Sselect_hyperslab(filespace, H5S_SELECT_SET, &offset, NULL,
	                    &packet_dims, NULL);
	memspace = H5Screate_simple(1, &packet_dims, NULL);
	H5Dwrite(m_h5Dts[ec], H5T_NATIVE_DOUBLE, memspace, filespace,
	         H5P_DEFAULT, &ts);
	H5Sclose(memspace);
	H5Sclose(filespace);

	// extend tick dataset to fit new data
	// TODO: CHECK FOR ERROR
	H5Dset_extent(m_h5Dtk[ec], &new_dims);
	filespace = H5Dget_space(m_h5Dtk[ec]);
	H5Sselect_hyperslab(filespace, H5S_SELECT_SET, &offset, NULL,
	                    &packet_dims, NULL);
	memspace = H5Screate_simple(1, &packet_dims, NULL);
	H5Dwrite(m_h5Dtk[ec], H5T_NATIVE_INT64, memspace, filespace,
	         H5P_DEFAULT, &tk);
	H5Sclose(memspace);
	H5Sclose(filespace);

	m_ns[ec] += 1;	// increment sample number

	return true;

}

bool H5EventWriter::setMetaData()
{
	hid_t ds, attr, atype;
	hsize_t dims;
	std::string s;

	for (auto &event : m_names) {

		std::string event_path = "/stimulus/presentation/" + event;

		// event/ancestry
		std::vector<std::string> ancestry;
		ancestry.push_back("TimeSeries");
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
		attr = H5Acreate_by_name(m_h5file, event_path.c_str(), "ancestry",
		                         atype, ds, H5P_DEFAULT, H5P_DEFAULT, H5P_DEFAULT);
		H5Awrite(attr, atype, ss); // TODO: CHECK ERROR
		delete[] ss;
		H5Aclose(attr); // TODO: check error
		H5Tclose(atype);
		H5Sclose(ds);

		// event/source
		ds = H5Screate(H5S_SCALAR);
		atype = H5Tcopy(H5T_C_S1);
		s = "TDT RZ2";
		H5Tset_size(atype, s.size());
		H5Tset_strpad(atype, H5T_STR_NULLTERM);
		attr = H5Acreate_by_name(m_h5file, event_path.c_str(), "source",
		                         atype, ds, H5P_DEFAULT, H5P_DEFAULT, H5P_DEFAULT);
		H5Awrite(attr, atype, s.c_str()); // TODO: CHECK ERROR
		H5Aclose(attr); // TODO: check error
		H5Tclose(atype);
		H5Sclose(ds);

		// event/description
		ds = H5Screate(H5S_SCALAR);
		atype = H5Tcopy(H5T_C_S1);
		s = "Event Data";
		H5Tset_size(atype, s.size());
		H5Tset_strpad(atype, H5T_STR_NULLTERM);
		attr = H5Acreate_by_name(m_h5file, event_path.c_str(), "description",
		                         atype, ds, H5P_DEFAULT, H5P_DEFAULT, H5P_DEFAULT);
		H5Awrite(attr, atype, s.c_str()); // TODO: CHECK ERROR
		H5Aclose(attr); // TODO: check error
		H5Tclose(atype);
		H5Sclose(ds);

		// event/neurodata_type
		ds = H5Screate(H5S_SCALAR);
		atype = H5Tcopy(H5T_C_S1);
		s = "TimeSeries";
		H5Tset_size(atype, s.size());
		H5Tset_strpad(atype, H5T_STR_NULLTERM);
		attr = H5Acreate_by_name(m_h5file, event_path.c_str(), "neurodata_type",
		                         atype, ds, H5P_DEFAULT, H5P_DEFAULT, H5P_DEFAULT);
		H5Awrite(attr, atype, s.c_str()); // TODO: CHECK ERROR
		H5Aclose(attr); // TODO: check error
		H5Tclose(atype);
		H5Sclose(ds);

		std::string ds_path = event_path + "/data";

		// event/data/conversion
		ds = H5Screate(H5S_SCALAR);
		float scale = 1;
		attr = H5Acreate_by_name(m_h5file, ds_path.c_str(), "conversion",
		                         H5T_IEEE_F32LE, ds, H5P_DEFAULT, H5P_DEFAULT, H5P_DEFAULT);
		H5Awrite(attr, H5T_NATIVE_FLOAT, &scale); // TODO: CHECK ERROR
		H5Aclose(attr); // TODO: check error
		H5Sclose(ds);

		// event/data/resolution (this is actually the same as scale)
		ds = H5Screate(H5S_SCALAR);
		attr = H5Acreate_by_name(m_h5file, ds_path.c_str(), "resolution",
		                         H5T_IEEE_F32LE, ds, H5P_DEFAULT, H5P_DEFAULT, H5P_DEFAULT);
		H5Awrite(attr, H5T_NATIVE_FLOAT, &scale); // TODO: CHECK ERROR
		H5Aclose(attr); // TODO: check error
		H5Sclose(ds);

		// event/data/unit
		ds = H5Screate(H5S_SCALAR);
		atype = H5Tcopy(H5T_C_S1);
		s = "n/a";
		H5Tset_size(atype, s.size());
		H5Tset_strpad(atype, H5T_STR_NULLTERM);
		attr = H5Acreate_by_name(m_h5file, ds_path.c_str(), "unit",
		                         atype, ds, H5P_DEFAULT, H5P_DEFAULT, H5P_DEFAULT);
		H5Awrite(attr, atype, s.c_str()); // TODO: CHECK ERROR
		H5Aclose(attr); // TODO: check error
		H5Tclose(atype);
		H5Sclose(ds);

		ds_path = event_path + "/timestamps";

		// event/timestamps/interval
		ds = H5Screate(H5S_SCALAR);
		attr = H5Acreate_by_name(m_h5file, ds_path.c_str(), "interval",
		                         H5T_STD_I32LE, ds, H5P_DEFAULT, H5P_DEFAULT, H5P_DEFAULT);
		i32 interval = 1;
		H5Awrite(attr, H5T_NATIVE_INT32, &interval); // TODO: CHECK ERROR
		H5Aclose(attr); // TODO: check error
		H5Sclose(ds);

		// event/timestamps/unit
		ds = H5Screate(H5S_SCALAR);
		atype = H5Tcopy(H5T_C_S1);
		s = "Seconds";
		H5Tset_size(atype, s.size());
		H5Tset_strpad(atype, H5T_STR_NULLTERM);
		attr = H5Acreate_by_name(m_h5file, ds_path.c_str(), "unit",
		                         atype, ds, H5P_DEFAULT, H5P_DEFAULT, H5P_DEFAULT);
		H5Awrite(attr, atype, s.c_str()); // TODO: CHECK ERROR
		H5Aclose(attr); // TODO: check error
		H5Tclose(atype);
		H5Sclose(ds);

		ds_path = event_path + "/sync/ticks";

		// event/sync/ticks/schema_id
		ds = H5Screate(H5S_SCALAR);
		atype = H5Tcopy(H5T_C_S1);
		s = "Custom";
		H5Tset_size(atype, s.size());
		H5Tset_strpad(atype, H5T_STR_NULLTERM);
		attr = H5Acreate_by_name(m_h5file, ds_path.c_str(), "schema_id",
		                         atype, ds, H5P_DEFAULT, H5P_DEFAULT, H5P_DEFAULT);
		H5Awrite(attr, atype, s.c_str()); // TODO: CHECK ERROR
		H5Aclose(attr); // TODO: check error
		H5Tclose(atype);
		H5Sclose(ds);

		// event/sync/ticks/neurodata_type
		ds = H5Screate(H5S_SCALAR);
		atype = H5Tcopy(H5T_C_S1);
		s = "Custom";
		H5Tset_size(atype, s.size());
		H5Tset_strpad(atype, H5T_STR_NULLTERM);
		attr = H5Acreate_by_name(m_h5file, ds_path.c_str(), "neurodata_type",
		                         atype, ds, H5P_DEFAULT, H5P_DEFAULT, H5P_DEFAULT);
		H5Awrite(attr, atype, s.c_str()); // TODO: CHECK ERROR
		H5Aclose(attr); // TODO: check error
		H5Tclose(atype);
		H5Sclose(ds);

	}

	return true;
}