#ifndef __MATSTOR_H__
#define __MATSTOR_H__

#include <boost/multi_array.hpp>
#include <map>
#include "util.h"

using namespace std;

class MatStor
{
	string m_name; //name of the file.

	typedef pair<string, vector<int> > pair_int_1;
	typedef map<string, vector<int> > map_int_1;
	typedef pair<string, vector<float> > pair_float_1;
	typedef map<string, vector<float> > map_float_1;
	typedef pair<string, vector<double> > pair_double_1;
	typedef map<string, vector<double> > map_double_1;
	map_int_1 m_dati1; // 1-d int
	map_float_1 m_datf1; // 1-d float
	map_double_1 m_datd1; // 1-d double

	typedef boost::multi_array<i16, 2> arrayi16_2;
	typedef boost::multi_array<float, 2> arrayf2;
	typedef boost::multi_array<double, 2> arrayd2;
	map<string, arrayi16_2> m_dati16_2; // 2-d i16
	map<string, arrayf2> m_datf2; // 2-d float
	map<string, arrayd2> m_datd2; // 2-d double

	typedef boost::multi_array<float, 3> arrayf3;
	typedef boost::multi_array<double, 3> arrayd3;
	map<string, arrayf3> m_datf3; // 3-d float!
	map<string, arrayd3> m_datd3; // 3-d double!

	map<string, map_float_1> m_struct1;

public:
	MatStor(const char *fname);
	~MatStor();
	void load();
	void save();
	void save(bool append); // append to file, rather than overwriting
	void clear(); // clears internal structures

	void setInt(int ch, const char *name, int val);
	void setInt(const char *name, vector<int> v);
	int getInt(int ch, const char *name, int def);

	void setValue(int ch, const char *name, float val);
	void setValue(const char *name, vector<float> v);
	float getValue(int ch, const char *name, float def);

	void setDouble(int ch, const char *name, double val);
	double getDouble(int ch, const char *name, double def);

	void set_i16_2(int m, int n, const char *name, i16 val);
	i16 get_i16_2(int m, int n, const char *name, i16 def);

	void setValue2(int ch, int un, const char *name, float val);
	float getValue2(int ch, int un, const char *name, float def);

	void setDouble2(int ch, int un, const char *name, double val);
	double getDouble2(int ch, int un, const char *name, double def);

	void setValue3(int ch, int un, const char *name, float *val, int siz);
	void getValue3(int ch, int un, const char *name, float *val, int siz);

	void setDouble3(int ch, int un, const char *name, double *val, int siz);
	void getDouble3(int ch, int un, const char *name, double *val, int siz);

	void setStructValue(const char *name, const char *field, size_t idx, float val);
	float getStructValue(const char *name, const char *field, size_t idx, float def);

	void printStructs(); // for debugging
};
#endif
