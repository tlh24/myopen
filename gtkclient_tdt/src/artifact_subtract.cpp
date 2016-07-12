#include "artifact_subtract.h"

ArtifactSubtract::ArtifactSubtract(int _buflen)
{
	buflen = _buflen;
	nsc = 16;
	sa = new float[nsc * buflen];
	for (int i=0; i< nsc*buflen; i++) {
		sa[i] = 0.0;
	}
	q = new std::queue<i64>[nsc];
	hot_ptr = new int[nsc];
	for (int i=0; i<nsc; i++) {
		hot_ptr[i] = -1;
	}
	delay = 0;
	alpha = 0.99;
}

ArtifactSubtract::~ArtifactSubtract()
{
	delete[] sa;
	delete[] q;
	delete[] hot_ptr;
}

void ArtifactSubtract::setDelay(int _delay)
{
	delay = _delay;
}

void ArtifactSubtract::processStim(i64 tk, u16 ev)
{

	auto check_bit = [](u16 var, int n) -> bool {
		if (n < 0 || n > 15)
		{
			return false;
		}
		return (var) & (1<<n);
	};

	for (int i=0; i<nsc; i++) {
		if (check_bit(ev, i)) {
			// lock here if we use different threads
			q[i].push(tk + delay);
		}
	}

}

float ArtifactSubtract::processSample(i64 tk, float f)
{
	int nstim = 0;

	for (int i=0; i<nsc; i++) {
		if (!q[i].empty()) {
			i64 x = q[i].front();
			if (x < tk) {	// somehow we missed it
				warn("missed icms pulse! (delta: %d)", x-tk);
				q[i].pop(); // so drop it
			}
			if (x == tk) {
				if (hot_ptr[i] != -1) {
					warn("went hot while hot!");
				}
				hot_ptr[i] = 0;
				q[i].pop();
			}
			// otherwise pulse not ready yet
			// dont pop!
		}

		if (hot_ptr[i] != 0) {
			nstim++;
		}

	}

	if (nstim == 0) {
		return f;
	}

	for (int i=0; i<nsc; i++) {
		if (hot_ptr[i] != -1) {

			// update SA template
			if (nstim == 1) {
				sa[i*buflen+hot_ptr[i]] *= alpha;
				sa[i*buflen+hot_ptr[i]] += (1.0-alpha) * f;
			}

			// subtract SA template
			f -= sa[i*buflen+hot_ptr[i]];

			// update pointer
			hot_ptr[i]++;

			if (hot_ptr[i] > buflen) {
				hot_ptr[i] = -1;
			}

		}
	}

	return f;

}