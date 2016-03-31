#include <float.h>                      // for FLT_EPSILON
#include <atomic>
#include <mutex>
#include <gsl/gsl_blas.h>               // for gsl_blas_ddot, etc
#include <gsl/gsl_vector_double.h>      // for gsl_vector, etc
#include "matStor.h"                    // for MatStor
#include "nlms2.h"                       // for ArtifactNLMS, NLMS


ArtifactNLMS2::ArtifactNLMS2(int _n, MatStor *ms)
{
	n = _n;
	mu = 1e-5;	// reasonable default

	W = gsl_matrix_alloc(n, n);
	Wshadow = gsl_matrix_alloc(n, n);

	gsl_matrix_set_all(W, 1.0/(double)n);	// init weights
	for (size_t i=0; i<n; i++) {	// diagonal should be zero
		gsl_matrix_set(W, i, i, 0.0);
	}

	if (ms) {
		for (size_t i=0; i<n; i++) {
			for (size_t j=0; j<n; j++) {
				double d = ms->getDouble2(i, j, "nlms_w", gsl_matrix_get(W, i, j));
				gsl_matrix_set(W, i, j, d);
			}
		}
		mu = ms->getDouble(0, "nlms_mu", mu);
	}
}

ArtifactNLMS2::~ArtifactNLMS2()
{
	gsl_matrix_free(W);
	gsl_matrix_free(Wshadow);
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
void ArtifactNLMS2::train(gsl_matrix *X)
{
	// in the below we use (roughly) the notation of Haykin, 4th ed. pg 324

	size_t t = X->size2;

	// copy X -> Y
	gsl_matrix *Y;
	Y = gsl_matrix_alloc(n, t);
	gsl_matrix_memcpy(Y, X);

	{
		std::lock_guard<std::mutex> lock(m2);
		// local copy of W
		gsl_matrix_memcpy(Wshadow, W);
	}

	for (size_t i=0; i<n; i++) {

		// refresh X
		gsl_matrix_memcpy(X, Y);

		// get w
		gsl_vector_view w = gsl_matrix_row(Wshadow, i);

		for (size_t k=0; k<t; k++) {

			// get x and zero out element
			gsl_vector_view x = gsl_matrix_column(X, k);
			gsl_vector_set(&x.vector, i, 0.0);

			// yhat(k) = w'(k) * x(k);
			double yhat;
			gsl_blas_ddot(&w.vector, &x.vector, &yhat);

			// alpha(k) = y(k) - yhat(k);
			// nb Haykin uses e, rather than alpha
			double alpha;
			alpha = gsl_matrix_get(Y, i, k) - yhat;

			// temp(k) = (mu * alpha(k) ) / ||x(k)||^2
			double xnorm = gsl_blas_dnrm2(&x.vector);
			double temp = (mu * alpha) / ((xnorm * xnorm) + FLT_EPSILON);

			// w(k+1) = w(k) + temp(k) * x(k)
			gsl_blas_daxpy(temp, &x.vector, &w.vector);

		}
	}

	gsl_matrix_free(Y);

	{
		std::lock_guard<std::mutex> lock(m1);
		gsl_matrix_memcpy(W, Wshadow);
	}

}

// X is the input matrix (n by t)
// Y is the cleaned output matrix (n x t)
void ArtifactNLMS2::filter(gsl_matrix *X, gsl_matrix *Y)
{
	// copy X into Y
	gsl_matrix_memcpy(Y, X);

	{
		std::lock_guard<std::mutex> lock(m1);
		// Y = W' * X - X;
		gsl_blas_dgemm (CblasTrans, CblasNoTrans, 1.0, W, X, -1.0, Y);
	}
}

void ArtifactNLMS2::clearWeights()
{
	std::lock_guard<std::mutex> lock1(m1);
	std::lock_guard<std::mutex> lock2(m2);
	gsl_matrix_set_all(Wshadow, 1.0/(double)n);
	for (size_t i=0; i<n; i++) {
		gsl_matrix_set(Wshadow, i, i, 0.0);
	}
	gsl_matrix_memcpy(W, Wshadow);
}

void ArtifactNLMS2::save(MatStor *ms)
{
	if (ms) {
		std::lock_guard<std::mutex> lock(m1);
		for (size_t i=0; i<n; i++) {
			for (size_t j=0; j<n; j++) {
				ms->setDouble2(i, j, "nlms_w", gsl_matrix_get(W,i,j));
			}
		}
		ms->setDouble(0, "nlms_mu", mu);
	}
}
