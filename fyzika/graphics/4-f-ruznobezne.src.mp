input fks
verbatimtex
%&latex
\documentclass[9pt]{extarticle}
\usepackage[utf8]{inputenc}
\usepackage{fkssugar}
\begin{document}
etex

prologues:=3;
u:=1.2cm;
v:=0.4u;

beginfig(1);
pair A,B;

A := (0.8u,2u);
B := (2.5u,0);

draw A--A+B--B--1.2*B dashed evenly withcolor 0.5white;

drawarrow (0,0)--A withcolor red;
drawarrow (0,0)--B withcolor blue;
drawarrow (0,0)--A+B;

label.ulft(btex $\vect u$ etex, .5[(0,0),A]);
label.bot(btex $\vect v$ etex, .5[(0,0),B]);
label.top(btex $\vect u + \vect v$ etex, .5[(0,0),A+B]) rotatedaround(.5[(0,0),A+B], angle(A+B));

uhel(B,(0,0),A,v);
label(btex $\alpha$ etex, unitvector(.3[A,B])*v*1.4);
uhel(B,(0,0),A+B,1.2v);
label(btex $\alpha_{\vect u +\vect v}$ etex, unitvector(.8[A,B])*v*2.1);
uhel(A+B,B,(0,0),v);
%%label(btex $180\dg-\alpha$ etex, Bunitvector(.5[(0,0),A+B])*v);
label(btex $180\dg-\alpha$ etex, B+unitvector(.5[(0,0),A+B]-B)*v*1.7);
uhel(2*B,B,A+B,0.8v);
label(btex $\alpha$ etex, B+unitvector(.5[A,B])*v*1.4);

endfig;

verbatimtex
\end{document}
etex
end
