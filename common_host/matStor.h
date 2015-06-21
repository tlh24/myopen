#ifndef __MATSTOR_H__
#define __MATSTOR_H__

#include <boost/multi_array.hpp>
#include <map>

class MatStor
{
	std::string m_name; //name of the file.

	typedef std::pair<std::string, std::vector<float> > pairfloat1;
	typedef std::map<std::string, std::vector<float> > mapfloat1;

	mapfloat1 m_dat1; // 1-d float
	std::map<std::string, std::vector<double> > m_datd1; // 1-d double

	typedef boost::multi_array<float, 2> array2;
	typedef boost::multi_array<double, 2> arrayd2;
	std::map<std::string, array2> m_dat2; // 2-d float
	std::map<std::string, arrayd2> m_datd2; // 2-d double

	typedef boost::multi_array<float, 3> array3;
	typedef boost::multi_array<double, 3> arrayd3;
	std::map<std::string, array3> m_dat3; // 3-d float!
	std::map<std::string, arrayd3> m_datd3; // 3-d double!

	std::map<std::string, mapfloat1> m_struct1;

public:
	MatStor(const char *fname);
	~MatStor();
	void load();
	void save();
	void save(bool append); // append to file, rather than overwriting
	void clear(); // clears internal structures

	void setValue(int ch, const char *name, float val);
	void setValue2(int ch, int un, const char *name, float val);
	void setValue3(int ch, int un, const char *name, float *val, int siz);
	float getValue(int ch, const char *name, float def);
	float getValue2(int ch, int un, const char *name, float def);
	void getValue3(int ch, int un, const char *name, float *val, int siz);

	void setDouble(int ch, const char *name, double val);
	void setDouble2(int ch, int un, const char *name, double val);
	void setDouble3(int ch, int un, const char *name, double *val, int siz);
	double getDouble(int ch, const char *name, double def);
	double getDouble2(int ch, int un, const char *name, double def);
	void getDouble3(int ch, int un, const char *name, double *val, int siz);

	void setStructValue(const char *name, const char *field, size_t idx, float val);
	float getStructValue(const char *name, const char *field, size_t idx, float def);

	void printStructs(); // for debugging
};
#endif
