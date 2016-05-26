#ifndef __ARTIFACT_FILTER_H__
#define	__ARTIFACT_FILTER_H__

#include <atomic>
#include <mutex>
#include <armadillo>

using namespace std;
using namespace arma;

class ArtifactFilter
{
protected:
	size_t n;		// order of the filter
	mat W;			// weights (n by n)

	mutex mtx;

public:

	ArtifactFilter(int _n);
	~ArtifactFilter();

	mat filter(mat X);
	void loadWeights(const char *f);
	void saveWeights(const char *f);
	void clearWeights();
};

class ArtifactNLMS3 : public ArtifactFilter
{
protected:
	double mu;		// learning rate. a small number try 1e-5

public:

	ArtifactNLMS3(int _n);
	~ArtifactNLMS3();
	void setMu(float _mu);
	void train(mat X);
};


#endif

