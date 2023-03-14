#include <stdio.h>

char* komunikat(char* tekst);

int main()
{
	char tekst[] = { 'T', 'e', 's', 't', 0 };
	char* koms = komunikat(tekst);
	return 0;
}