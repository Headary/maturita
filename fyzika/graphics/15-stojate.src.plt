
set multiplot layout 3,2

f(x,y) = (x > 0) ? y : 1/0
g(x,y) = (x <= 0) ? y : 1/0
w(x) = -x*exp(-x**2)
q(x) = w(x-t)+w(x+t)

set samples 4000

unset tics
#set ytics 1
#set xtics pi
#set format x '$%.0P\pi$'

set xrange [-3*pi:3*pi]
set yrange [-2:2]

unset key 

set tmargin 0.25
set bmargin 0.25
set lmargin 0.5
set rmargin 0.5

do for [i in "0.25 0.5 0.75 1 1.25 1.5"] {
	plot sin(x-pi*i) lw 4 lc "red",\
	sin(-x-(i+0.5)*pi) lw 4 lc "blue",\
	sin(x-pi*i)+sin(-x-(i+0.5)*pi) lw 4 lc "black"
}
