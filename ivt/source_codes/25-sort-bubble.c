#include <stdio.h>
#include <stdbool.h>

// Swap pointers
void swap(int *xp, int *yp)
{
    int temp = *xp;
    *xp = *yp;
    *yp = temp;
}

// Function to implement bubble sort
void bubbleSort(int arr[], int n) {
	for (int i = 0; i < n-1; i++) {
		bool swapped = false;
		for (int j = 0; j < n-i-1; j++)
			if (arr[j] > arr[j+1]) {
				swap(&arr[j], &arr[j+1]);
				swapped = true;
			}
		if (!swapped) break; // Break if already sorted
	}
}

// Function to print an array
void printArray(int arr[], int size)
{
	for (int i=0; i < size; i++)
		printf("%d ", arr[i]);
	printf("\n");
}

// Driver program to test above functions
int main() {
	int arr[] = {11, 64, 34, 25, 12, 22, 90};
	int n = sizeof(arr)/sizeof(arr[0]);
	bubbleSort(arr, n);
	printf("Sorted array: \n");
	printArray(arr, n);
	return 0;
}
