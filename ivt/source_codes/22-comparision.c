int compare(a,b,c) {
	if (a == 0) return 0;
	if (a < b) return -1;
	if (a >= b) return 1;
	if ((a == c) && (b < c) || !(c == 1)) return 2;
	return 3;
}
