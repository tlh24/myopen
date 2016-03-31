#include <vector>
#include <atomic>
#include <mutex>
#include <gsl/gsl_permutation.h>
#include <gsl/gsl_linalg.h>
#include <gsl/gsl_blas.h>               // for gsl_blas_dgemm
#include <gsl/gsl_cblas.h>
#include <gsl/gsl_matrix_double.h>      // for gsl_matrix_alloc, etc
#include "matStor.h"                    // for MatStor
#include "rls.h"                        // for RLS

RLS::RLS(int _n, double _lambda, double _delta, MatStor *ms)
{
	n = _n;
	lambda = _lambda;
	delta = _delta;

	W = gsl_matrix_alloc(n, n);
	Wshadow = gsl_matrix_alloc(n, n);
	gsl_matrix_set_all(W, 1.0/(double)n);	// init weights
	for (size_t i=0; i<n; i++) {
		gsl_matrix_set(W, i, i, 0.0); 		// diagonal should be zero
		gsl_matrix *M = gsl_matrix_alloc(n, n);
		gsl_matrix_set_identity(M); // identity matrix
		gsl_matrix_scale(M, delta); // scale by delta
		P.push_back(M);
	}

	if (ms) {
		for (size_t i=0; i<n; i++) {
			for (size_t j=0; j<n; j++) {
				double d = ms->getDouble2(i, j, "rls_w", gsl_matrix_get(W, i, j));
				gsl_matrix_set(W, i, j, d);
			}
		}
		lambda = ms->getDouble(0, "rls_lambda", lambda);
		laminv = 1.0/lambda;
		delta = ms->getDouble(0, "rls_delta", delta);
	}
}

RLS::~RLS()
{
	gsl_matrix_free(W);
	gsl_matrix_free(Wshadow);
	for (auto & M : P) {
		gsl_matrix_free(M);
	}
}

// X is the input matrix (n by t)
void RLS::train(gsl_matrix *X)
{
	// in the below we use (roughly) the notation of Haykin, 4th ed. pg 443

	size_t t = X->size2;

	// copy X -> Y
	gsl_matrix *Y;
	Y = gsl_matrix_alloc(n, t);
	gsl_matrix_memcpy(Y, X);

	gsl_matrix *PI = gsl_matrix_alloc(n,t); 	// intermediate matrix
	gsl_matrix *TMP = gsl_matrix_alloc(t,t); 	// intermediate matrix
	gsl_matrix *WORK = gsl_matrix_alloc(t,t); 	// for SVD
	gsl_matrix *V = gsl_matrix_alloc(t,t);		// for SVD
	gsl_vector *s = gsl_vector_alloc(t);		// for SVD
	gsl_matrix *S = gsl_matrix_alloc(t,t);		// for SVD
	gsl_vector *work = gsl_vector_alloc(t);		// for SVD
	gsl_matrix *TINV = gsl_matrix_alloc(t,t);	// TMP inverse
	gsl_matrix *TM2 = gsl_matrix_alloc(t,n); 	// intermediate matrix
	gsl_matrix *K = gsl_matrix_alloc(n,t);		// gain
	gsl_matrix *alpha = gsl_matrix_alloc(1,t);	// prior estimation error

	gsl_matrix_set_identity(S);

	{
		std::lock_guard<std::mutex> lock(m2);
		gsl_matrix_memcpy(Wshadow, W);	// W -> Wshadow
	}

	for (size_t i=0; i<n; i++) {

		// refresh X (Y -> X)
		gsl_matrix_memcpy(X, Y);

		// get w [n by 1]
		gsl_matrix_view w = gsl_matrix_submatrix(Wshadow, 0, i, n, 1);

		// zero out row in X
		// prefill alpha with desired values
		for (size_t k=0; k<t; k++) {
			gsl_matrix_set(alpha, 0, k, gsl_matrix_get(X, i, k));
			gsl_matrix_set(X, i, k, 0.0);
		}

		// PI = P X
		gsl_blas_dgemm(CblasNoTrans, CblasNoTrans, 1.0, P[i], X, 0.0, PI);

		// TMP = X' PI + lambda
		gsl_matrix_set_all(TMP, lambda);
		gsl_blas_dgemm(CblasTrans, CblasNoTrans, 1.0, X, PI, 1.0, TMP);

		// TMP = U S V^T
		// n.b. U -> TMP
		gsl_linalg_SV_decomp_mod(TMP, WORK, V, s, work);
		for (size_t k=0; k<t; k++) {
			gsl_matrix_set(S, k, k, gsl_vector_get(s, k));
		}

		// WORK = V S'
		gsl_blas_dgemm(CblasNoTrans, CblasTrans, 1.0, V, S, 0.0, WORK);

		// TINV = WORK U'
		gsl_blas_dgemm(CblasNoTrans, CblasTrans, 1.0, WORK, TMP, 0.0, TINV);

		// K = PI TINV
		gsl_blas_dgemm(CblasNoTrans, CblasNoTrans, 1.0, PI, TINV, 0.0, K);

		// alpha = d - w' X
		// nb Haykin uses xi, rather than alpha
		gsl_blas_dgemm(CblasTrans, CblasNoTrans, -1.0, &w.matrix, X, 1.0, alpha);

		// w = w + K alpha'
		gsl_blas_dgemm(CblasNoTrans, CblasTrans, 1.0, K, alpha, 1.0, &w.matrix);

		// TM2 = X' P
		gsl_blas_dgemm(CblasTrans, CblasNoTrans, 1.0, X, P[i], 0.0, TM2);

		// P = laminv * P - laminv * K * TM2
		gsl_blas_dgemm(CblasNoTrans, CblasNoTrans, -1.0*laminv, K, TM2, laminv, P[i]);

	}

	// deallocate
	gsl_matrix_free(PI);
	gsl_matrix_free(TMP);
	gsl_matrix_free(WORK);
	gsl_matrix_free(V);
	gsl_vector_free(s);
	gsl_matrix_free(S);
	gsl_vector_free(work);
	gsl_matrix_free(TINV);
	gsl_matrix_free(TM2);
	gsl_matrix_free(K);
	gsl_matrix_free(alpha);

	{
		std::lock_guard<std::mutex> lock(m1);
		gsl_matrix_memcpy(W, Wshadow);
	}

	// todo add bulletproofing for elements in p becoming huge numbers
	// or becoming nan
}

// X is the input matrix (n by t)
// Y is the cleaned output matrix (n x t)
void RLS::filter(gsl_matrix *X, gsl_matrix *Y)
{
	// copy X into Y
	gsl_matrix_memcpy(Y, X);
	{
		std::lock_guard<std::mutex> lock(m1);
		// Y = W * X - X;
		gsl_blas_dgemm (CblasNoTrans, CblasNoTrans, 1.0, W, X, -1.0, Y);
	}
}

void RLS::clearWeights()
{
	std::lock_guard<std::mutex> lock1(m1);
	std::lock_guard<std::mutex> lock2(m2);
	gsl_matrix_set_all(Wshadow, 1.0/(double)n);	// init weights
	for (size_t i=0; i<n; i++) {
		gsl_matrix_set(Wshadow, i, i, 0.0); 	// diagonal should be zero
		gsl_matrix_set_identity(P[i]); // identity matrix
		gsl_matrix_scale(P[i], delta); // scale by delta
	}
	gsl_matrix_memcpy(W, Wshadow);
}

void RLS::save(MatStor *ms)
{
	if (ms) {
		std::lock_guard<std::mutex> lock(m1);
		for (size_t i=0; i<n; i++) {
			for (size_t j=0; j<n; j++) {
				ms->setDouble2(i, j, "rls_w", gsl_matrix_get(W,i,j));
			}
		}
		ms->setDouble(0, "rls_lambda", lambda);
		ms->setDouble(0, "rls_delta", delta);
	}
}