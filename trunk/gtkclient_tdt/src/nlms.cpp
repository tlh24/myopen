#include <float.h>
#include <gsl/gsl_vector.h>
#include <gsl/gsl_linalg.h>
#include <gsl/gsl_blas.h>
#include "matStor.h"
#include "nlms.h"

NLMS::NLMS(int _n, double _mu)
{
	n = _n;
	mu = _mu;

	w = gsl_vector_alloc(n);
	// set weights
	// gsl_vector_float_set_zero(w);
	gsl_vector_set_all(w, 1.0/(double)n);	// possibly a better prior
}

NLMS::~NLMS()
{
	gsl_vector_free(w);
}

// x is the input vector (nx1)
// d is the desired output scalar
// output is the subtracted filtered value, d - dhat (scalar)
double NLMS::train(gsl_vector *x, double d)
{
	// in the below we use (roughly) the notation of Haykin, 4th ed. pg 324

	// dhat(k) = w'(k) * x(k);
	double dhat;
	gsl_blas_ddot(w, x, &dhat);

	// alpha(k) = d(k) - dhat(k);
	// nb Haykin uses e, rather than alpha
	double alpha;
	alpha = d - dhat;

	// temp(k) = (mu * alpha(k) ) / ||x(k)||^2
	double xnorm = gsl_blas_dnrm2(x);
	double temp = (mu * alpha) / ((xnorm * xnorm) + FLT_EPSILON);

	// w(k+1) = w(k) + temp(k) * x(k)
	gsl_blas_daxpy(temp, x, w);

	//for (int i=0; i<10 ; i++)
	//	printf("%f\t",w->data[i]);
	//printf("\n");

	return alpha;
}

// x is the input vector (nx1)
// output is the filtered value, dhat (scalar)
double NLMS::filter(gsl_vector *x)
{
	// dhat(k) = w'(k) * x(k);
	double dhat;
	gsl_blas_ddot(w, x, &dhat);

	return dhat;
}

ArtifactNLMS::ArtifactNLMS(int _n, double _mu, int _ch, MatStor *ms)
	: NLMS(_n, _mu)
{
	ch = _ch;
	if (ms) {
		for (int i=0; i<n; i++) {
			double d = ms->getDouble2(ch, i, "nlms_w", 1.0/(double)n);
			gsl_vector_set(w, i, d);
		}
		mu = ms->getDouble(ch, "nlms_mu", mu);
	}
}
ArtifactNLMS::~ArtifactNLMS()
{

}

void ArtifactNLMS::save(MatStor *ms)
{
	if (ms) {
		for (int i=0; i<n; i++) {
			ms->setDouble2(ch, i, "nlms_w", gsl_vector_get(w,i));
		}
		ms->setDouble(ch, "nlms_mu", mu);
	}
}