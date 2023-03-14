#include <stdio.h>

typedef struct MIESZ
{
	unsigned int dziesietna;
	unsigned int poPrzecinku;
}MIESZ;

float miesz2float(MIESZ miesz);

int main()
{
	MIESZ l;
	l.dziesietna = 0x0000000FF;
	l.poPrzecinku = 0xC0000000;
	float nowaLiczba = miesz2float(l);
	printf("%f", nowaLiczba);
	return 0;
}