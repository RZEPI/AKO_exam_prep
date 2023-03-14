#include <stdio.h>

int roznica(int* a, int** b);

int main()
{
	int a, b, * wsk, wynik;
	a = 21;
	b = 25;
	wsk = &b;
	wynik = roznica(&a, &wsk);

	printf("%d", wynik);

	return 0;

}