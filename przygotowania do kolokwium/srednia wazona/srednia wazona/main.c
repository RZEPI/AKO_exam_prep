#include <stdio.h>

float avg_wd(int n, void* tablica, void* wagi);

int main()
{
	float tablica[] = { 2.3, 1.2, 3.4 };
	float wagi[] = { 3.2, 2.1, 4.3 };
	printf("%f", avg_wd(3, tablica, wagi));
	return 0;
}