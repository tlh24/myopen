#include <gsl/gsl_matrix.h>
#include <gsl/gsl_linalg.h>
#include <gsl/gsl_blas.h>
#include "rls.h"

RLS::RLS(int _n, double _lambda, double _delta)
{
	n = _n;
	lambda = _lambda;
	laminv = 1.0/lambda;
	delta = _delta;

	w = gsl_matrix_alloc(n, 1);
	gsl_matrix_set_all(w, 1.0/(double)n);	// init weights

	p = gsl_matrix_alloc(n, n);
	gsl_matrix_set_identity(p);
	gsl_matrix_scale (p, delta); // scale by delta
}

RLS::~RLS()
{
	gsl_matrix_free(w);
	gsl_matrix_free(p);
}

// x is the input vector (nx1)
// d is the desired output scalar
void RLS::train(gsl_matrix *x, double d)
{
	// in the below we use (roughly) the notation of Haykin, 4th ed. pg 443

	// pi(k) = p(k-1) * x(k)
	gsl_matrix *pi = gsl_matrix_alloc(n,1);
	gsl_matrix_set_zero(pi);
	gsl_blas_dgemm(CblasNoTrans,CblasNoTrans,1.0,p,x,0.0,pi);

	// tmp(k) = x'(k) * pi(k) + lambda
	gsl_matrix *tmp = gsl_matrix_alloc(1,1);
	gsl_matrix_set_all(tmp, 1.0);
	gsl_blas_dgemm(CblasTrans,CblasNoTrans,1.0,x,pi,lambda,tmp);

	// tmpinv(k) = inv(tmp(k))
	// todo check for div by zero etc xxx
	gsl_matrix *tmpinv = gsl_matrix_alloc(1,1);
	gsl_matrix_set_all(tmpinv, 1.0/ gsl_matrix_get(tmp,0,0));

	// g(k) = pi(k) * tmpinv(k)
	// nb Haykin uses k, rather than g
	gsl_matrix *g = gsl_matrix_alloc(n,1);
	gsl_matrix_set_zero(g);
	gsl_blas_dgemm(CblasNoTrans,CblasNoTrans,1.0,pi,tmpinv,0.0,g);

	// alpha(k) = d(k) - w'(k-1) * x(k);
	// nb Haykin uses xi, rather than alpha
	gsl_matrix *alpha = gsl_matrix_alloc(1,1);
	gsl_matrix_set_all(alpha, d);
	gsl_blas_dgemm(CblasTrans,CblasNoTrans,-1.0,w,x,1.0,alpha);

	// w(k) = w(k-1) + g(k) * alpha'(k)
	gsl_blas_dgemm(CblasNoTrans,CblasTrans,1.0,g,alpha,1.0,w);

	// tmp2 = x'(k)*p(k-1)
	gsl_matrix *tmp2 = gsl_matrix_alloc(1,n);
	gsl_blas_dgemm(CblasTrans,CblasNoTrans,1.0,x,p,0.0,tmp2);

	// p(k) = laminv * p(k-1) - laminv * g(k) * tmp2
	gsl_blas_dgemm(CblasNoTrans,CblasNoTrans,-1.0*laminv,g,tmp2,laminv,p);

	// deallocate
	gsl_matrix_free(pi);
	gsl_matrix_free(tmp);
	gsl_matrix_free(tmpinv);
	gsl_matrix_free(g);
	gsl_matrix_free(alpha);
	gsl_matrix_free(tmp2);

	// todo add bulletproofing for elements in p becoming huge numbers
	// or becoming nan
}

// x is the input vector (n,1)
// output is the filtered value (scalar)
double RLS::filter(gsl_matrix *x)
{
	// dhat(k) = w'(k) * x(k);
	gsl_matrix *dhat = gsl_matrix_alloc(1,1);
	gsl_blas_dgemm(CblasTrans,CblasNoTrans,1.0,w,x,0.0,dhat);
	return gsl_matrix_get(dhat,0,0);
}