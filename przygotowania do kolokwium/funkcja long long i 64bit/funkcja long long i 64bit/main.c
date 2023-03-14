#include <stdio.h>

extern float funkcja(long long n);

int main()
{
	float l = funkcja(5);
	printf("%f", l);
	return 0;
}