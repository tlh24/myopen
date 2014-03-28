#ifndef __RLS_H__
#define	__RLS_H__

#include <gsl/gsl_math.h>
#include <gsl/gsl_blas.h>

class RLS
{
protected:
	int n; 			// order of the filter
	double lambda;	// forgetting factor (try: 1-1/(10*n) < lambda < 1)
	double laminv;	// lambda^-1, for convenience
	double delta;	// initial phi-matrix factor (a small number)

	gsl_matrix *w;	// weights
	gsl_matrix *p;	// autocorrelation matrix of weights

public:

	RLS(int _n, double _lambda, double _delta);
	~RLS();

	void train(gsl_matrix *x, double d);

	double filter(gsl_matrix *x);
};

#endif