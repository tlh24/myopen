#include <float.h> // for FLT_EPSILON
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

size_t ArtifactFilter::order()
{
	return n;
}

// X is the input matrix (n by t)
// returns the predicted output matrix Xhat, (n x t)
mat ArtifactFilter::filter(mat X)
{
	// Xhat = W * X;
	return W.t() * X;
}

// load weights from a file
void ArtifactFilter::loadWeights(const char *f)
{
	W.load(f, hdf5_binary);
}

// save weights to a file
void ArtifactFilter::saveWeights(const char *f)
{
	W.save(f, hdf5_binary);
}

void ArtifactFilter::clearWeights()
{
	W.fill(1.0/(double)n);	// init weights
	W.diag().zeros();		// set diag to zero
}

ArtifactNLMS3::ArtifactNLMS3(int _n) : ArtifactFilter(_n)
{
	mu = 1e-6; // reasonable default
}

ArtifactNLMS3::~ArtifactNLMS3()
{
}

void ArtifactNLMS3::setMu(float _mu)
{
	mu = (double)_mu;
}

// X is the input matrix (n by t)
void ArtifactNLMS3::train(mat X)
{
	// in the below we use (roughly) the notation of Haykin, 4th ed. pg 324

	size_t t = X.n_cols;

	// copy X -> Y
	mat Y(X);

	mat Z(W);	// copy W -> Z

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
			Z.col(i) += X.col(k) * temp;
		}

		X.row(i) = Y.row(i);
	}

	{
		lock_guard<mutex> lock(mtx);
		W = Z;
	}

}


ArtifactFilterDirect::ArtifactFilterDirect(int _n) : ArtifactFilter(_n)
{
	num_batches = 0;
	Phi.zeros(n, n);
}

ArtifactFilterDirect::~ArtifactFilterDirect()
{
}

size_t ArtifactFilterDirect::numBatches()
{
	return num_batches;
}
void ArtifactFilterDirect::clearWeights()
{
	ArtifactFilter::clearWeights();
	num_batches = 0;
}

void ArtifactFilterDirect::train(mat X)
{
	num_batches++;

	size_t t = X.n_cols;

	double alpha = ((double)num_batches-1.0)/(double)num_batches;

	mat tmp = 1.0/double(t) * X*X.t();

	Phi = alpha * Phi + (1-alpha) * tmp;
	mat P = inv_sympd(Phi);
	//printf("rcond Phi %f\n", rcond(Phi));
	//mat P = inv(Phi);

	mat L = diagmat(1/diagvec(P));

	{
		lock_guard<mutex> lock(mtx);
		W = -L * P;
		W.diag().zeros();
	}

}

// X is the input matrix (n by t)
// returns the predicted output matrix Xhat, (n x t)
mat ArtifactFilterDirect::filter(mat X)
{
	// Xhat = W * X;
	return W * X;
}