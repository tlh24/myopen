#include <stdio.h>
#include <boost/multi_array.hpp>
#include <map>
#include <string>
#include <iostream>
#include <matio.h>
#include "matStor.h"

// state was stored in a sqlite table --
// but it would be better for backup & introspection purposes
// to store it in a matlab file.
// therefore the task is to emulate sql.h and sql.cpp

#define MATIOTYP size_t

#define max(a,b) (a > b ? a : b)

using namespace std;

MatStor::MatStor(const char *fname)
{
	m_name = string(fname);
}
MatStor::~MatStor() {}
void MatStor::load()
{
	mat_t *matfp = Mat_Open(m_name.c_str(), MAT_ACC_RDWR);
	if (matfp == 0) {
		printf("MatStor: %s: nothing to load\n", m_name.c_str());
		return;
	}

	//need to read the matrices in.
	matvar_t *var = Mat_VarReadNext(matfp);
	while (var != NULL) {
		string nam = string(var->name);

		if (var->rank == 3) {
			if (var->class_type == MAT_C_SINGLE) {
				// switch from matlab order to C order.
				arrayf3 r(boost::extents[var->dims[2]][var->dims[1]][var->dims[0]]);
				float *w = (float *)var->data;
				for (MATIOTYP a=0; a<var->dims[2]; a++) {
					for (MATIOTYP b=0; b<var->dims[1]; b++) {
						for (MATIOTYP c=0; c<var->dims[0]; c++) {
							r[a][b][c] = *w++;
						}
					}
				}
				m_datf3.insert(pair<string,arrayf3>(nam,r));
			} else if (var->class_type == MAT_C_DOUBLE) {
				arrayd3 r(boost::extents[var->dims[2]][var->dims[1]][var->dims[0]]);
				double *w = (double *)var->data;
				for (MATIOTYP a=0; a<var->dims[2]; a++) {
					for (MATIOTYP b=0; b<var->dims[1]; b++) {
						for (MATIOTYP c=0; c<var->dims[0]; c++) {
							r[a][b][c] = *w++;
						}
					}
				}
				m_datd3.insert(pair<string,arrayd3>(nam,r));
			} else {
				cout << "unknown data class for matlab variable " << nam << endl;
			}
		} else if (var->rank == 2) {
			if (var->dims[1] > 1) {
				if (var->class_type == MAT_C_SINGLE) {
					arrayf2 r(boost::extents[var->dims[1]][var->dims[0]]);
					float *w = (float *)var->data;
					for (MATIOTYP a=0; a<var->dims[1]; a++) {
						for (MATIOTYP b=0; b<var->dims[0]; b++) {
							r[a][b] = *w++;
						}
					}
					m_datf2.insert(pair<string,arrayf2>(nam,r));
				} else if (var->class_type == MAT_C_DOUBLE) {
					arrayd2 r(boost::extents[var->dims[1]][var->dims[0]]);
					double *w = (double *)var->data;
					for (MATIOTYP a=0; a<var->dims[1]; a++) {
						for (MATIOTYP b=0; b<var->dims[0]; b++) {
							r[a][b] = *w++;
						}
					}
					m_datd2.insert(pair<string,arrayd2>(nam,r));
				} else {
					cout << "unknown data class for matlab variable " << nam << endl;
				}
			} else { // RANK IS 1
				if (var->class_type == MAT_C_INT32) {
					vector<int> r(var->dims[0]);
					int *w = (int *)var->data;
					for (MATIOTYP a=0; a<var->dims[0]; a++) {
						r[a] = *w++;
					}
					m_dati1.insert( pair_int_1(nam,r) );
				} else if (var->class_type == MAT_C_SINGLE) {
					vector<float> r(var->dims[0]);
					float *w = (float *)var->data;
					for (MATIOTYP a=0; a<var->dims[0]; a++) {
						r[a] = *w++;
					}
					m_datf1.insert(pair_float_1(nam,r));
				} else if (var->class_type == MAT_C_DOUBLE) {
					vector<double> r(var->dims[0]);
					double *w = (double *)var->data;
					for (MATIOTYP a=0; a<var->dims[0]; a++) {
						r[a] = *w++;
					}
					m_datd1.insert(pair<string,vector<double> >(nam,r));
				} else if (var->class_type == MAT_C_STRUCT) {
					map_float_1 fm;
					int n = Mat_VarGetNumberOfFields(var);
					char *const *f = Mat_VarGetStructFieldnames(var);
					for (int i=0; i<n; i++) {
						matvar_t *v = Mat_VarGetStructFieldByName(var,f[i],0);
						if (v->rank == 2 && v->class_type == MAT_C_SINGLE) {
							string fs = string(v->name);
							vector<float> r(v->dims[0]);
							float *w = (float *)v->data;
							for (MATIOTYP a=0; a<v->dims[0]; a++) {
								r[a] = *w++;
							}
							fm.insert(pair_float_1(fs,r));
						}
					}
					if (!fm.empty()) {
						m_struct1.insert(pair<string,map_float_1>(nam,fm));
					}
				} else {
					cout << "unknown data class for matlab variable " << nam << endl;
				}
			}
		}
		Mat_VarFree(var);
		var = Mat_VarReadNext(matfp);
	}
	Mat_Close(matfp);
}
void MatStor::save(bool append)
{
	mat_t *matfp = 0;

	if (append) {
		matfp = Mat_Open(m_name.c_str(), MAT_ACC_RDWR);
	}

	if (matfp == 0) {
		printf("MatStor: will create/overwrite %s\n", m_name.c_str());
		matfp = Mat_CreateVer(m_name.c_str(),NULL, MAT_FT_MAT73);
	}

	for (auto &x : m_datf3) {
		string nam = x.first;
		arrayf3 dat = x.second;
		const arrayf3::size_type *dims = dat.shape();
		MATIOTYP matdims[3];
		matdims[0] = dims[2];
		matdims[1] = dims[1];
		matdims[2] = dims[0];
		matvar_t *var = Mat_VarCreate(nam.c_str(), MAT_C_SINGLE, MAT_T_SINGLE,
		                              3, matdims, dat.data(), 0);
		Mat_VarWrite(matfp, var, MAT_COMPRESSION_NONE);
		Mat_VarFree(var);
	}
	for (auto &x : m_datd3) {
		string nam = x.first;
		arrayd3 dat = x.second;
		const arrayd3::size_type *dims = dat.shape();
		MATIOTYP matdims[3];
		matdims[0] = dims[2];
		matdims[1] = dims[1];
		matdims[2] = dims[0];
		matvar_t *var = Mat_VarCreate(nam.c_str(), MAT_C_DOUBLE, MAT_T_DOUBLE,
		                              3, matdims, dat.data(), 0);
		Mat_VarWrite(matfp, var, MAT_COMPRESSION_NONE);
		Mat_VarFree(var);
	}
	for (auto &x : m_datf2) {
		string nam = x.first;
		arrayf2 dat = x.second;
		const arrayf2::size_type *dims = dat.shape();
		MATIOTYP matdims[2];
		matdims[0] = dims[1];
		matdims[1] = dims[0];
		matvar_t *var = Mat_VarCreate(nam.c_str(), MAT_C_SINGLE, MAT_T_SINGLE,
		                              2, matdims, dat.data(), 0);
		Mat_VarWrite(matfp, var, MAT_COMPRESSION_NONE);
		Mat_VarFree(var);
	}
	for (auto &x : m_datd2) {
		string nam = x.first;
		arrayd2 dat = x.second;
		const arrayd2::size_type *dims = dat.shape();
		MATIOTYP matdims[2];
		matdims[0] = dims[1];
		matdims[1] = dims[0];
		matvar_t *var = Mat_VarCreate(nam.c_str(), MAT_C_DOUBLE, MAT_T_DOUBLE,
		                              2, matdims, dat.data(), 0);
		Mat_VarWrite(matfp, var, MAT_COMPRESSION_NONE);
		Mat_VarFree(var);
	}
	for (auto &x : m_dati1) {
		string nam = x.first;
		vector<int> dat = x.second;
		MATIOTYP dims[2] = {1,1};
		dims[0] = (size_t)dat.size();
		matvar_t *var = Mat_VarCreate(nam.c_str(), MAT_C_INT32, MAT_T_INT32,
		                              2, dims, dat.data(), 0);
		Mat_VarWrite(matfp, var, MAT_COMPRESSION_NONE);
		Mat_VarFree(var);
	}
	for (auto &x : m_datf1) {
		string nam = x.first;
		vector<float> dat = x.second;
		MATIOTYP dims[2] = {1,1};
		dims[0] = (size_t)dat.size();
		matvar_t *var = Mat_VarCreate(nam.c_str(), MAT_C_SINGLE, MAT_T_SINGLE,
		                              2, dims, dat.data(), 0);
		Mat_VarWrite(matfp, var, MAT_COMPRESSION_NONE);
		Mat_VarFree(var);
	}
	for (auto &x : m_datd1) {
		string nam = x.first;
		vector<double> dat = x.second;
		MATIOTYP dims[2] = {1,1};
		dims[0] = (size_t)dat.size();
		matvar_t *var = Mat_VarCreate(nam.c_str(), MAT_C_DOUBLE, MAT_T_DOUBLE,
		                              2, dims, dat.data(), 0);
		Mat_VarWrite(matfp, var, MAT_COMPRESSION_NONE);
		Mat_VarFree(var);
	}
	for (auto &x : m_struct1) {
		string nam = x.first;
		map_float_1 *f = &(x.second);
		vector<const char *> fields;
		for (auto &y : *f)
			fields.push_back(y.first.c_str());
		MATIOTYP dims[2] = {1,1};
		matvar_t *var = Mat_VarCreateStruct(nam.c_str(), 2, dims, &fields[0], fields.size());
		for (auto &y : *f) {
			string fieldnam = y.first;
			vector<float> dat = y.second;
			dims[0] = (size_t)dat.size();
			matvar_t *field = Mat_VarCreate(NULL,MAT_C_SINGLE,MAT_T_SINGLE,
			                                2, dims, dat.data(), 0);
			Mat_VarSetStructFieldByName(var, fieldnam.c_str(), 0, field);
		}
		Mat_VarWrite(matfp, var, MAT_COMPRESSION_NONE);
		Mat_VarFree(var);
	}
	Mat_Close(matfp);
}
void MatStor::save()
{
	save(false);
}
void MatStor::clear()
{
	// 1-d
	m_dati1.clear();
	m_datf1.clear();
	m_datd1.clear();

	// 2-d
	m_dati16_2.clear();
	m_datf2.clear();
	m_datd2.clear();

	// 3-d
	m_datf3.clear();
	m_datd3.clear();

	// structs
	m_struct1.clear();
}
void MatStor::setInt(int ch, const char *name, int val)
{
	map_int_1::iterator it = m_dati1.find(string(name));
	if (it != m_dati1.end()) {
		vector<int> *r = &((*it).second);
		if (ch+1 > (int)(r->size()))
			r->resize(ch+1, val);
		(*r)[ch] = val;
	} else {
		vector<int> r(ch+1);
		r[ch] = val;
		m_dati1.insert(pair_int_1(string(name),r));
	}
}
void MatStor::setInt(const char *name, vector<int> v)
{
	map_int_1::iterator it = m_dati1.find(string(name));
	if (it != m_dati1.end()) {
		vector<int> *r = &((*it).second);
		(*r) = v;
	} else {
		m_dati1.insert(pair_int_1(string(name),v));
	}
}
int MatStor::getInt(int ch, const char *name, int def)
{
	map_int_1::iterator it = m_dati1.find(string(name));
	if (it != m_dati1.end()) {
		vector<int> *r = &((*it).second);
		if (ch < (int)r->size())
			return (*it).second[ch];
	}
	return def;
}
void MatStor::setValue(int ch, const char *name, float val)
{
	map_float_1::iterator it = m_datf1.find(string(name));
	if (it != m_datf1.end()) {
		vector<float> *r = &((*it).second);
		if (ch+1 > (int)(r->size()))
			r->resize(ch+1, val);
		(*r)[ch] = val;
	} else {
		vector<float> r(ch+1);
		r[ch] = val;
		m_datf1.insert(pair_float_1(string(name),r));
	}
}
void MatStor::setValue(const char *name, vector<float> v)
{
	map_float_1::iterator it = m_datf1.find(string(name));
	if (it != m_datf1.end()) {
		vector<float> *r = &((*it).second);
		(*r) = v;
	} else {
		m_datf1.insert(pair_float_1(string(name),v));
	}
}
float MatStor::getValue(int ch, const char *name, float def)
{
	map_float_1::iterator it = m_datf1.find(string(name));
	if (it != m_datf1.end()) {
		vector<float> *r = &((*it).second);
		if (ch < (int)r->size())
			return (*it).second[ch];
	}
	return def;
}
void MatStor::setDouble(int ch, const char *name, double val)
{
	map<string, vector<double> >::iterator it = m_datd1.find(string(name));
	if (it != m_datd1.end()) {
		vector<double> *r = &((*it).second);
		if (ch+1 > (int)(r->size()))
			r->resize(ch+1, val);
		(*r)[ch] = val;
	} else {
		vector<double> r(ch+1);
		r[ch] = val;
		m_datd1.insert(pair<string,vector<double> >(string(name),r));
	}
}
double MatStor::getDouble(int ch, const char *name, double def)
{
	map<string, vector<double> >::iterator it = m_datd1.find(string(name));
	if (it != m_datd1.end()) {
		vector<double> *r = &((*it).second);
		if (ch < (int)r->size())
			return (*it).second[ch];
	}
	return def;
}
void MatStor::set_i16_2(int m, int n, const char *name, i16 val)
{
	// n increments faster than m.
	map<string, arrayi16_2>::iterator it = m_dati16_2.find(string(name));
	if (it != m_dati16_2.end()) {
		arrayi16_2 *r = &((*it).second);
		const arrayi16_2::size_type *dims = r->shape();
		if (m+1 > (int)dims[0] || n+1 > (int)dims[1])
			r->resize(boost::extents[max(m+1,(int)dims[0])][max(n+1,(int)dims[1])]);
		(*r)[m][n] = val;
	} else {
		arrayi16_2 r(boost::extents[m+1][n+1]);
		r[m][n] = val;
		m_dati16_2.insert(pair<string,arrayi16_2>(string(name), r));
	}
}
i16 MatStor::get_i16_2(int m, int n, const char *name, i16 def)
{
	map<string, arrayi16_2>::iterator it = m_dati16_2.find(string(name));
	if (it != m_dati16_2.end()) {
		arrayi16_2 *r = &((*it).second);
		const arrayi16_2::size_type *dims = r->shape();
		if (m < (int)dims[0] && n < (int)dims[1])
			return (*it).second[m][n];
	}
	return def;
}
void MatStor::setValue2(int ch, int un, const char *name, float val)
{
	// un increments faster than ch.
	map<string, arrayf2>::iterator it = m_datf2.find(string(name));
	if (it != m_datf2.end()) {
		arrayf2 *r = &((*it).second);
		const arrayf2::size_type *dims = r->shape();
		if (ch+1 > (int)dims[0] || un+1 > (int)dims[1])
			r->resize(boost::extents[max(ch+1,(int)dims[0])][max(un+1,(int)dims[1])]);
		(*r)[ch][un] = val;
	} else {
		arrayf2 r(boost::extents[ch+1][un+1]);
		r[ch][un] = val;
		m_datf2.insert(pair<string,arrayf2>(string(name), r));
	}
}
void MatStor::setDouble2(int ch, int un, const char *name, double val)
{
	// un increments faster than ch.
	map<string, arrayd2>::iterator it = m_datd2.find(string(name));
	if (it != m_datd2.end()) {
		arrayd2 *r = &((*it).second);
		const arrayd2::size_type *dims = r->shape();
		if (ch+1 > (int)dims[0] || un+1 > (int)dims[1])
			r->resize(boost::extents[max(ch+1,(int)dims[0])][max(un+1,(int)dims[1])]);
		(*r)[ch][un] = val;
	} else {
		arrayd2 r(boost::extents[ch+1][un+1]);
		r[ch][un] = val;
		m_datd2.insert(pair<string,arrayd2>(string(name), r));
	}
}
void MatStor::setValue3(int ch, int un, const char *name, float *val, int siz)
{
	// [ch][un][siz]
	map<string, arrayf3>::iterator it = m_datf3.find(string(name));
	if (it != m_datf3.end()) {
		arrayf3 *r = &((*it).second);
		const arrayf3::size_type *dims = r->shape();
		if (ch+1 > (int)dims[0] || un+1 > (int)dims[1] || siz > (int)dims[2])
			r->resize(boost::extents[max(ch+1,(int)dims[0])][max(un+1,(int)dims[1])][max(siz,(int)dims[2])]);
		for (int i=0; i<siz; i++)
			(*r)[ch][un][i] = *val++;
	} else {
		arrayf3 r(boost::extents[ch+1][un+1][siz]);
		for (int i=0; i<siz; i++)
			r[ch][un][i] = *val++;
		m_datf3.insert(pair<string,arrayf3>(string(name), r));
	}
}
void MatStor::setDouble3(int ch, int un, const char *name, double *val, int siz)
{
	// [ch][un][siz]
	map<string, arrayd3>::iterator it = m_datd3.find(string(name));
	if (it != m_datd3.end()) {
		arrayd3 *r = &((*it).second);
		const arrayd3::size_type *dims = r->shape();
		if (ch+1 > (int)dims[0] || un+1 > (int)dims[1] || siz > (int)dims[2])
			r->resize(boost::extents[max(ch+1,(int)dims[0])][max(un+1,(int)dims[1])][max(siz,(int)dims[2])]);
		for (int i=0; i<siz; i++)
			(*r)[ch][un][i] = *val++;
	} else {
		arrayd3 r(boost::extents[ch+1][un+1][siz]);
		for (int i=0; i<siz; i++)
			r[ch][un][i] = *val++;
		m_datd3.insert(pair<string,arrayd3>(string(name), r));
	}
}
void MatStor::setStructValue(const char *name, const char *field, size_t idx, float val)
{
	map<string, map_float_1>::iterator it = m_struct1.find(string(name));
	if (it != m_struct1.end()) {
		map_float_1 *f = &((*it).second);
		map_float_1::iterator it2 = f->find(string(field));
		if (it2 != f->end()) {
			vector<float> *r = &((*it2).second);
			if (idx+1 > r->size())
				r->resize(idx+1);
			(*r)[idx] = val;
		} else {
			vector<float> r(idx+1);
			r[idx] = val;
			f->insert(pair_float_1(string(field),r));
		}
	} else {
		vector<float> r(idx+1);
		r[idx] = val;
		map_float_1 f;
		f.insert(pair_float_1(string(field),r));
		m_struct1.insert(pair<string,map_float_1>(string(name),f));
	}
}
float MatStor::getValue2(int ch, int un, const char *name, float def)
{
	map<string, arrayf2>::iterator it = m_datf2.find(string(name));
	if (it != m_datf2.end()) {
		arrayf2 *r = &((*it).second);
		const arrayf2::size_type *dims = r->shape();
		if (ch < (int)dims[0] && un < (int)dims[1])
			return (*it).second[ch][un];
	}
	return def;
}
double MatStor::getDouble2(int ch, int un, const char *name, double def)
{
	map<string, arrayd2>::iterator it = m_datd2.find(string(name));
	if (it != m_datd2.end()) {
		arrayd2 *r = &((*it).second);
		const arrayd2::size_type *dims = r->shape();
		if (ch < (int)dims[0] && un < (int)dims[1])
			return (*it).second[ch][un];
	}
	return def;
}
void MatStor::getValue3(int ch, int un, const char *name, float *val, int siz)
{
	map<string, arrayf3>::iterator it = m_datf3.find(string(name));
	if (it != m_datf3.end()) {
		arrayf3 *r = &((*it).second);
		const arrayf3::size_type *dims = r->shape();
		if (ch < (int)dims[0] && un < (int)dims[1] && siz <= (int)dims[2]) {
			for (int i=0; i<siz; i++) {
				*val++ = (*r)[ch][un][i];
			}
		}
	}
}
void MatStor::getDouble3(int ch, int un, const char *name, double *val, int siz)
{
	map<string, arrayd3>::iterator it = m_datd3.find(string(name));
	if (it != m_datd3.end()) {
		arrayd3 *r = &((*it).second);
		const arrayd3::size_type *dims = r->shape();
		if (ch < (int)dims[0] && un < (int)dims[1] && siz <= (int)dims[2]) {
			for (int i=0; i<siz; i++) {
				*val++ = (*r)[ch][un][i];
			}
		}
	}
}
float MatStor::getStructValue(const char *name, const char *field, size_t idx, float def)
{
	map<string, map_float_1>::iterator it = m_struct1.find(string(name));
	if (it != m_struct1.end()) {
		map_float_1 *f = &((*it).second);
		map_float_1::iterator it2 = f->find(string(field));
		if (it2 != f->end()) {
			vector<float> *r = &((*it2).second);
			if (idx < r->size()) {
#ifdef DEBUG
				printf("loaded %s.%s: %f\n", name, field, r->at(idx));
#endif
				return (*r)[idx];
			}
		}
	}
#ifdef DEBUG
	printf("failed to load %s.%s (default: %f)\n", name, field, def);
#endif
	return def;
}

void MatStor::printStructs()
{
	for (map<string, map_float_1>::iterator it = m_struct1.begin(); it != m_struct1.end(); it++) {
		string struct_name = (*it).first;
		map_float_1 f = (*it).second;
		for (map_float_1::iterator it2 = f.begin(); it2 != f.end(); it2++) {
			string field_name = (*it2).first;
			vector<float> v = (*it2).second;
			printf("%s.%s = [ ", struct_name.c_str(), field_name.c_str());
			for (vector<float>::iterator it3 = v.begin(); it3 != v.end(); it3++) {
				printf("%f ", (*it3));
			}
			printf("]\n");
		}
	}
}

#ifdef TEST
//compile with:
// g++ -g -std=c++11 -DTEST matStor.cpp -lmatio -lhdf5_serial -o matio_test
int main(void)
{
	MatStor ms("test.mat");
	ms.load();
	if (1) {
		int err = 0;
		//verify, test.mat already created.

		// int32 (a)
		for (int i=0; i<10; i++) {
			int v;
			v = ms.getInt(i, "i1a", 0);
			if (v != (float)i) err++;
			v = ms.getInt(i, "i1b", 0);
			if (v != (float)i) err++;
		}

		for (int i=0; i<10; i++) {
			float v;
			v = ms.getValue(i, "f1a", 0.f);
			if (v != (float)i) err++;
			v = ms.getValue(i, "f1b", 0.f);
			if (v != (float)i) err++;
		}
		float f = 0.f;
		for (int b=8; b>=0; b--) {
			for (int a=9; a>=0; a--) {
				float v = ms.getValue2(b, a, "f2", 0.0);
				if (v != f) err++;
				f += 1.f;
			}
		}
		f = 0.f;
		for (int c=7; c>=0; c--) {
			for (int b=8; b>=0; b--) {
				float r[10];
				ms.getValue3(c, b, "f3", &r[0], 10);
				for (int i=0; i<10; i++) {
					if (r[i] != f) err++;
					f += 1.f;
				}
			}
		}
		// test loading structs
		float v;
		v = ms.getStructValue("foo","bar",0,0);
		if (v != 1) err++;
		v = ms.getStructValue("foo","bar",1,0);
		if (v != 2) err++;
		v = ms.getStructValue("foo","bar",2,0);
		if (v != 3) err++;
		v = ms.getStructValue("foo","baz",0,0);
		if (fabs(v-3.14) > 1e-6) err++;

		cout << err << " errors " << endl;
	}

	// make 1d int32 vector
	for (int i=0; i<10; i++)
		ms.setInt(i, "i1a", (int)i);

	// make 1d int32 vector (std::vector interface)
	vector<int> i1b {0, 1, 2, 3, 4, 5, 6, 7, 8, 9};
	ms.setInt("i1b", i1b);

	// make a 1d float vector
	for (int i=9; i>=0; i--)
		ms.setValue(i, "f1a", (float)i);

	// make a 1d float vector (std::vector interface)
	vector<float> f1b {0.0, 1.0, 2.0, 3.0, 4.0, 5.0, 6.0, 7.0, 8.0, 9.0};
	ms.setValue("f1b", f1b);

	// make 2d float vector.
	float f = 0.f;
	for (int b=8; b>=0; b--) {
		for (int a=9; a>=0; a--) {
			ms.setValue2(b, a, "f2", f);
			f += 1.f;
		}
	}
	//3d vector.
	f = 0.f;
	for (int c=7; c>=0; c--) {
		for (int b=8; b>=0; b--) {
			vector<float> r(10);
			for (int i=0; i<10; i++) {
				r[i] = f;
				f += 1.f;
			}
			ms.setValue3(c, b, "f3", r.data(), 10);
		}
	}
	// test saving struct
	ms.setStructValue("foo","bar",0,1);
	ms.setStructValue("foo","bar",1,2);
	ms.setStructValue("foo","bar",2,3);
	ms.setStructValue("foo","baz",0,3.14);

	// need testcase for vector insertion (and reading)routines

	ms.save();
}
#endif