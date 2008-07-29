#ifndef _ALG_H
#define _ALG_H

/* $Id: matfile.h 113 2006-08-10 00:43:33Z joey $ */

void get_weights(matrix *X, matrix *Y, matrix *B);
void applyWeights(matrix * X, matrix * w, matrix * yhat);
void correlate(matrix * y_truth, matrix * y_hat, matrix * r2);

#endif
