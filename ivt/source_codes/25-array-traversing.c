#include <stdio.h>

int grades[] = {1,3,4,2,1,3,2,2,3,1};

int main() {
	int arrayLength = sizeof(grades)/sizeof(grades[0]);
	int sum = 0, min = 5, max = 1;
	for (int i = 0; i < arrayLength; i++) {
		int grade = grades[i];
		sum += grade;
		if (grade < min) min = grade;
		if (grade > max) max = grade;
	}
	printf("Average grade: %.2f\n", (float)sum/arrayLength);
	printf("Worst grade: %d\n", max);
	printf("Best grade: %d\n", min);
	return 0;
}
