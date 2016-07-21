#ifndef __FILTER_H_
#define __FILTER_H_

#include <vector>
#include "util.h"

using namespace std;

class Filter
{
public:

protected:
	vector<double> B;
	vector<double> A; // a[0] := 1
	vector<double> d; // must be 1 shorter than A & B

public:
	Filter();
	virtual ~Filter();
	virtual void Proc(float *in, float *out, u32 kpoints);

protected:
};

// See Filter.cpp to figure out the meaning of these filters


// BANDPASS
class FilterButterBand_24k_12_30 : public Filter
{
public:
	FilterButterBand_24k_12_30();
};
class FilterButterBand_24k_30_60 : public Filter
{
public:
	FilterButterBand_24k_30_60();
};
class FilterButterBand_24k_60_200 : public Filter
{
public:
	FilterButterBand_24k_60_200();
};
class FilterButterBand_24k_300_3000 : public Filter
{
public:
	FilterButterBand_24k_300_3000();
};
class FilterButterBand_24k_300_5000 : public Filter
{
public:
	FilterButterBand_24k_300_5000();
};
class FilterButterBand_24k_500_3000 : public Filter
{
public:
	FilterButterBand_24k_500_3000();
};
class FilterButterBand_24k_500_5000 : public Filter
{
public:
	FilterButterBand_24k_500_5000();
};

class FilterButterBand_48k_300_3000 : public Filter
{
public:
	FilterButterBand_48k_300_3000();
};
class FilterButterBand_48k_300_5000 : public Filter
{
public:
	FilterButterBand_48k_300_5000();
};
class FilterButterBand_48k_500_3000 : public Filter
{
public:
	FilterButterBand_48k_500_3000();
};
class FilterButterBand_48k_500_5000 : public Filter
{
public:
	FilterButterBand_48k_500_5000();
};


// LOWPASS
class FilterButterLow_24k_3000 : public Filter
{
public:
	FilterButterLow_24k_3000();
};
class FilterButterLow_24k_5000 : public Filter
{
public:
	FilterButterLow_24k_5000();
};
class FilterButterLow_48k_3000 : public Filter
{
public:
	FilterButterLow_48k_3000();
};
class FilterButterLow_48k_5000 : public Filter
{
public:
	FilterButterLow_48k_5000();
};


// HIGHPASS
class FilterButterHigh_24k_300 : public Filter
{
public:
	FilterButterHigh_24k_300();
};
class FilterButterHigh_24k_500 : public Filter
{
public:
	FilterButterHigh_24k_500();
};
class FilterButterHigh_48k_300 : public Filter
{
public:
	FilterButterHigh_48k_300();
};
class FilterButterHigh_48k_500 : public Filter
{
public:
	FilterButterHigh_48k_500();
};

// NOTCH
class FilterNotch_24k_60 : public Filter
{
public:
	FilterNotch_24k_60();
};
class FilterNotch_48k_60 : public Filter
{
public:
	FilterNotch_48k_60();
};

#endif
