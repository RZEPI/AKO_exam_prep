#include <stdio.h>

char* spacje(char znak);

int main()
{
	char znak = 'A';

	char* obszar = spacje(znak);

	printf("%s", obszar);

	return 0;
}