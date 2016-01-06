#ifndef __MATSTOR_H__
#define __MATSTOR_H__

#include <boost/multi_array.hpp>
#include <map>

class MatStor
{
	std::string m_name; //name of the file.

	typedef std::pair<std::string, std::vector<int> > pair_int_1;
	typedef std::map<std::string, std::vector<int> > map_int_1;

	typedef std::pair<std::string, std::vector<float> > pair_float_1;
	typedef std::map<std::string, std::vector<float> > map_float_1;

	typedef std::pair<std::string, std::vector<double> > pair_double_1;
	typedef std::map<std::string, std::vector<double> > map_double_1;

	map_int_1 m_dati1; // 1-d int
	map_float_1 m_datf1; // 1-d float
	map_double_1 m_datd1; // 1-d double

	typedef boost::multi_array<float, 2> array2;
	typedef boost::multi_array<double, 2> arrayd2;
	std::map<std::string, array2> m_dat2; // 2-d float
	std::map<std::string, arrayd2> m_datd2; // 2-d double

	typedef boost::multi_array<float, 3> array3;
	typedef boost::multi_array<double, 3> arrayd3;
	std::map<std::string, array3> m_dat3; // 3-d float!
	std::map<std::string, arrayd3> m_datd3; // 3-d double!

	std::map<std::string, map_float_1> m_struct1;

public:
	MatStor(const char *fname);
	~MatStor();
	void load();
	void save();
	void save(bool append); // append to file, rather than overwriting
	void clear(); // clears internal structures

	void setInt(int ch, const char *name, int val);
	void setInt(const char *name, std::vector<int> v);
	int getInt(int ch, const char *name, int def);

	void setValue(int ch, const char *name, float val);
	void setValue(const char *name, std::vector<float> v);
	float getValue(int ch, const char *name, float def);

	void setDouble(int ch, const char *name, double val);
	double getDouble(int ch, const char *name, double def);

	void setValue2(int ch, int un, const char *name, float val);
	void setValue3(int ch, int un, const char *name, float *val, int siz);
	float getValue2(int ch, int un, const char *name, float def);
	void getValue3(int ch, int un, const char *name, float *val, int siz);

	void setDouble2(int ch, int un, const char *name, double val);
	void setDouble3(int ch, int un, const char *name, double *val, int siz);
	double getDouble2(int ch, int un, const char *name, double def);
	void getDouble3(int ch, int un, const char *name, double *val, int siz);

	void setStructValue(const char *name, const char *field, size_t idx, float val);
	float getStructValue(const char *name, const char *field, size_t idx, float def);

	void printStructs(); // for debugging
};
#endif
