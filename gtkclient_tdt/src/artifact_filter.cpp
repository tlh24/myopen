#include "artifact_filter.h"

ArtifactFilter::ArtifactFilter(int _n)
{
	n = _n;

	W.set_size(n, n);

	W.fill(1.0/(double)n);	// init weights
	W.diag().zeros();		// set diag to zero

}

ArtifactFilter::~ArtifactFilter()
{
}

// X is the input matrix (n by t)
// returns the predicted output matrix Xhat, (n x t)
mat ArtifactFilter::filter(mat X)
{
	// Xhat = W * X;
	return W * X;
}

// load weights from a file
void ArtifactFilter::loadWeights(const char *fn)
{
	// automatically detect format type
	W.load(fn, hdf5_binary_trans);
}

void ArtifactFilter::clearWeights()
{
	W.fill(1.0/(double)n);	// init weights
	W.diag().zeros();		// set diag to zero
}

