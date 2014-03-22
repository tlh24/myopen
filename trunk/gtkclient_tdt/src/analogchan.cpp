#include <stdio.h>
#include <string.h>
#include "matStor.h"
#include "analogchan.h"

using namespace std;

AnalogChan::AnalogChan()
{
	chan=0;
}

AnalogChan::~AnalogChan()
{
	clear();
}

void AnalogChan::clear()
{
	ts.clear();
	ticks.clear();
	samples.clear();
}

bool AnalogChan::add_sample(double _ts, unsigned long long _tick, float _sample)
{
	ts.push_back(_ts);
	ticks.push_back(_tick);
	samples.push_back(_sample);
	return true;
}

bool AnalogChan::save(MatStor *ms)
{

	if (ts.empty()) {
		fprintf(stderr, "cannot write analog chan, ts array is null\n");
		return false;
	}

	char buf[128];

	memset(buf, 0, sizeof(buf));
	sprintf(buf, "ad_ts_%03u", chan);

	for (vector<double>::size_type i=0; i != ts.size(); i++)
		ms->setDouble(i, buf, (double) ts[i]);

	memset(buf, 0, sizeof(buf));
	sprintf(buf, "ad_tick_%03u", chan);

	for (vector<long long>::size_type i=0; i != ticks.size(); i++)
		ms->setDouble(i, buf, (double) ticks[i]);

	memset(buf, 0, sizeof(buf));
	sprintf(buf, "ad_samp_%03u", chan);

	for (vector<float>::size_type i=0; i != samples.size(); i++)
		ms->setDouble(i, buf, (double) samples[i]);

	return true;
}