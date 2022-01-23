#include <stdio.h>

int main(){
	// init variables
	char character, word[20], sentence[20];
	int number;

	// different input methods
	getchar(character);
	gets(sentence);
	scanf("%s %d", &word, &number);

	return 0; // exit
}
