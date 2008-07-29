/* whee */

#include <stdio.h>
/*
#include <stdlib.h>
#include <string.h>
*/
#include "matrix.h"

int main(int argc, char **argv) {

  matrix * x;

  x = newMatrix();

  allocMatrix(x, 5, 5);	/* rows, cols */

  printMatrix(x);

}
