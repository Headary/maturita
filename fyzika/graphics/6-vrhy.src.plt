set parametric

g=9.81
vx1=0
vy1=10
vx2=10
vy2=0
vx3=10
vy3=10
h0=5

set yrange[0:*]
set xrange[-0.1:23]

set xlabel '\popi{x}{m}'
set ylabel '\popi{y}{m}'

set tmargin 1.5
set bmargin 4

set samples 2000

plot vx1*t,vy1*t-g*t**2/2 title "svislý vrh" lw 4,\
	vx2*t,h0+vy2*t-g*t**2/2 title "vodorovný vrh" lw 3,\
	vx3*t,vy3*t-g*t**2/2 title "šikmý vrh" lw 3
