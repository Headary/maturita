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
pair A,B,C,D,S,E;
path box, P, Q, R;

A:=(0,u);
B:=(0.8u,0.8u);
C:=(2u,0);
D:=(1.2u,0);

% box
box = (-2u,u)--(2u,u)--(2u,-.5u)--(-2u,-.5u)--cycle;
draw box;

% outer vectors
drawarrow A--A+B withcolor red;
drawarrow C--C+D withcolor blue;

P = A--A-1.6B;
Q = C--C-2.8D;

% translation
draw P dashed evenly shifted (3bp,0);
draw Q dashed evenly shifted (3bp,0);

% intersection
S = P intersectionpoint Q;

draw S withpen pencircle scaled 0.08u;

% inner vectors
drawarrow S--S+B withcolor red;
drawarrow S--S+D withcolor blue;

label.top(btex $\vect u$ etex, .5[A,A+B]) rotatedaround(.5[A,A+B], angle(B));
label.bot(btex $\vect v$ etex, .5[C,C+D]);

label.top(btex $\vect u$ etex, .5[S,S+B]) rotatedaround(.5[S,S+B], angle(B));
label.bot(btex $\vect v$ etex, .5[S,S+D]);

% inner final vector
draw S+B -- S+B+D -- S+D dashed evenly;
drawarrow S -- S+B+D;
label.top(btex $\vect u + \vect v$ etex, .5[S,S+B+D]) rotatedaround(.5[S,S+B+D], angle(B+D));

% translation
R = S+B+D -- S+1.4*(B+D);
draw R dashed evenly;

E = R intersectionpoint box;
draw E withpen pencircle scaled 0.08u;

% outer final vector
drawarrow E -- E+B+D;
label.top(btex $\vect u + \vect v$ etex, .5[E,E+B+D]) rotatedaround(.5[E,E+B+D], angle(B+D));

endfig;

verbatimtex
\end{document}
etex
end
