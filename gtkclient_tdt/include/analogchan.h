#ifndef __ANALOGCHAN_H_
#define __ANALOGCHAN_H_

#include "util.h"
#include "matStor.h"

using namespace std;

class AnalogChan
{
public:
	u32 chan; // channel number
protected:
	vector <double> ts; 	// vector of all timestamps for this analog chan
	vector<i64> ticks; // vector to all the ticks for this analog chan
	vector<float> samples;	// vector of all the samples for this analog chan

public:
	AnalogChan();
	virtual ~AnalogChan();
	void clear();
	bool add_sample(double _ts, u64 _tick, float _sample);
	bool save(MatStor *ms);

protected:
};

#endif