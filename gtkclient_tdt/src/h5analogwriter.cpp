#include "util.h"
#include "h5analogwriter.h"

//using namespace moodycamel;

H5AnalogWriter::H5AnalogWriter()
{
	m_h5group = 0;
	m_h5dataspace = 0;
	m_h5chunkprops = 0;
	m_h5dataset = 0;
	m_q = new ReaderWriterQueue<AD *>(H5A_BUF_SIZE);
	m_nc = 0;
	m_ns = 0;
}
H5AnalogWriter::~H5AnalogWriter()
{
	delete m_q;
	m_q = NULL;
}
bool H5AnalogWriter::open(const char *fn, size_t nc)
{
	if (isEnabled())
		return false;
	if (!H5Writer::open(fn)) {
		return false;
	}

   // Create a group
	m_h5group = H5Gcreate2(m_h5file, "/Analog",
   		H5P_DEFAULT, H5P_DEFAULT, H5P_DEFAULT);

	if (m_h5group < 0) {
		H5Writer::close();
		return false;
	}

	// create analog dataspace
	// do not allow numchans to grow
	// but allow the number of samples to be unlimited
	hsize_t init_dims[2] = {nc, 0};
	hsize_t max_dims[2] = {nc, H5S_UNLIMITED};
	m_h5dataspace = H5Screate_simple(2, init_dims, max_dims);

	if (m_h5dataspace < 0) {
		H5Gclose(m_h5group);
		H5Writer::close();
		return false;
	}

	//Create a dataset creation property list and set it to use chunking
	m_h5chunkprops = H5Pcreate(H5P_DATASET_CREATE);
	hsize_t chunk_dims[2] = {nc < 32 ? nc : 32, 32};
	H5Pset_chunk(m_h5chunkprops, 2, chunk_dims);

	// Create the dataset
	m_h5dataset = H5Dcreate(m_h5file, "/Analog/Samples", H5T_STD_I16LE,
		m_h5dataspace, H5P_DEFAULT, m_h5chunkprops, H5P_DEFAULT);

	if (m_h5dataset < 0) {
		H5Sclose(m_h5dataspace);
		H5Gclose(m_h5group);
		H5Writer::close();
		return false;
	}

	m_nc = nc;

	enable();
	return true;
}

bool H5AnalogWriter::close()
{
	disable();

	m_ns = 0;
	m_nc = 0;

	if (m_h5dataset > 0) {
		H5Dclose(m_h5dataset);
		m_h5dataset = 0;
	}

	if (m_h5chunkprops > 0) {
		H5Pclose(m_h5chunkprops);
		m_h5chunkprops = 0;
	}

	if (m_h5dataspace > 0) {
		H5Sclose(m_h5dataspace);
		m_h5dataspace = 0;
	}

	if (m_h5group > 0) {
		H5Gclose(m_h5group);
		m_h5group = 0;
	}

	return H5Writer::close();
}

bool H5AnalogWriter::add(AD *o)	// call from a single producer thread
{
	if (!isEnabled()) {
		delete[] (o->data);
		delete[] (o->ts);
		delete[] (o->tk);
		delete o;
		return false;
	}
	return m_q->enqueue(o);	// todo: what if this (memory alloc) fails
}

bool H5AnalogWriter::write()   // call from a single consumer thread
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

			if (!isEnabled()) {
				delete[] (o->data);
				delete[] (o->ts);
				delete[] (o->tk);
				delete o;
				break;
			}

			if (o->nc != m_nc) {
				warn("well this is embarassing");
			}

			hsize_t packet_dims[2] = {m_nc, o->ns};

			// extend dataset to fit new data
			// TODO: CHECK FOR ERROR
			hsize_t new_dims[2] = {m_nc, m_ns + o->ns};
			H5Dset_extent(m_h5dataset, new_dims);

			// select hyperslab in extended oprtion of dataset
			hid_t filespace = H5Dget_space(m_h5dataset);
			hsize_t offset[2] = {0, m_ns};
			H5Sselect_hyperslab(filespace, H5S_SELECT_SET, offset, NULL,
			                    packet_dims, NULL);

			// Define memory space for new data
			// TODO CHECK FOR ERROR
			hid_t memspace = H5Screate_simple(2, packet_dims, NULL);

			// Write the dataset.
			// TODO: CHECK FOR ERROR
			H5Dwrite(m_h5dataset, H5T_NATIVE_INT16, memspace, filespace,
			         H5P_DEFAULT, o->data);

			m_ns += o->ns; // increment sample pointer

			H5Sclose(memspace);
			H5Sclose(filespace);

			//if (m_os.fail()) { // write lost, should we requeue?
			//	fprintf(stderr,"ERROR: %s write failed!\n", name());
			//}
			delete[] (o->data);
			delete[] (o->ts);
			delete[] (o->tk);
			delete o; // free the memory that was pointed to
		}
	} while (dequeued);

	return true;
}

size_t H5AnalogWriter::capacity()
{
	return m_q ? m_q->size_approx() : 0;
}
size_t H5AnalogWriter::bytes()
{
	return m_ns * m_nc * sizeof(i16);
}
bool H5AnalogWriter::setMetaData(double sr, float *scale, char *name, int slen)
{
	hid_t ds, attr, atype;

	ds = H5Screate(H5S_SCALAR);
	attr = H5Acreate(m_h5dataset, "Sampling Rate", H5T_IEEE_F64LE, ds,
	                 H5P_DEFAULT, H5P_DEFAULT);
	H5Awrite(attr, H5T_NATIVE_DOUBLE, &sr); // TODO: CHECK ERROR
	H5Aclose(attr); // TODO: check error
	H5Sclose(ds);

	hsize_t dims = m_nc;
	ds = H5Screate_simple(1, &dims, NULL);
	attr = H5Acreate(m_h5dataset, "Scale Factor", H5T_IEEE_F32LE, ds,
	                 H5P_DEFAULT, H5P_DEFAULT);
	H5Awrite(attr, H5T_NATIVE_FLOAT, scale); // TODO: CHECK ERROR
	H5Aclose(attr); // TODO: check error
	H5Sclose(ds);

	ds = H5Screate_simple(1, &dims, NULL);
	atype = H5Tcopy(H5T_C_S1);
	H5Tset_size(atype, slen);

	H5Tset_strpad(atype, H5T_STR_NULLTERM);
	attr = H5Acreate(m_h5dataset, "Channel Name", atype, ds,
	                 H5P_DEFAULT, H5P_DEFAULT);
	H5Awrite(attr, atype, name); // TODO: CHECK ERROR
	H5Aclose(attr);
	H5Sclose(ds);

	return true;
}