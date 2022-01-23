#include <stdio.h>

int main () {
	int i;

	printf("Zadejte cislo: ");
	scanf("%d", &i);

	if (i % 2 == 0) puts("Sude");
	else puts("Liche")

	return 0;
}
