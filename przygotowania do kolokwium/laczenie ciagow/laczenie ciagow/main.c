#include <stdio.h>

void nowy_strcat(char* wynik, char* zrodlo);

int main()
{
	char zrodlo[15];
	char wynik[15];
	zrodlo[0] = '1';
	zrodlo[1] = '2';
	zrodlo[2] = '3';
	zrodlo[3] = '9';
	zrodlo[4] = 0;
	wynik[0] = '4';
	wynik[1] = '5';
	wynik[2] = '6';
	wynik[3] = 0;


	nowy_strcat(wynik, zrodlo);

	printf("%s", wynik);
	return 0;
}