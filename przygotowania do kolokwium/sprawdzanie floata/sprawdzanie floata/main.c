#include <stdio.h>

int zaokroglij(float  x);

int main()
{
	float l = 0b01111111001111110000000000000000000000;
	printf("%f\n", l);
	printf("%d", zaokroglij(l));


	return 0;
}