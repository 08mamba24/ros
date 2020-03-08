#include <error.h>
#include <errno.h>
#include <stdlib.h>

int main()
{
	double* array;
	array = malloc(10*sizeof(double));
	if(!array)
		error(1, errno, "unable to allocate array");
	free(array);
	free(array);
	return 0;
}
