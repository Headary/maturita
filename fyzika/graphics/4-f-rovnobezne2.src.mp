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
v:=0.4u;

def labelarrowtop(expr s,e,lbl) =
	drawarrow s -- e;
	label.top(lbl, .5[s,e]) rotatedaround(.5[s,e], angle(e-s));
enddef;

def labelarrowbot(expr s,e,lbl) =
	drawarrow s -- e;
	label.bot(lbl, .5[s,e]) rotatedaround(.5[s,e], angle(e-s));
enddef;

beginfig(1);

labelarrowtop((0,0), (2u,-u), btex $\vect u$ etex);
labelarrowbot((0,0), (2u,u), btex $\vect u$ etex);

endfig;

verbatimtex
\end{document}
etex
end
