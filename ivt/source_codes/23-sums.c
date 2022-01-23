#include <stdio.h>

int main() {
	int n, sum;
	printf("Type n: ");
	scanf("%i", &n);

	for (int i = 1; i <= n; i++) {
		sum = 0;
		for (int j = 1; j <= i; j++) sum += j;
		printf("1 - %2i: %2i\n", i, sum);
	}
	return 0;
}
