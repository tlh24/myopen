#ifndef __STIMCHAN_H_
#define __STIMCHAN_H_

#include <map>
#include "util.h"
#include "matStor.h"

using namespace std;

class RecArtifact
{
public:
	u32 rec_chan;
	u32 samples_per_wf;
	u32 num_wf;
protected:
	vector<float> wf; // vector of all artifact waveforms (num_sampes_per_wf*num_wf)

public:
	RecArtifact();
	virtual ~RecArtifact();
	void clear();
	bool add_wf_sample(float f);
	vector<float> *get_wf_vector()
	{
		return &wf;
	};

protected:
};

class StimChan
{
public:
	u32 stim_chan; // channel number
protected:
	vector<double> ts; // vector of all timestamps for this stim chan
	vector<i64> ticks; // vector to all the ticks for this stim chan
	map<u32,RecArtifact *> artifacts;

public:
	StimChan();
	virtual ~StimChan();
	void clear();
	bool add_event(double _ts, u64 _tick);
	bool add_artifact(RecArtifact *_a);
	bool save(MatStor *ms);

protected:
};

#endif