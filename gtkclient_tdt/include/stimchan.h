#ifndef __STIMCHAN_H_
#define __STIMCHAN_H_

#include <map>
#include "matStor.h"

using namespace std;

class RecArtifact
{
public:
	unsigned int rec_chan;
	unsigned int samples_per_wf;
	unsigned int num_wf;
protected:
	vector<float> wf; // vector of all artifact waveforms (num_sampes_per_wf*num_wf)

public:
	RecArtifact();
	virtual ~RecArtifact();
	void clear();
	bool add_wf_sample(float f);
	vector<float> * get_wf_vector() {
		return &wf;
	};

protected:
};

class StimChan
{
public:
	unsigned int stim_chan; // channel number
protected:
	vector<double> ts; // vector of all timestamps for this stim chan
	vector<long long> ticks; // vector to all the ticks for this stim chan
	map<unsigned int,RecArtifact *> artifacts;

public:
	StimChan();
	virtual ~StimChan();
	void clear();
	bool add_event(double _ts, unsigned long long _tick);
	bool add_artifact(RecArtifact *_a);
	bool save(MatStor *ms);

protected:
};

#endif