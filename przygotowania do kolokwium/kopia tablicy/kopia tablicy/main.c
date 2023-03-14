#include <stdio.h>

int* kopia_tablicy(int tabl[], unsigned int n);

int main()
{
	int tablica[] = { 1, 2, 3, 4, 5, 6 };
	int* tab1 = kopia_tablicy(tablica, 6);

	for (int i = 0; i < 6; i++)
	{
		printf("%d, ", tab1[i]);
	}
	return 0;
}