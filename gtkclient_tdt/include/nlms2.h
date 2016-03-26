#ifndef __ARTIFACT_NLMS_2_H__
#define	__ARTIFACT_NLMS_2_H__

#include <atomic>
#include <mutex>
#include <gsl/gsl_math.h>
#include <gsl/gsl_blas.h>

class MatStor;

class ArtifactNLMS2
{
protected:
	size_t n;				// order of the filter
	double mu;				// learning rate. a small number try 1e-3

	gsl_matrix *W;			// weights (n by n)
	gsl_matrix *Wshadow; 	// shadow weights (for thread safety)
	std::mutex mx;			// for thread safety
public:

	ArtifactNLMS2(int _n, double _mu, MatStor *ms);
	~ArtifactNLMS2();

	void train(gsl_matrix *X);
	void filter(gsl_matrix *X, gsl_matrix *Y);
	void clearWeights();
	void save(MatStor *ms);
	// TODO getter/setter for learning rate  (mu)
};

#endif

