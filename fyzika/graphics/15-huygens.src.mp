input fks
verbatimtex
%&latex
\documentclass[9pt]{extarticle}
\usepackage[utf8]{inputenc}
\usepackage{fkssugar}
\begin{document}
etex

prologues:=3;
u:=0.7cm;

beginfig(1);
r:=4u;
dr:=0.5u;

draw halfcircle rotated 180 scaled 2r;
draw halfcircle rotated 180 scaled 2(r+dr);

for i=180+45 step 5 until 360-45:
	draw fullcircle scaled 2dr shifted (r*cosd(i),r*sind(i));
endfor

drawarrow (0,0)--(0,-r/3);
label.rt(btex $\vect{v}$ etex, .5[(0,0),(0,-r/2)]);
kota((-r,0),(0,0),btex $r$ etex);
kota((-r-dr,0),(-r,0),btex $\Delta r$ etex);

draw (-u/10,0)--(u/10,0);
draw (0,-u/10)--(0,u/10);
label.urt(btex $Z$ etex, (0,0));
label.urt(btex $V_1$ etex, (r*cosd(180+35),r*sind(180+35)));
label.llft(btex $V_2$ etex, ((dr+r)*cosd(180+45),(dr+r)*sind(180+45)));

endfig;
verbatimtex
\end{document}
etex
end
