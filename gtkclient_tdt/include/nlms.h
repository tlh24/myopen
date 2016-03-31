#ifndef __NLMS_H__
#define	__NLMS_H__

#include <atomic>
#include <mutex>
#include <gsl/gsl_math.h>
#include <gsl/gsl_blas.h>

class MatStor;

class NLMS
{
protected:
	int n; 			// order of the filter
	double mu;		// learning rate. a small number try 1e-3

	gsl_vector *w;			// weights
	gsl_vector *wshadow; 	// shadow weights (for thread safety)
	std::mutex mx;			// for thread safety
public:

	NLMS(int _n, double _mu);
	~NLMS();

	double train(gsl_vector *x, double d);
	double filter(gsl_vector *x);
	void clearWeights();
	// TODO getter/setter for learning rate  (mu)
};

class ArtifactNLMS : public NLMS
{
protected:
	int m_ch;	// the channel to operate on
public:
	ArtifactNLMS(int _n, double _mu, int _ch, MatStor *ms);
	~ArtifactNLMS();

	int ch();
	void save(MatStor *ms);
};

#endif