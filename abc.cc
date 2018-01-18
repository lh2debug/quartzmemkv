#include "pmalloc.h"

int main(){
	int *p = (int*)pmalloc(sizeof(int));
	pfree((void*)p, sizeof(int));
	return 0;
}