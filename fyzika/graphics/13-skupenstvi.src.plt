set xlabel '\popi{Q/m}{kJ.kg^{-1}}' offset 0,-0.6
set ylabel '\popi{t}{\C}' offset 1

set bmargin 5

set grid

unset key

set xrange [0:3100]
set yrange [-10:110]

plot "../13-skupenstvi.src.dat" with lines lw 3
