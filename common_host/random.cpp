#include "random.h"
#include <cstdlib>

float uniform()
{
	return ((float)rand() / (float)RAND_MAX);
}
