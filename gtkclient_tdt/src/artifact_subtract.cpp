#include "artifact_subtract.h"

ArtifactSubtract::ArtifactSubtract(int _nsc, int _buflen, int _delay, float _alpha)
{
	nsc = _nsc; 		// 16
	buflen = _buflen;	// 64
	delay = _delay; 	// 16;
	alpha = _alpha; 	// 0.99;

	sa = new std::unordered_map<u16, float *>[nsc];
	hot_ptr = new std::unordered_map<u16, int>[nsc];
	q = new std::queue<std::pair<u16,i64>>[nsc];
}

ArtifactSubtract::~ArtifactSubtract()
{
	delete[] q;
	delete[] hot_ptr;
	for (int i=0; i<nsc; i++) {
		for (auto &kv : sa[i]) {
			delete[] kv.second;
		}
	}
	delete[] sa;
}

void ArtifactSubtract::processStim(i64 tk, u16 chan, u16 current)
{
	if (chan >= nsc) {
		error("chan is greater than nsc! wat!?");
		return;
	}

	q[chan].push({current, tk + delay});

	if (sa[chan].find(current) == sa[chan].end()) {
		auto x = new float[buflen];
		sa[chan].insert({current, x});
	}
	if (hot_ptr[chan].find(current) == hot_ptr[chan].end()) {
		hot_ptr[chan].insert({current, -1});
	}
}
float ArtifactSubtract::processSample(i64 tk, float f)
{
	int nstim = 0;

	for (int i=0; i<nsc; i++) {

		if (!q[i].empty()) {
			std::pair<u16,i64> x = q[i].front();

			if (x.second < tk) { // somehow we missed it
				warn("missed icms pulse! (delta: %d)", x.second-tk);
				q[i].pop(); // so drop it
			}

			if (x.second == tk) {

				auto search = hot_ptr[i].find(x.first);
				if (search == hot_ptr[i].end()) {
					warn("no current key in hot_ptr map! wat?!");
				}
				if (search->second != -1) {
					warn("went hot while hot!");
				}
				search->second = 0;
				q[i].pop();
			}
			// otherwise pulse not ready yet
			// dont pop!
		}

		for (auto &kv : hot_ptr[i]) {
			if (kv.second != -1) {
				nstim++;
			}
		}

	}

	// if there's no stim happening, return early
	if (nstim == 0) {
		return f;
	}

	for (int i=0; i<nsc; i++) {
		for (auto &kv : hot_ptr[i]) {
			if (kv.second != -1) {

				// update SA template
				if (nstim == 1) {
					sa[i][kv.first][kv.second] *= alpha;
					sa[i][kv.first][kv.second] += (1.0-alpha) * f;
				}

				// subtract SA template
				f -= sa[i][kv.first][kv.second];

				// update pointer
				kv.second++;

				if (kv.second > buflen) {
					kv.second = -1;
				}

			}
		}
	}

	return f;
}