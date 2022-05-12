
set multiplot layout 3,2

f(x,y) = (x > 0) ? y : 1/0
g(x,y) = (x <= 0) ? y : 1/0

set samples 4000

unset tics
#set ytics 1
#set xtics pi
#set format x '$%.0P\pi$'

set xrange [-1.5*pi:4.5*pi]
set yrange [-2:2]

unset key 
set zeroaxis

set tmargin 0.25
set bmargin 0.25
set lmargin 0.5
set rmargin 0.5

do for [i in "0 0.25 0.5 0.75 1"] {
	if (i>0.8) {
		set key outside left center at graph 1, graph 0.5
	}
	plot f(x,sin(x+i*pi)) lw 3 lc "red" t "postupující vlna", \
	g(x,sin(x+i*pi)) lw 3 lc "red" dt 2 t "vlna za překážkou", \
	f(x,sin(-x+i*pi)) lw 3 lc "blue" dt 2 t "odraz vlny"
}
