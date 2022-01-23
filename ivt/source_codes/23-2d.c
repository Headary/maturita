#include <stdio.h>

int main () {
	int size,num;

	printf("Type in size (odd number) and number of images: ");
	scanf("%d %d", &size, &num);

	for (int y = 0; y < size; y++) {
		for (int i = 0; i < num; i++) {
			for (int x = 0; x < size; x++) {
				if (x == size/2 || y == size/2 || x == y || x == size-y-1)
					putchar('*');
				else
					putchar('_');
			}
		}
		putchar('\n');
	}
}
