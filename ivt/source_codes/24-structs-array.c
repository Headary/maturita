#include <stdio.h>

typedef struct {
	float x,y,z;
} Point;

Point points[] = {
	{1,4,2},
	{4,2,3},
	{2,3,6},
	{3,1,2}
};

int main () {
	for (int i=0; i<sizeof(points)/sizeof(points[0]); i++){
		printf("x: %.2f, y: %.2f, z: %.2f\n",
				points[i].x, points[i].y, points[i].z);
	}
}
