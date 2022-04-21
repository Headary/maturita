set xrange[0:4]
set yrange[-3:3]

set xzeroaxis 
set yzeroaxis 

set xtics axis
set ytics 1 axis

set xtics add ('' 0)

unset border
unset key

set bmargin 1.5
set samples 2000

#set xlabel "$t$"
set label "$t$" at graph 1, graph 0.5 offset char 2,0 center
set ylabel "$y$" rotate by 0 offset 2,0

#ym
b = 0.5 #moving arrow from left to right
set arrow from b,0 to b,3*sin(b*pi) heads filled lw 2
set label '$y_m$' at b,1.5*sin(b*pi) offset char 1, char 0

# T
a = -3.0 #moving arrow up and down
set arrow from 0,a to 2,a heads filled lw 2
set arrow from 2,0 to 2,a nohead filled lt 0 lw 2
set label "$T$" at 1,a offset char 0, char -1 center

# tau
a = 2.0 #moving arrow up and down
set arrow from 1,a to 2,a heads filled lw 2
set arrow from 1,0 to 1,a nohead filled lt 0 lw 2
set arrow from 2,0 to 2,a nohead filled lt 0 lw 2
set label '$\tau$' at 1.5,a offset char 0, char -1 center

plot 3*sin(x*pi) ls -1 lw 2

set output
