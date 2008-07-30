#include <stdio.h>
#include <stdlib.h>
/*
#include <string.h>
*/
#include "matrix.h"

/* whee */
/* $Id$ */

int main(int argc, char **argv) {

  matrix * x;
  matrix * xmean;
  matrix * xstd;

  x = newMatrix();
  xmean = newMatrix();
  xstd = newMatrix();

  allocMatrix(x, 5, 5);	/* rows, cols */

  printMatrix(x);
  mean(x,xmean);
  std(x,xstd);
  
  printMatrix(xmean);
  printMatrix(xstd);

  return(EXIT_SUCCESS);
}
