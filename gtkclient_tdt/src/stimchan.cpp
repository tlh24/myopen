#include <stdio.h>
#include <string.h>
#include "matStor.h"
#include "stimchan.h"

using namespace std;

StimChan::StimChan()
{
	stim_chan=0;
}

StimChan::~StimChan()
{
	clear();
}

void StimChan::clear()
{
	ts.clear();
	ticks.clear();
	artifacts.clear();
}

bool StimChan::add_event(double _ts, unsigned long long _tick)
{
	ts.push_back(_ts);
	ticks.push_back(_tick);
	return true;
}

bool StimChan::add_artifact(RecArtifact *_a) 
{
	RecArtifact *a = NULL;

	// create a new RecArtifact OR load a previously created one
	if (artifacts.find(_a->rec_chan) == artifacts.end()) {
		a = new RecArtifact();
		a->rec_chan = _a->rec_chan;
		a->samples_per_wf = _a->samples_per_wf;
		a->num_wf = 0;
		artifacts[_a->rec_chan] = a;
	}
	else {
		a = artifacts[_a->rec_chan];
	}

	if (a->samples_per_wf != _a->samples_per_wf) {
		fprintf(stderr, "terrible error! sample length mismatch!");
		exit(1);
	}

	vector<float> *wf = _a->get_wf_vector();
	for (unsigned int i=0;i<wf->size();i++)
		a->add_wf_sample(wf->at(i));
	a->num_wf++;

	return true;
}

bool StimChan::save(MatStor *ms)
{

	if (ts.empty()) {
		fprintf(stderr, "cannot write stim chan, ts array is null\n");
		return false;
	}

	char buf_ts[128];
	memset(buf_ts, 0, sizeof(buf_ts));
	sprintf(buf_ts, "icms_ts_%03u", stim_chan);

	char buf_tick[128];
	memset(buf_tick, 0, sizeof(buf_tick));
	sprintf(buf_tick, "icms_tick_%03u", stim_chan);

	for(vector<double>::size_type i=0; i != ts.size(); i++)
		ms->setDouble(i, buf_ts, ts[i]);

	for(vector<long long>::size_type i=0; i != ticks.size(); i++)
		ms->setDouble(i, buf_tick, (double) ticks[i]);

	map<unsigned int, RecArtifact *>::iterator it;
	for (it = artifacts.begin(); it != artifacts.end(); it++) {
		unsigned int rec_chan = (*it).second->rec_chan;
		char buf_wf[128];
		memset(buf_wf, 0, sizeof(buf_wf));
		sprintf(buf_wf, "icms_wf_%03u_%03u", stim_chan, rec_chan);

		unsigned int m = (*it).second->samples_per_wf;
		unsigned int n = (*it).second->num_wf;
		vector<float>* wf = (*it).second->get_wf_vector();
		for (unsigned int i=0; i<m; i++)
			for (unsigned int j=0; j<n; j++)
				ms->setDouble2(i, j, buf_wf, (double)(*wf)[j*m+i]);
	}


	return true;
}

// *************************

RecArtifact::RecArtifact()
{
	rec_chan=0;
	samples_per_wf=0;
	num_wf=0;
}

RecArtifact::~RecArtifact()
{
	clear();
}

void RecArtifact::clear()
{
	wf.clear();
	samples_per_wf=0;
	num_wf=0;
}

bool RecArtifact::add_wf_sample(float f)
{
	wf.push_back(f);
	return true;
}