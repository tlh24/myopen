#ifndef __MEDFILT_H__
#define __MEDFILT_H__

#include "fast_median.h"


class MedFilt3
{
private:
	float v[3];

public:
	MedFilt3()
	{
		v[0] = 0.f;
		v[1] = 0.f;
		v[2] = 0.f;
	}

	~MedFilt3()
	{

	}

	float proc(float x)
	{
		// update
		v[0] = v[1];
		v[1] = v[2];
		v[2] = x;

		// this will be sorted so cant keep
		float p[3];
		p[0] = v[0];
		p[1] = v[1];
		p[2] = v[2];

		return opt_med3(p);
	}
};

class MedFilt5
{
private:
	float v[5];

public:
	MedFilt5()
	{
		v[0] = 0.f;
		v[1] = 0.f;
		v[2] = 0.f;
		v[3] = 0.f;
		v[4] = 0.f;
	}

	~MedFilt5()
	{

	}

	float proc(float x)
	{
		// update
		v[0] = v[1];
		v[1] = v[2];
		v[2] = v[3];
		v[3] = v[4];
		v[4] = x;

		// this will be sorted so cant keep
		float p[5];
		p[0] = v[0];
		p[1] = v[1];
		p[2] = v[2];
		p[3] = v[3];
		p[4] = v[4];

		return opt_med5(p);
	}
};

#endif