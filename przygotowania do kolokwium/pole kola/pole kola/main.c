#include <stdio.h>

void pole_kola(float* pr);

int main()
{
	float k;
	printf("Prosze podac pole kola: ");
	scanf_s("%f", &k);
	pole_kola(&k);
	printf("\nPole tego kola jest rowne %f\n", k);
	return 0;
}