#include <stdlib.h>
#include <stdio.h>

/* error / warning function */
void print_err(char * s, int quit) {
   if (quit == 1) fprintf(stderr,"* Fatal:\t");
   else fprintf(stderr,"* Warning:\t");
   fprintf(stderr,"%s\n",s);
   if (quit == 1) exit(EXIT_FAILURE);
}

