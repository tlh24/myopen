#include "util.h"
#include "h5spikewriter.h"

H5SpikeWriter::H5SpikeWriter()
{
	m_nc = 0;
	m_nu = 0;
	m_nwf = 0;
	m_h5groups.clear();
	m_h5Dtk.clear();
	m_h5Dts.clear();
	m_h5Dwf.clear();
	m_ns.clear();
	m_q = new ReaderWriterQueue<SPIKE *>(H5S_BUF_SIZE);
}
H5SpikeWriter::~H5SpikeWriter()
{
	delete m_q;
	m_q = NULL;
}
bool H5SpikeWriter::open(const char *fn, size_t nc, size_t nu, size_t nwf);
{
	if (isEnabled())
		return false;
	if (!H5Writer::open(fn)) {
		return false;
	}

	// Create a group
	m_h5topgroup = H5Gcreate2(m_h5file, "/Spikes",
								H5P_DEFAULT, H5P_DEFAULT, H5P_DEFAULT);

	if (m_h5topgroup < 0) {
		close();
		return false;
	}

	// create a group for each channel and for each unit in each channel
	for (size_t i=1; i<=nc; i++) { // 1-indexed
		char buf[32];
		sprintf(buf, "/Spikes/%03i", i);
		m_h5topgroup = H5Gcreate2(m_h5file, buf,
								H5P_DEFAULT, H5P_DEFAULT, H5P_DEFAULT);
		for (size_t j=0; j<=nu; j++) { // 1-indexed, zero is unsorted
			sprintf(buf, "/Spikes/%03i/%03i", i, j);
			m_h5topgroup = H5Gcreate2(m_h5file, buf,
								H5P_DEFAULT, H5P_DEFAULT, H5P_DEFAULT);
		}
	}
	/*

	// create analog dataspace
	// do not allow numchans to grow
	// but allow the number of samples to be unlimited
	hsize_t init_dims[2] = {nc, 0};
	hsize_t max_dims[2] = {nc, H5S_UNLIMITED};
	hid_t ds = H5Screate_simple(2, init_dims, max_dims);
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
	// also, perhaps compression will work better with slightly larger blocks
	hid_t prop = H5Pcreate(H5P_DATASET_CREATE);
	if (m_shuffle)
		shuffleDataset(prop);
	if (m_deflate)
		deflateDataset(prop);
	hsize_t chunk_dims[2] = {nc < 32 ? nc : 32, 128};
	H5Pset_chunk(prop, 2, chunk_dims);
	// Create the analog dataset
	m_h5Dsamples = H5Dcreate(m_h5file, "/Analog/Samples", H5T_STD_I16LE,
	                         ds, H5P_DEFAULT, prop, H5P_DEFAULT);
	if (m_h5Dsamples < 0) {
		close();
		return false;
	}
	m_h5dataspaces.push_back(ds);
	m_h5props.push_back(prop);


	// create tick dataspace
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
	chunk_dims[0] = 128;
	H5Pset_chunk(prop, 1, chunk_dims);
	// Create the tick dataset
	m_h5Dtk = H5Dcreate(m_h5file, "/Analog/Ticks", H5T_STD_I64LE,
	                    ds, H5P_DEFAULT, prop, H5P_DEFAULT);

	if (m_h5Dtk < 0) {
		close();
		return false;
	}
	m_h5dataspaces.push_back(ds);
	m_h5props.push_back(prop);

	// create timestamp dataspace
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
	chunk_dims[0] = 128;
	H5Pset_chunk(prop, 1, chunk_dims);
	// Create the tick dataset
	m_h5Dts = H5Dcreate(m_h5file, "/Analog/Timestamps", H5T_IEEE_F64LE,
	                    ds, H5P_DEFAULT, prop, H5P_DEFAULT);

	if (m_h5Dts < 0) {
		close();
		return false;
	}
	m_h5dataspaces.push_back(ds);
	m_h5props.push_back(prop);

	m_nc = nc;

	enable();
	*/
	return true;
}
/*
bool H5SpikeWriter::close()
{
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

bool H5SpikeWriter::add(AD *o)	// call from a single producer thread
{
	if (!isEnabled()) {
		delete[] (o->data);
		delete[] (o->tk);
		delete[] (o->ts);
		delete o;
		return false;
	}
	return m_q->enqueue(o);	// todo: what if this (memory alloc) fails
}

bool H5SpikeWriter::write()   // call from a single consumer thread
{
	if (!isEnabled())
		return false;

	//Lock so that the file isnt closed out from under us
	lock_guard<mutex> lock(m_mtx); // very important!!!

	bool dequeued;
	do {
		AD *o;
		dequeued = m_q->try_dequeue(o);
		if (dequeued) {

			if (o->nc != m_nc) {
				warn("well this is embarassing");
			}

			// extend sample dataset to fit new data
			// TODO: CHECK FOR ERROR
			hsize_t new_dims[2] = {m_nc, m_ns + o->ns};
			H5Dset_extent(m_h5Dsamples, new_dims);
			// select hyperslab in extended oprtion of dataset
			hid_t filespace = H5Dget_space(m_h5Dsamples);
			hsize_t offset[2] = {0, m_ns};
			hsize_t packet_dims[2] = {m_nc, o->ns};
			H5Sselect_hyperslab(filespace, H5S_SELECT_SET, offset, NULL,
			                    packet_dims, NULL);
			// Define memory space for new data
			// TODO CHECK FOR ERROR
			hid_t memspace = H5Screate_simple(2, packet_dims, NULL);
			// Write the dataset.
			// TODO: CHECK FOR ERROR
			H5Dwrite(m_h5Dsamples, H5T_NATIVE_INT16, memspace, filespace,
			         H5P_DEFAULT, o->data);
			H5Sclose(memspace);
			H5Sclose(filespace);

			// extend tick dataset to fit new data
			// TODO: CHECK FOR ERROR
			new_dims[0] = m_ns + o->ns;
			H5Dset_extent(m_h5Dtk, new_dims);
			// select hyperslab in extended oprtion of dataset
			filespace = H5Dget_space(m_h5Dtk);
			offset[0] = m_ns;
			packet_dims[0] = o->ns;
			H5Sselect_hyperslab(filespace, H5S_SELECT_SET, offset, NULL,
			                    packet_dims, NULL);
			// Define memory space for new data
			// TODO CHECK FOR ERROR
			memspace = H5Screate_simple(1, packet_dims, NULL);
			// Write the dataset.
			// TODO: CHECK FOR ERROR
			H5Dwrite(m_h5Dtk, H5T_NATIVE_INT64, memspace, filespace,
			         H5P_DEFAULT, o->tk);
			H5Sclose(memspace);
			H5Sclose(filespace);

			// extend ts dataset to fit new data
			// TODO: CHECK FOR ERROR
			new_dims[0] = m_ns + o->ns;
			H5Dset_extent(m_h5Dts, new_dims);
			// select hyperslab in extended oprtion of dataset
			filespace = H5Dget_space(m_h5Dts);
			offset[0] = m_ns;
			packet_dims[0] = o->ns;
			H5Sselect_hyperslab(filespace, H5S_SELECT_SET, offset, NULL,
			                    packet_dims, NULL);
			// Define memory space for new data
			// TODO CHECK FOR ERROR
			memspace = H5Screate_simple(1, packet_dims, NULL);
			// Write the dataset.
			// TODO: CHECK FOR ERROR
			H5Dwrite(m_h5Dts, H5T_NATIVE_DOUBLE, memspace, filespace,
			         H5P_DEFAULT, o->ts);
			H5Sclose(memspace);
			H5Sclose(filespace);

			m_ns += o->ns; // increment sample pointer

			//if (m_os.fail()) { // write lost, should we requeue?
			//	fprintf(stderr,"ERROR: %s write failed!\n", name());
			//}
			delete[] (o->data);
			delete[] (o->tk);
			delete[] (o->ts);
			delete o; // free the memory that was pointed to
		}
	} while (dequeued);

	return true;
}

size_t H5SpikeWriter::capacity()
{
	return m_q ? m_q->size_approx() : 0;
}
size_t H5SpikeWriter::bytes()
{
	return m_ns * m_nc * sizeof(i16);
}
bool H5SpikeWriter::setMetaData(double sr, float *scale, char *name, int slen)
{
	hid_t ds, attr, atype;

	ds = H5Screate(H5S_SCALAR);
	attr = H5Acreate(m_h5group, "Sampling Rate", H5T_IEEE_F64LE, ds,
	                 H5P_DEFAULT, H5P_DEFAULT);
	H5Awrite(attr, H5T_NATIVE_DOUBLE, &sr); // TODO: CHECK ERROR
	H5Aclose(attr); // TODO: check error
	H5Sclose(ds);

	hsize_t dims = m_nc;
	ds = H5Screate_simple(1, &dims, NULL);
	attr = H5Acreate(m_h5group, "Scale Factor", H5T_IEEE_F32LE, ds,
	                 H5P_DEFAULT, H5P_DEFAULT);
	H5Awrite(attr, H5T_NATIVE_FLOAT, scale); // TODO: CHECK ERROR
	H5Aclose(attr); // TODO: check error
	H5Sclose(ds);

	ds = H5Screate_simple(1, &dims, NULL);
	atype = H5Tcopy(H5T_C_S1);
	H5Tset_size(atype, slen);

	H5Tset_strpad(atype, H5T_STR_NULLTERM);
	attr = H5Acreate(m_h5group, "Channel Name", atype, ds,
	                 H5P_DEFAULT, H5P_DEFAULT);
	H5Awrite(attr, atype, name); // TODO: CHECK ERROR
	H5Aclose(attr);
	H5Sclose(ds);

	return true;
}
*/
