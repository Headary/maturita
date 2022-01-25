#include <stdio.h>

/* Calculate average of values in input.csv and write the output to
 output.csv*/

const char inputFilePath[] = "./input.csv";
const char outputFilePath[] = "./output.csv";

int main () {
	int values[3];

	FILE *inputFile = fopen(inputFilePath, "r");
	if (inputFile == NULL) {
		puts("Input file not found!");
		return(1);
	}

	fscanf(inputFile, "%d,%d,%d", &values[0], &values[1], &values[2]);
	fclose(inputFile);

	float avg = (values[0]+values[1]+values[2])/3.0f;
	
	FILE *outputFile = fopen(outputFilePath, "w");
	fprintf(outputFile, "Average: %f\n", avg);
	fclose(outputFile);

	return 0;
}
