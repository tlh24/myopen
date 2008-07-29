/* whee */

#include <stdio.h>
/*
#include <stdlib.h>
#include <string.h>
*/
#include "matrix.h"

int main(int argc, char **argv) {

  matrix * x;
  matrix * xmean;

  x = newMatrix();
  xmean = newMatrix();

  allocMatrix(x, 5, 5);	/* rows, cols */

  printMatrix(x);
  mean(x,xmean);
  printMatrix(xmean);
 

}
