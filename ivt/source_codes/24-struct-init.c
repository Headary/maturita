// -- Define struct Point --
struct Point {
	int x,y;
};

struct Point p1 = {0,0}; // init p1 of type Point

// -- Declare p2 of type Point --
struct Point {
	int x,y;
} p2 = {1,1};

// -- Define struct using typedef --
typedef struct {
	int x,y;
} Point;

Point p3 = {-1,2}; // declare Point
