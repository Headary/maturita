set xrange [0:4]
set border 3

set grid xtics
set key top left
set xlabel "\\popi{t}{s}"
set xtics 1 nomirror
set ytics 1 nomirror

set arrow 1 from graph 0,1 to graph 0,1.2 filled size screen 0.1,2 
set arrow 2 from graph 1,0 to graph 1.1,0 filled size screen 0.1,2

set tmargin 1.5
set bmargin 4

set multiplot layout 2,2

a(x) = 1
v(x) = a(x)*x
s(x) = v(x)*x

### 1 ###

set ylabel "\\popi{a}{m.s^{-2}}"
set origin 0.0,0.5
set yrange [0:1.5]
#plot "serial2-4.src.dat" using 1:2 title "a(x)" w lines lw 4
plot a(x) title "a(x)" lw 4

### 2 ###

set ylabel "\\popi{v}{m.s^{-1}}"
set origin 0.0,0.0
set yrange [0:*]
#plot "serial2-4.src.dat" using 1:3 title "v(x)" w lines lw 4
plot v(x) title "v(x)" lw 4

### 3 ###

set arrow 1 from graph 0,1 to graph 0,1.07 filled size screen 0.1,2 

set origin 0.5,0.0
set size 0.5,1

set ylabel "\\popi{s}{m}"
set yrange [0:*]
set ytics 1
#plot "serial2-4.src.dat" using 1:4 title "s(x)" w lines lw 4
plot s(x) title "s(x)" lw 4

unset multiplot
