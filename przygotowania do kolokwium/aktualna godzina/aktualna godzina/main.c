#include <stdio.h>

void aktualna_godzina(char* godzina);

int main()
{
	char godzina[3];
	aktualna_godzina(godzina);
	godzina[2] = 0;
	printf("%2s",godzina);
	return 0;
}