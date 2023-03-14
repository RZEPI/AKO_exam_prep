#include <stdio.h>

unsigned __int64 sortowanie(__int64* tab1, unsigned int n);

int main()
{
	__int64 tab[] = { 21312321321321, 12321, 2121, 1223 };
	__int64 l = sortowanie(tab, 4);
	printf("%llu", l);
	return 0;
}