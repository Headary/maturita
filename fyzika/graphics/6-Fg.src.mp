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

def midpoint(expr s,e)=
	.5[s,e]
enddef;

beginfig(1);
numeric m[], r, F;

m1 = 3u;
m2 = 2u;
r=5u;

F = 2u;

draw fullcircle scaled m1;
draw fullcircle scaled m2 shifted (r,0);

draw (0,0)--(r,0) dashed evenly;

drawarrow (0,0)--(F,0);
drawarrow (r,0)--(r-F,0);

dotlabel.top(btex$m_1$etex, (0,0));
dotlabel.top(btex$m_2$etex, (r,0));

label.bot(btex$\vect F_{g12}$etex, (F/2,0));
label.bot(btex$\vect F_{g21}$etex, .65[(r,0),(r-F,0)]);

kota((5u,0),(0,0),btex$r$etex);

endfig;

verbatimtex
\end{document}
etex
end
