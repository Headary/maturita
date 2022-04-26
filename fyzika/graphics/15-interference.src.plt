
set multiplot layout 2,1

set ytics 1
set xtics pi
set format x '$%.0P\pi$'

set key right center outside

set xrange [0:6*pi]

plot sin(x) lw 2 lc "red" t "$y_1$",\
	1.3*sin(x) lw 2 lc "blue" t "$y_2$",\
	2.3*sin(x) lw 2 lc "black" t "$y_1+y_2$"

plot sin(x) lw 2 lc "red" t "$y_1$",\
	1.3*sin(x+pi) lw 2 lc "blue" t "$y_2$",\
	sin(x)+1.3*sin(x+pi) lw 2 lc "black" t "$y_1+y_2$"
