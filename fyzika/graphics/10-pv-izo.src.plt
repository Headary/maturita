set xrange [0:1]
set yrange [0:*]

f(x,a) = (x > 0.1 && x < 0.9) ? a/x : 1/0
g(x,a) = (x > 0.2 && x < 0.8) ? a : 1/0

unset tics

set multiplot layout 1,3

set xlabel "$V$"
set ylabel "$p$" norotate

### 1 ###

set title "Izotermický děj"
plot f(x,0.25) title "$T_1$" lw 4,\
	f(x,0.5) title "$T_2$" lw 4,\
	f(x,0.75) title "$T_3$" lw 4

set yrange [0:1]

### 2 ###

set title "Izochorický děj"
set parametric
plot [0.2:0.8] 0.25,t title "$T_1$" lw 4,\
	0.5,t title "$T_2$" lw 4,\
	0.75,t title "$T_3$" lw 4
unset parametric

### 3 ###
set title "Izobarický"

plot g(x,0.25) title "$T_1$" lw 4,\
	g(x,0.5) title "$T_2$" lw 4,\
	g(x,0.75) title "$T_3$" lw 4
