#ifndef __ARTIFACT_NLMS_2_H__
#define	__ARTIFACT_NLMS_2_H__

#include <atomic>
#include <mutex>
#include <armadillo>

using namespace arma;

class MatStor;

class ArtifactNLMS2
{
protected:
	size_t n;		// order of the filter
	double mu;		// learning rate. a small number try 1e-5

	mat W;			// weights (n by n)

public:

	ArtifactNLMS2(int _n, MatStor *ms);
	~ArtifactNLMS2();

	void setMu(float _mu);
	float getMu();
	void train(mat X);
	mat filter(mat X);
	void clearWeights();
	void save(MatStor *ms);
};

#endif

