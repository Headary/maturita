input fks
verbatimtex
%&latex
\documentclass[9pt]{extarticle}
\usepackage[utf8]{inputenc}
\usepackage{fkssugar}
\begin{document}
etex

prologues:=3;
u:=1cm;
v:=0.2u;

beginfig(1);
pair A,B,C;

A := (-1u,0);
B := (2.5u,0);
C := (xpart(A+B), -v);

draw (0,3v)--(0,-3v) dashed evenly scaled 0.7;
drawarrow (0,2v)--A+(0,2v) withcolor red;
drawarrow A+(0,v)--A+B+(0,v) withcolor blue;
drawarrow (0,-v)--C;

label.top(btex $\vect u$ etex, .5[(0,2v),A+(0,2v)]);
label.top(btex $\vect v$ etex, .5[A+(0,v),A+B+(0,v)]);
label.bot(btex $\vect u+\vect v$ etex, .5[(0,-v),C]);

endfig;

verbatimtex
\end{document}
etex
end
