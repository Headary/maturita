set xrange [0:0.7]
set yrange [0:*]

f(x,a) = (x > 0.1 && x < 0.6) ? a : 1/0

unset tics

set xlabel "$V$"
set ylabel "$p$" norotate

### 1 ###

plot f(x,0.5/x) title "izotermy" ls 1 lw 4,\
	f(x,0.8/x) notitle ls 1 lw 4,\
	f(x,0.3/(x**1.5)) title "adiabata" lw 4
