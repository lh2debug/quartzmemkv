#include <iostream>
#include "MemoryPool.h"

using namespace std;

int main(){
	MemoryPool<char[]> pool;
	char a[] = pool.allocate();
	*a = "123";
	cout << "a* " << *a << endl;
	pool.deallocate(a);
	cout << "a* " << *a << endl;
	return 0;
}