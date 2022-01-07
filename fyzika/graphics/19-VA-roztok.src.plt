set xlabel "U"
set ylabel "I"

unset tics
unset key

set xrange[0:2]

set samples 2000

plot 0 <= x && x <= 1 ? 0 : 1/0 ls 1 lw 4, \
     1 <= x && x <= 2 ? x-1 : 1/0 ls 1 lw 4
