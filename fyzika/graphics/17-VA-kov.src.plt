set xlabel "U"
set ylabel "I"

unset tics

set key bottom right 

set xrange [0:10]

a=0.049
rho=2.828

plot x/rho tit "Konstantní teplota",\
	x/(rho*(1+a*x)) tit "Proměnná teplota"
