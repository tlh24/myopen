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

#define MATIOTYP int

using namespace std; 

MatStor::MatStor(const char* fname){
	m_name = string(fname); 
	mat_t* m_matfp = Mat_Open(fname, MAT_ACC_RDWR); 
	if(m_matfp == 0){
		printf("will have to create a new %s\n", fname); 
	} else {
		//need to read the matrices in.
		matvar_t* var = Mat_VarReadNext(m_matfp); 
		while(var != NULL){
			string nam = string(var->name); 
			if(var->rank == 3){
				//switch from matlab order to C order.
				array3 r(boost::extents[var->dims[2]][var->dims[1]][var->dims[0]]); 
				if(var->data_size == 4){
					float* w = (float*)var->data; 
					for(MATIOTYP a=0; a<var->dims[2]; a++){
						for(MATIOTYP b=0; b<var->dims[1]; b++){
							for(MATIOTYP c=0; c<var->dims[0]; c++){
								r[a][b][c] = *w++; 
							}
						}
					}
				} else if(var->data_size == 8){
					double* w = (double*)var->data; 
					for(MATIOTYP a=0; a<var->dims[2]; a++){
						for(MATIOTYP b=0; b<var->dims[1]; b++){
							for(MATIOTYP c=0; c<var->dims[0]; c++){
								r[a][b][c] = *w++; 
							}
						}
					}
				} else {
					cout << "unknown data size for matlab variable " << nam << endl; 
				}
				m_dat3.insert(pair<string,array3>(nam,r)); 
			} else if(var->rank == 2){
				if(var->dims[1] > 1){
					array2 r(boost::extents[var->dims[1]][var->dims[0]]); 
					if(var->data_size == 4){
						float* w = (float*)var->data; 
						for(MATIOTYP a=0; a<var->dims[1]; a++){
							for(MATIOTYP b=0; b<var->dims[0]; b++){
								r[a][b] = *w++; 
							}
						}
					} else if(var->data_size == 8){
						double* w = (double*)var->data; 
						for(MATIOTYP a=0; a<var->dims[1]; a++){
							for(MATIOTYP b=0; b<var->dims[0]; b++){
								r[a][b] = *w++; 
							}
						}
					} else {
						cout << "unknown data size for matlab variable " << nam << endl; 
					}
					m_dat2.insert(pair<string,array2>(nam,r)); 
				} else {
					vector<float> r(var->dims[0]); 
					if(var->data_size == 4){
						float* w = (float*)var->data; 
						for(MATIOTYP a=0; a<var->dims[0]; a++){
							r[a] = *w++; 
						}
					} else if(var->data_size == 8){
						double* w = (double*)var->data; 
						for(MATIOTYP a=0; a<var->dims[0]; a++){
							r[a] = *w++; 
						}
					} else {
						cout << "unknown data size for matlab variable " << nam << endl; 
					}
					m_dat1.insert(pair<string,vector<float> >(nam,r)); 
				}
			}
			var = Mat_VarReadNext(m_matfp);
		}
		Mat_Close(m_matfp); 
	}
}
MatStor::~MatStor(){}
void MatStor::save(){
	mat_t *matfp = Mat_Create(m_name.c_str(),NULL);
	map<string, array3>::iterator it3; 
	for(it3 = m_dat3.begin(); it3 != m_dat3.end(); it3++){
		string nam = (*it3).first; 
		array3 dat = (*it3).second; 
		size_t* dims = (size_t*)dat.shape(); 
		MATIOTYP matdims[3]; 
		matdims[0] = dims[2]; 
		matdims[1] = dims[1]; 
		matdims[2] = dims[0]; 
		matvar_t* var = Mat_VarCreate(nam.c_str(), MAT_C_SINGLE, MAT_T_SINGLE, 
												3, matdims, dat.data(), 0); 
		Mat_VarWrite(matfp, var, 0); 
		Mat_VarFree(var); 
	}
	map<string, array2>::iterator it2; 
	for(it2 = m_dat2.begin(); it2 != m_dat2.end(); it2++){
		string nam = (*it2).first; 
		array2 dat = (*it2).second; 
		size_t* dims = (size_t*)dat.shape(); 
		MATIOTYP matdims[2]; 
		matdims[0] = dims[1]; 
		matdims[1] = dims[0]; 
		matvar_t* var = Mat_VarCreate(nam.c_str(), MAT_C_SINGLE, MAT_T_SINGLE, 
												2, matdims, dat.data(), 0); 
		Mat_VarWrite(matfp, var, 0); 
		Mat_VarFree(var); 
	}
	map<string, vector<float>>::iterator it; 
	for(it = m_dat1.begin(); it != m_dat1.end(); it++){
		string nam = (*it).first; 
		vector<float> dat = (*it).second; 
		MATIOTYP dims[2] = {1,1}; 
		dims[0] = (size_t)dat.size(); 
		matvar_t* var = Mat_VarCreate(nam.c_str(), MAT_C_SINGLE, MAT_T_SINGLE, 
												2, dims, dat.data(), 0); 
		Mat_VarWrite(matfp, var, 0); 
		Mat_VarFree(var); 
	}
	Mat_Close(matfp); 
}
void MatStor::setValue(int ch, const char* name, float val){
	map<string, vector<float> >::iterator it; 
	it = m_dat1.find(string(name)); 
	if(it != m_dat1.end()){
		vector<float> *r = &((*it).second); 
		if(ch+1 > (int)(r->size()))
			r->resize(ch+1, val); 
		(*r)[ch] = val; 
	} else {
		vector<float> r(ch+1); 
		r[ch] = val; 
		m_dat1.insert(pair<string,vector<float> >(string(name),r)); 
	}
}
#define max(a,b) (a > b ? a : b)
void MatStor::setValue2(int ch, int un, const char* name, float val){
	// un increments faster than ch.
	map<string, array2>::iterator it; 
	it = m_dat2.find(string(name)); 
	if(it != m_dat2.end()){
		array2 *r = &((*it).second); 
		MATIOTYP* dims = (MATIOTYP*)r->shape(); 
		if(ch+1 > (int)dims[0] || un+1 > (int)dims[1])
			r->resize(boost::extents[max(ch+1,(int)dims[0])][max(un+1,(int)dims[1])]); 
		(*r)[ch][un] = val; 
	} else {
		array2 r(boost::extents[ch+1][un+1]); 
		r[ch][un] = val; 
		m_dat2.insert(pair<string,array2>(string(name), r)); 
	}
}
void MatStor::setValue3(int ch, int un, const char* name, float* val, int siz){
	// [ch][un][siz]
	map<string, array3>::iterator it; 
	it = m_dat3.find(string(name)); 
	if(it != m_dat3.end()){
		array3 *r = &((*it).second); 
		MATIOTYP* dims = (MATIOTYP*)r->shape(); 
		if(ch+1 > (int)dims[0] || un+1 > (int)dims[1] || siz > (int)dims[2])
			r->resize(boost::extents[max(ch+1,(int)dims[0])][max(un+1,(int)dims[1])][max(siz,(int)dims[2])]); 
		for(int i=0; i<siz; i++)
			(*r)[ch][un][i] = *val++; 
	} else {
		array3 r(boost::extents[ch+1][un+1][siz]); 
		for(int i=0; i<siz; i++)
			r[ch][un][i] = *val++; 
		m_dat3.insert(pair<string,array3>(string(name), r)); 
	}
}
float MatStor::getValue(int ch, const char* name, float def){
	map<string, vector<float> >::iterator it; 
	it = m_dat1.find(string(name)); 
	if(it != m_dat1.end()){
		vector<float> *r = &((*it).second); 
		if(ch < (int)r->size())
			return (*it).second[ch]; 
	}
	return def; 
}
float MatStor::getValue2(int ch, int un, const char* name, float def){
	map<string, array2>::iterator it; 
	it = m_dat2.find(string(name)); 
	if(it != m_dat2.end()){
		array2 *r = &((*it).second); 
		MATIOTYP* dims = (MATIOTYP*)r->shape(); 
		if(ch < (int)dims[0] && un < (int)dims[1])
			return (*it).second[ch][un]; 
	}
	return def; 
}
void MatStor::getValue3(int ch, int un, const char* name, float* val, int siz){
	map<string, array3>::iterator it; 
	it = m_dat3.find(string(name)); 
	if(it != m_dat3.end()){
		array3 *r = &((*it).second); 
		MATIOTYP* dims = (MATIOTYP*)r->shape(); 
		if(ch < (int)dims[0] && un < (int)dims[1] && siz <= (int)dims[2]){
			for(int i=0; i<siz; i++){
				*val++ = (*r)[ch][un][i]; 
			}
		}
	}
}

#ifdef TEST
//compile with: 
// g++ -g -std=c++11 -DTEST matStor.cpp -lmatio -lhdf5
int main(void){
	MatStor ms("test.mat"); 
	if(1){
		int err = 0; 
		//verify, test.mat already created. 
		for(int i=0; i<9; i++){
			float v = ms.getValue(i, "d1", 0.f); 
			if(v != (float)i) err++; 
		}
		float f = 0.f; 
		for(int b=8; b>=0; b--){
			for(int a=9; a>=0; a--){
				float v = ms.getValue2(b, a, "d2", 0.0);
				if(v != f) err++; 
				f += 1.f; 
			}
		}
		f = 0.f; 
		for(int c=7; c>=0; c--){
			for(int b=8; b>=0; b--){
				float r[10];  
				ms.getValue3(c, b, "d3", &r[0], 10); 
				for(int i=0; i<10; i++){
					if(r[i] != f) err++; 
					f += 1.f; 
				}
			}
		}
		cout << err << " errors " << endl; 
	}
	//make a 1d vector. 
	for(int i=9; i>=0; i--)
		ms.setValue(i, "d1", (float)i); 
	//2d vector.
	float f = 0.f; 
	for(int b=8; b>=0; b--){
		for(int a=9; a>=0; a--){
			ms.setValue2(b, a, "d2", f); 
			f += 1.f; 
		}
	}
	//3d vector. 
	f = 0.f; 
	for(int c=7; c>=0; c--){
		for(int b=8; b>=0; b--){
			vector<float> r(10); 
			for(int i=0; i<10; i++){
				r[i] = f; 
				f += 1.f; 
			}
			ms.setValue3(c, b, "d3", r.data(), 10); 
		}
	}
	ms.save(); 
}
#endif