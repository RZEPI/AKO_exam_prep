#include <stdio.h>

void szyfruj(char* tekst);

int main()
{
	char tekst = "Test";
	szyfruj(&tekst);
	printf("%s", tekst);
	return 0;
}