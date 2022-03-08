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

def midpoint(expr s,e)=
	.5[s,e]
enddef;

beginfig(1);
pair A,B,P;
A:=(-2u,0);
B:=(2u,0);

draw A--B;
label.lrt(btex $\bod A$ etex,A);
label.bot(btex $\bod B$ etex,B);

pair F[];
F1 = (0,u);
F2 = (0,2u);
F3 = F1+F2;

% initial forces
drawarrow A--A+F1 withcolor red;
drawarrow B--B+F2 withcolor blue;
label.rt(btex $\vect u$ etex, midpoint(A,A+F1));
label.lft(btex $\vect v$ etex, midpoint(B,B+F2));

% inverted forces
drawarrow B--B+F1 withcolor red dashed evenly;
drawarrow A--A-F2 withcolor blue dashed evenly;

path p;
p = B+F1--A-F2;
draw p dashed evenly;

% final force
P = p intersectionpoint (A--B);
drawarrow P--P+F3;
label.lft(btex $\vect u + \vect v$ etex, midpoint(P,P+F3));

endfig;

verbatimtex
\end{document}
etex
end
