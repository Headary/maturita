
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

set xrange [-4*pi:4*pi]
set yrange [-1:1]

unset key 

set tmargin 0.25
set bmargin 0.25
set lmargin 0.5
set rmargin 0.5

do for [i in "4 2 0.5 -0.5 -2 -4"] {
	t=i
	if (i > 0.5) {
		plot f(x,q(x)) lw 4, g(x,0) lw 4 dt 2
	} else {
		plot f(x,q(x)) lw 4, g(x,q(x)) lw 4 dt 2
	}
}
