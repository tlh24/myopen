#ifndef __RLS_H__
#define	__RLS_H__

#include <vector>
#include <atomic>
#include <mutex>
#include <gsl/gsl_math.h>
#include <gsl/gsl_blas.h>

class MatStor;

class RLS
{
protected:
	size_t n; 		// order of the filter
	double lambda;	// forgetting factor (try: 1-1/(10*n) < lambda < 1)
	double laminv;	// lambda^-1, for convenience
	double delta;	// initial phi-matrix factor (a small number)
	gsl_matrix *W;	// weights
	gsl_matrix *Wshadow; 	// shadow weights (for thread safety)
	std::vector<gsl_matrix *> P; // tensor of matrices of autocorrelations
	std::mutex m1;			// for thread safety
	std::mutex m2;			// for thread safety
public:

	RLS(int _n, double _lambda, double _delta, MatStor *ms);
	~RLS();

	void train(gsl_matrix *X);
	void filter(gsl_matrix *X, gsl_matrix *Y);
	void clearWeights();
	void save(MatStor *ms);
};

#endif