#ifndef __MATSTOR_H__
#define __MATSTOR_H__

class MatStor{
	typedef boost::multi_array<float, 3> array3; 
	typedef boost::multi_array<float, 2> array2; 
	
	std::string m_name; //name of the file.
	std::map<std::string, std::vector<float> > m_dat1; //one dimensional
	std::map<std::string, array2> m_dat2; //two dimensions
	std::map<std::string, array3> m_dat3; //three!
public:
	MatStor(const char* fname); 
	~MatStor(); 
	void save(); 
	void setValue(int ch, const char* name, float val);
	void setValue2(int ch, int un, const char* name, float val);
	void setValue3(int ch, int un, const char* name, float* val, int siz);
	float getValue(int ch, const char* name, float def);
	float getValue2(int ch, int un, const char* name, float def);
	void getValue3(int ch, int un, const char* name, float* val, int siz);
}; 
#endif
