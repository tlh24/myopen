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
	m_q = NULL;
}
H5SpikeWriter::~H5SpikeWriter()
{
	delete m_q;
	m_q = NULL;
}
bool H5SpikeWriter::open(const char *fn, size_t nc, size_t nu, size_t nwf)
{
	if (isEnabled())
		return false;
	if (!H5Writer::open(fn)) {
		return false;
	}

	// Create a group
	hid_t group = H5Gcreate(m_h5file, "/acquisition/Spikes",
	                        H5P_DEFAULT, H5P_DEFAULT, H5P_DEFAULT);
	if (group < 0) {
		close();
		return false;
	}
	m_h5groups.push_back(group);

	// create a group for each channel and for each unit in each channel
	for (size_t i=1; i<=nc; i++) { // 1-indexed

		char buf[256];
		sprintf(buf, "/acquisition/Spikes/Chan%zu", i);
		group = H5Gcreate(m_h5file, buf,
		                  H5P_DEFAULT, H5P_DEFAULT, H5P_DEFAULT);
		if (group < 0) {
			close();
			return false;
		}
		m_h5groups.push_back(group);

		for (size_t j=0; j<=nu; j++) { // 1-indexed, zero is unsorted

			auto idx = make_pair(i,j);

			sprintf(buf, "/acquisition/Spikes/Chan%zu/Unit%zu", i, j);
			group = H5Gcreate(m_h5file, buf,
			                  H5P_DEFAULT, H5P_DEFAULT, H5P_DEFAULT);
			if (group < 0) {
				close();
				return false;
			}
			m_h5groups.push_back(group);

			// in the below we'll need, at most, 2 dims
			hsize_t init_dims[2], max_dims[2], chunk_dims[2];

			hid_t prop, ds, dset;

			// TICKS
			init_dims[0] 	= 0;
			max_dims[0] 	= H5S_UNLIMITED;
			ds = H5Screate_simple(1, init_dims, max_dims);
			if (ds < 0) {
				close();
				return false;
			}
			prop = H5Pcreate(H5P_DATASET_CREATE);
			if (m_shuffle)
				shuffleDataset(prop);
			if (m_deflate)
				deflateDataset(prop);
			chunk_dims[0] = 128;
			H5Pset_chunk(prop, 1, chunk_dims);
			sprintf(buf, "/acquisition/Spikes/Chan%zu/Unit%zu/Ticks", i, j);
			dset = H5Dcreate(m_h5file, buf, H5T_STD_I64LE,
			                 ds, H5P_DEFAULT, prop, H5P_DEFAULT);
			if (dset < 0) {
				close();
				return false;
			}
			m_h5Dtk[idx] = dset;
			m_h5dataspaces.push_back(ds);
			m_h5props.push_back(prop);

			// TIMESTAMPS
			init_dims[0] 	= 0;
			max_dims[0] 	= H5S_UNLIMITED;
			ds = H5Screate_simple(1, init_dims, max_dims);
			if (ds < 0) {
				close();
				return false;
			}
			prop = H5Pcreate(H5P_DATASET_CREATE);
			if (m_shuffle)
				shuffleDataset(prop);
			if (m_deflate)
				deflateDataset(prop);
			chunk_dims[0] = 128;
			H5Pset_chunk(prop, 1, chunk_dims);
			sprintf(buf, "/acquisition/Spikes/Chan%zu/Unit%zu/Timestamps", i, j);
			dset = H5Dcreate(m_h5file, buf, H5T_IEEE_F64LE,
			                 ds, H5P_DEFAULT, prop, H5P_DEFAULT);
			if (dset < 0) {
				close();
				return false;
			}
			m_h5Dts[idx] = dset;
			m_h5dataspaces.push_back(ds);
			m_h5props.push_back(prop);

			// WAVEFORMS
			init_dims[0] 	= nwf;
			init_dims[1]	= 0;
			max_dims[0]		= nwf;
			max_dims[1] 	= H5S_UNLIMITED;
			ds = H5Screate_simple(2, init_dims, max_dims);
			if (ds < 0) {
				close();
				return false;
			}
			prop = H5Pcreate(H5P_DATASET_CREATE);
			if (m_shuffle)
				shuffleDataset(prop);
			if (m_deflate)
				deflateDataset(prop);
			chunk_dims[0] = nwf;
			chunk_dims[1] = 128;
			H5Pset_chunk(prop, 2, chunk_dims);
			sprintf(buf, "/acquisition/Spikes/Chan%zu/Unit%zu/Waveforms", i, j);
			dset = H5Dcreate(m_h5file, buf, H5T_IEEE_F32LE,
			                 ds, H5P_DEFAULT, prop, H5P_DEFAULT);
			if (dset < 0) {
				close();
				return false;
			}
			m_h5Dwf[idx] = dset;
			m_h5dataspaces.push_back(ds);
			m_h5props.push_back(prop);

			m_ns[idx] = 0;

		}
	}

	m_nc = nc;
	m_nu = nu;
	m_nwf = nwf;

	m_q = new ReaderWriterQueue<SPIKE *>(H5S_BUF_SIZE);

	enable();

	return true;
}

bool H5SpikeWriter::close()
{
	disable();

	if (m_q) {
		delete m_q;
		m_q = NULL;
	}

	m_nwf = 0;
	m_nu = 0;
	m_nc = 0;

	for (auto &kv : m_h5Dtk) {
		if (kv.second > 0) {
			H5Dclose(kv.second);
		}
	}
	m_h5Dtk.clear();

	for (auto &kv : m_h5Dts) {
		if (kv.second > 0) {
			H5Dclose(kv.second);
		}
	}
	m_h5Dts.clear();

	for (auto &kv : m_h5Dwf) {
		if (kv.second > 0) {
			H5Dclose(kv.second);
		}
	}
	m_h5Dwf.clear();

	m_ns.clear();

	return H5Writer::close();
}


bool H5SpikeWriter::add(SPIKE *s)	// call from a single producer thread
{
	if (!isEnabled()) {
		delete[] (s->wf);
		delete s;
		return false;
	}
	return m_q->enqueue(s);	// todo: what if this (memory alloc) fails
}


bool H5SpikeWriter::write()   // call from a single consumer thread
{
	if (!isEnabled())
		return false;

	//Lock so that the file isnt closed out from under us
	lock_guard<mutex> lock(m_mtx); // very important!!!

	bool dequeued;
	do {
		SPIKE *s;
		dequeued = m_q->try_dequeue(s);
		if (dequeued) {

			if ((s->nwf != m_nwf) && s->nwf != 0) {
				warn("well this is embarassing");
			}

			auto idx = make_pair(s->ch, s->un);

			hsize_t new_dims[2], offset[2], packet_dims[2];
			hid_t filespace, memspace;

			// TICKS
			// extend dataset for new data (TODO: CHECK FOR ERROR)
			new_dims[0] = m_ns[idx] + 1;
			H5Dset_extent(m_h5Dtk[idx], new_dims);
			// select hyperslab in extended oprtion of dataset
			filespace = H5Dget_space(m_h5Dtk[idx]);
			offset[0] = m_ns[idx];
			packet_dims[0] = 1;
			H5Sselect_hyperslab(filespace, H5S_SELECT_SET, offset, NULL,
			                    packet_dims, NULL);
			// Define memory space for new data (TODO CHECK FOR ERROR)
			memspace = H5Screate_simple(1, packet_dims, NULL);
			// Write the dataset (TODO: CHECK FOR ERROR)
			H5Dwrite(m_h5Dtk[idx], H5T_NATIVE_INT64, memspace, filespace,
			         H5P_DEFAULT, &(s->tk));
			H5Sclose(memspace);
			H5Sclose(filespace);

			// TIMESTAMPS
			// extend dataset for new data (TODO: CHECK FOR ERROR)
			new_dims[0] = m_ns[idx] + 1;
			H5Dset_extent(m_h5Dts[idx], new_dims);
			// select hyperslab in extended oprtion of dataset
			filespace = H5Dget_space(m_h5Dts[idx]);
			offset[0] = m_ns[idx];
			packet_dims[0] = 1;
			H5Sselect_hyperslab(filespace, H5S_SELECT_SET, offset, NULL,
			                    packet_dims, NULL);
			// Define memory space for new data (TODO CHECK FOR ERROR)
			memspace = H5Screate_simple(1, packet_dims, NULL);
			// Write the dataset (TODO: CHECK FOR ERROR)
			H5Dwrite(m_h5Dts[idx], H5T_IEEE_F64LE, memspace, filespace,
			         H5P_DEFAULT, &(s->ts));
			H5Sclose(memspace);
			H5Sclose(filespace);

			// WAVEFORMS
			// extend dataset for new data (TODO: CHECK FOR ERROR)
			if (s->nwf != 0) {
				new_dims[0] = m_nwf;
				new_dims[1] = m_ns[idx] + 1;
				H5Dset_extent(m_h5Dwf[idx], new_dims);
				// select hyperslab in extended oprtion of dataset
				filespace = H5Dget_space(m_h5Dwf[idx]);
				offset[0] = 0;
				offset[1] = m_ns[idx];
				packet_dims[0] = m_nwf;
				packet_dims[1] = 1;
				H5Sselect_hyperslab(filespace, H5S_SELECT_SET, offset, NULL,
				                    packet_dims, NULL);
				// Define memory space for new data (TODO CHECK FOR ERROR)
				memspace = H5Screate_simple(1, packet_dims, NULL);
				// Write the dataset (TODO: CHECK FOR ERROR)
				H5Dwrite(m_h5Dwf[idx], H5T_IEEE_F32LE, memspace, filespace,
				         H5P_DEFAULT, s->wf);
				H5Sclose(memspace);
				H5Sclose(filespace);
			}

			m_ns[idx] += 1; // increment sample pointer

			//if (m_os.fail()) { // write lost, should we requeue?
			//	fprintf(stderr,"ERROR: %s write failed!\n", name());
			//}
			delete[] (s->wf);
			delete s; // free the memory that was pointed to
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
	size_t n = 0;
	for (auto &x : m_ns) {
		n += x.second * sizeof(i64);
		n += x.second * sizeof(double);
		n += x.second * m_nwf * sizeof(float);
	}
	return n;
}

bool H5SpikeWriter::setMetaData(double sr, char *name, int slen)
{
	hid_t ds, attr, atype;

	// sampling rate
	ds = H5Screate(H5S_SCALAR);
	attr = H5Acreate(m_h5file, "/acquisition/Spikes/Sampling Rate", H5T_IEEE_F64LE, ds,
	                 H5P_DEFAULT, H5P_DEFAULT);
	H5Awrite(attr, H5T_NATIVE_DOUBLE, &sr); // TODO: CHECK ERROR
	H5Aclose(attr); // TODO: check error
	H5Sclose(ds);

	// channel names
	hsize_t dims = m_nc;
	ds = H5Screate_simple(1, &dims, NULL);
	atype = H5Tcopy(H5T_C_S1);
	H5Tset_size(atype, slen);
	H5Tset_strpad(atype, H5T_STR_NULLTERM);
	attr = H5Acreate(m_h5file, "/acquisition/Spikes/Channel Name", atype, ds,
	                 H5P_DEFAULT, H5P_DEFAULT);
	H5Awrite(attr, atype, name); // TODO: CHECK ERROR
	H5Aclose(attr);
	H5Tclose(atype);
	H5Sclose(ds);

	return true;
}
