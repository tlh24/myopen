#ifndef __ARTIFACT_FILTER_H__
#define	__ARTIFACT_FILTER_H__

#include <string>
#include <armadillo>

using namespace std;
using namespace arma;

class MatStor;

class ArtifactFilter
{
protected:
	size_t n;		// order of the filter
	mat W;			// weights (n by n)

public:

	ArtifactFilter(int _n);
	~ArtifactFilter();

	mat filter(mat X);
	void loadWeights(const char *fn);
	void clearWeights();
};

#endif

