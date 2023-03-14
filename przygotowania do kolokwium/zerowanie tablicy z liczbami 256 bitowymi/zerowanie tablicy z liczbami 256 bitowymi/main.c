#include <stdio.h>

typedef struct _mm256
{
	long long int najstarsza;
	long long int mid;
	long long int midm;
	long long int najmlodsza;
}_mm256;

void zeruj(_mm256 tablica[], float tab[], unsigned int n);


int main()
{
	_mm256 j;
	j.najstarsza = 1;
	j.mid = 2;
	j.midm = 0;
	j.najmlodsza = 3;

	_mm256 d;
	d.najmlodsza = 12;
	d.midm = 0;
	d.mid = 0;
	d.najstarsza = 0;

	_mm256 tab[2];
	tab[0] = j;
	tab[1] = d;
	float max = 0x7F7FFFFF;
	float tab1[] = { max, 12.1 };
	//printf("%f", max);
	zeruj(tab, tab1, 2);

	int i = 1;
	return 0;
}