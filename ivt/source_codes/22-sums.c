#include <stdio.h>

int main() {
	int a,b,c;

	printf("Zadejte 3 čísla: ");
	scanf("%i %i %i", &a, &b, &c);

	printf("Sumy kazde dvojice: %i %i %i", a+b, b+c, a+c);

	return 0;
}
