#include "artifact_subtract.h"
#include <cstring>

ArtifactSubtract::ArtifactSubtract(int _nrc, int _nsc, int _maxcurrent,
                                   int _buflen, float _alpha)
{
	nrc = _nrc;					// 96
	nsc = _nsc;					// 16
	maxcurrent = _maxcurrent;	// 100
	buflen = _buflen;			// 64
	alpha = _alpha;				// 0.99;

	sa = new float[maxcurrent*nsc*nrc*buflen];	// stim artifact buffer
	of = new long[maxcurrent*nsc];				// buffer read offset
	memset(of, -1, maxcurrent*nsc);
}

ArtifactSubtract::~ArtifactSubtract()
{
	delete[] sa;
	delete[] of;
}

void ArtifactSubtract::filter(float *f, u16 *sc, u16 *current, int ns)
{
	// This function takes a pointer to a matrix of neural data of dimensionality
	// (number of recording chans) x (number of samples) and a pointer to a
	// vector of stimulation chans of length ns and a vector of stimulation
	// currents of length ns
	//
	// It then goes through this data, updating the SA template if
	// appropriate (ie only single channel is hot) and then subtracts using
	// the SA templates for any number of hot channels (assuming SAs add).
	//
	// Importantly, since the buffer offsets are only per current and stimchan
	// (ie we assume the SA affects all recording channels simultaneously)
	// we MUST process each recchan before advancing the buffer offset and
	// moving to the next time sample. That is, we must process the data by
	// looping over time samples first.
	//
	// Note also that this function operates on the data matrix, f, in place.
	// The stimchannel and current values are not changed.

	// this is a helper function
	auto check_bit = [](u16 var, int n) -> bool {
		if (n < 0 || n > 15)
		{
			return false;
		}
		return (var) & (1<<n);
	};

	for (int k=0; k<ns; k++) {	// loop over samples

		// first loop through and get how many stim chans are hot
		// and update the offset pointers

		int nstim = 0; // stim pulses "hot" on this sample
		for (int j=0; j<maxcurrent; j++) {	// loop over currents
			for (int i=0; i<nsc; i++) {	// loop over stimchans
				if (sc[k] > 0) {	// ie if there is stim this sample
					if (check_bit(sc[k], 0) && current[k] == (j+1)) {
						if (of[j*nsc+i] != -1) {
							error("went hot while hot!");
						}
						of[j*nsc+i] = 0;
					}
				}
				if (of[i*nsc+j] != -1) {
					nstim++;
				}
			}
		}

		if (nstim == 0) {
			continue;
		}

		// now loop through again and update (if appropriate) and
		// apply (always) the artifact buffers to the data matrix

		for (int j=0; j<maxcurrent; j++) {	// loop over currents
			for (int i=0; i<nsc; i++) {	// loop over stimchans
				long *idx = &(of[j*nsc+i]);
				if (*idx != -1) { // if we are stimulating on this current&chan
					for (int m=0; m<nrc; m++) {	// loop over recchans
						// this is the pointer to a buffer for a particular
						// current, stimchan, and recchan
						float *x = &(sa[j*nsc*nrc*buflen + i*nrc*buflen + m*buflen]);
						if (nstim == 1) { //if 1 channel is hot, update templates
							x[*idx] *= alpha;
							x[*idx] += (1.0-alpha) * f[m*ns+k];
						}
						f[m*ns+k] -= x[*idx]; // subtract templates
					}
					// advance buffer and reset if necessary
					(*idx)++;
					if (*idx >= buflen) {
						(*idx) = -1;
					}
				}
			}
		}
	}
}
