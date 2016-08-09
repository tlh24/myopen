#include "artifact_subtract.h"
#include <cstring>

ArtifactSubtract::ArtifactSubtract(int _nrc, int _nsc, int _buflen, int _delay,
									float _alpha)
{
	nrc = _nrc;			// 96
	nsc = _nsc; 		// 16
	buflen = _buflen;	// 64
	delay = _delay; 	// 16;
	alpha = _alpha; 	// 0.99;

	sa = new std::unordered_map<u16, float *>[nsc];
	offset = new std::unordered_map<u16, int>[nsc];
	q = new std::queue<std::pair<u16,i64>>[nsc];
}

ArtifactSubtract::~ArtifactSubtract()
{
	delete[] q;
	delete[] offset;
	for (int sc=0; sc<nsc; sc++) {
		for (auto &kv : sa[sc]) {
			delete[] kv.second;
		}
	}
	delete[] sa;
}

void ArtifactSubtract::processStim(u16 ch, u16 current, i64 tk)
{
	if (ch >= nsc) {
		error("stim chan is greater than nsc! wat!?");
		return;
	}

	q[ch].push({current, tk + delay});

	if (sa[ch].find(current) == sa[ch].end()) {
		auto x = new float[nrc*buflen];
		memset(x, 0, nrc*buflen);
		sa[ch].insert({current, x});
	}
	if (offset[ch].find(current) == offset[ch].end()) {
		offset[ch].insert({current, -1});
	}
}

float ArtifactSubtract::processSample(size_t rc, i64 tk, float f)
{
	int nstim = 0;

	for (int sc=0; sc<nsc; sc++) {

		if (!q[sc].empty()) {
			std::pair<u16,i64> x = q[sc].front();

			u16 current = x.first;
			i64 tick = x.second;

			if (tick < tk) { // somehow we missed it
				warn("missed icms pulse! (delta: %d)", tick-tk);
				q[sc].pop(); // so drop it
			}

			if (tick == tk) {
				auto search = offset[sc].find(current);
				if (search == offset[sc].end()) {
					warn("no current key in offset map! wat?!");
				}
				if (search->second != -1) {
					warn("went hot while hot!");
				}
				search->second = 0;
				q[sc].pop();
			}
			// otherwise pulse not ready yet
			// dont pop!
		}

		for (auto &kv : offset[sc]) {
			if (kv.second != -1) {
				nstim++;
			}
		}

	}

	// if there's no stim happening, return early
	if (nstim == 0) {
		return f;
	}

	for (int sc=0; sc<nsc; sc++) {
		for (auto &kv : offset[sc]) {
			if (kv.second != -1) {

				// update SA template
				if (nstim == 1) {
					sa[sc][kv.first][rc*buflen+kv.second] *= alpha;
					sa[sc][kv.first][rc*buflen+kv.second] += (1.0-alpha) * f;
				}

				// subtract SA template
				f -= sa[sc][kv.first][rc*buflen+kv.second];

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
