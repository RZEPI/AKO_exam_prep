#include <stdio.h>

double funkcja(double x, double y);

int main()
{
	double x = 10.12;
	double y = 8.15;
	double wynik = funkcja(x, y);
	printf("%lf", wynik);
	return 0;
}