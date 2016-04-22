#include <float.h>                      // for FLT_EPSILON
#include <atomic>
#include <mutex>
#include "matStor.h"                    // for MatStor
#include "nlms2.h"                       // for ArtifactNLMS, NLMS


ArtifactNLMS2::ArtifactNLMS2(int _n, MatStor *ms)
{
	n = _n;
	mu = 1e-5;	// reasonable default

	W.set_size(n, n);

	W.fill(1.0/(double)n);	// init weights
	W.diag().zeros();		// set diag to zero

	if (ms) {
		for (size_t i=0; i<n; i++) {
			for (size_t j=0; j<n; j++) {
				double d = ms->getDouble2(i, j, "nlms_w", W(i, j));
				W(i, j) = d;
			}
		}
		mu = ms->getDouble(0, "nlms_mu", mu);
	}
}

ArtifactNLMS2::~ArtifactNLMS2()
{
}

void ArtifactNLMS2::setMu(float _mu)
{
	mu = (double)_mu;
}

float ArtifactNLMS2::getMu()
{
	return (float)mu;
}

// X is the input matrix (n by t)
void ArtifactNLMS2::train(mat X)
{
	// in the below we use (roughly) the notation of Haykin, 4th ed. pg 324

	size_t t = X.n_cols;

	// copy X -> Y
	mat Y(X);

	for (size_t i=0; i<n; i++) {

		X.row(i).zeros();

		for (size_t k=0; k<t; k++) {

			// yhat = w(k) * x(k)
			double yhat = dot(W.col(i), X.col(k));

			// alpha(k) = y(k) - w'(k) * x(k);
			double alpha = Y(i, k) - yhat;

			// temp(k) = (mu * alpha(k) (k)) / ||x(k)||^2
			double xnorm = norm(X.col(k));
			double temp = (mu * alpha) / ((xnorm * xnorm) + FLT_EPSILON);

			// w(k+1) = w(k) + x(k) * temp(k)
			// scalar has to come second because of operator overloading
			W.col(i) += X.col(k) * temp;
		}

		X.row(i) = Y.row(i);
	}

}

// X is the input matrix (n by t)
// returns the predicted output matrix Xhat, (n x t)
mat ArtifactNLMS2::filter(mat X)
{
	// Xhat = W * X;
	return W * X;
}

void ArtifactNLMS2::clearWeights()
{
	W.fill(1.0/(double)n);	// init weights
	W.diag().zeros();		// set diag to zero
}

void ArtifactNLMS2::save(MatStor *ms)
{
	if (ms) {
		for (size_t i=0; i<n; i++) {
			for (size_t j=0; j<n; j++) {
				ms->setDouble2(i, j, "nlms_w", W(i,j));
			}
		}
		ms->setDouble(0, "nlms_mu", mu);
	}
}
