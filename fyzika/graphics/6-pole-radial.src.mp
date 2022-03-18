input fks
verbatimtex
%&latex
\documentclass[9pt]{extarticle}
\usepackage[utf8]{inputenc}
\usepackage{fkssugar}
\begin{document}
etex

prologues:=3;
u:=1.0cm;

beginfig(1);

r:=1.0u;

dotlabel.llft(btex$M$etex, (0,0));
draw fullcircle scaled 2r;
draw fullcircle scaled 4r dashed evenly withpen pencircle scaled 0.2bp withcolor 0.8white;
draw fullcircle scaled 5r dashed evenly withpen pencircle scaled 0.2bp withcolor 0.8white;

for i=0 step 30 until 360:
	drawarrow (dir i)*2r -- (dir i)*1.2r;
	drawarrow (dir (i+15))*2.5r -- (dir (i+15))*1.9r;
endfor

endfig;

verbatimtex
\end{document}
etex
end
