#ifndef _ALG_H
#define _ALG_H

/* $Id$ */

void get_weights(matrix *X, matrix *Y, matrix *B);
void applyWeights(matrix * X, matrix * w, matrix * yhat);
void correlate(matrix * y_truth, matrix * y_hat, matrix * r2);

#endif
