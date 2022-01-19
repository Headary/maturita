set xlabel '$n$'
set ylabel 't'

set samples 1000

set xrange[0:100]
set yrange[0:500]

plot\
	1 tit '$O(1)$' lw 4,\
	x tit '$O(n)$' lw 4,\
	log(x) tit '$O(\log n)$' lw 4,\
	x*log(x) tit '$O(n\log n)$' lw 4,\
	x**2 tit '$O(n^2)$' lw 4,\
	2**x tit '$O(2^n)$' lw 4,\
	gamma(x+1) tit '$O(n!)$' lw 4
