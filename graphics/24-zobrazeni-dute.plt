set xrange [0:5]
set yrange [-5:5]

set zeroaxis
set arrow from 1,-5 to 1,5 nohead
set arrow from 2,-5 to 2,5 nohead

set arrow from 0,1 to 5,1 nohead
set arrow from 0,-1 to 5,-1 nohead

set xtics 1
set ytics 1

set style line 1 lw 5 lc rgb "#e02222"
set style line 2 lw 5 lc rgb "#2222e0"

set xlabel "$a$"

plot 1/(1-x) title "$Z$" ls 1, x/(x-1) title "$a'$" ls 2
