#ifndef __NLMS_H__
#define	__NLMS_H__

#include <gsl/gsl_math.h>
#include <gsl/gsl_blas.h>

class MatStor;

class NLMS
{
protected:
	int n; 			// order of the filter
	double mu;		// learning rate. a small number try 1e-3

	gsl_vector *w;	// weights

public:

	NLMS(int _n, double _mu);
	~NLMS();

	double train(gsl_vector *x, double d);
	double filter(gsl_vector *x);
	void clearWeights();
};

class ArtifactNLMS : public NLMS
{
protected:
	int ch;	// the channel to operate on
public:
	ArtifactNLMS(int _n, double _mu, int _ch, MatStor *ms);
	~ArtifactNLMS();

	void save(MatStor *ms);
};

#endif