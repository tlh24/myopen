#include <stdio.h>
#include <math.h>
// Includes for plplot
#include <plstream.h>
#include <iostream>
#include "matchSpike.h"



int main(void){

	matchSpike ms;

	ms.init(0,0);
	int a[4], b[6];
	ms.fit(1e7, b, a);
	ms.plotAll();

	return 0;
}