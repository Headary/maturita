
set xlabel '\popi{s}{m}'
set ylabel '\popi{F}{N}'

set xrange [0:5]
set yrange [0:*]

set bmargin 4
set lmargin 8

unset key

plot 0.7*x+3 w filledcurves below x1 lc "gray", 0.7*x+3 ls 1 lw 4
