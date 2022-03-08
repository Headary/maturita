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
pair A,B,O,P;
A:=(-2u,0);
B:=(2u,0);

label.top(btex $\bod A$ etex,A);
label.bot(btex $\bod B$ etex,B);

pair F[], Fp[], Fx;
F1 = (0,-u);
F2 = (0,2u);
F3 = F1+F2;
Fx = (1.5u,0);

% initial forces
drawarrow A--A+F1 withcolor red;
drawarrow B--B+F2 withcolor blue;
label.rt(btex $\vect u$ etex, midpoint(A,A+F1));
label.lft(btex $\vect v$ etex, midpoint(B,B+F2));

% Fp
Fp1 = F1-Fx;
Fp2 = F2+Fx;
drawarrow A -- A+Fp1 withcolor 0.5red;
drawarrow B -- B+Fp2 withcolor 0.5blue;
label.bot(btex $\vect u_1$ etex, midpoint(A,A+Fp1)) rotatedaround(midpoint(A,A+Fp1),angle(-Fp1));
label.bot(btex $\vect v_1$ etex, midpoint(B,B+Fp2)) rotatedaround(midpoint(B,B+Fp2),angle(Fp2));

% Fp dotted
draw A-Fx -- A+Fp1 -- A+F1 dashed evenly;
draw B+Fx -- B+Fp2 -- B+F2 dashed evenly;

% find intersection
path p[];
p1 = A--A-6*Fp1;
p2 = B+Fp2--B+3*Fp2;

draw p1 dashed evenly withcolor 0.5red;
draw p2 dashed evenly withcolor 0.5blue;

P = p1 intersectionpoint p2;

% final force root
O = (xpart(P),0);
draw A--O+(v,0);
draw P -- O dashed evenly;

label.bot(btex $\bod O$ etex,O);
dotlabel.top(btex $\bod P$ etex,P);

% sideways forces
drawarrow A--A-Fx withcolor 0.4green;
drawarrow B--B+Fx withcolor 0.4green;
label.top(btex $\vect u_{1_x}$ etex, midpoint(A-Fx,A));
label.bot(btex $\vect v_{1_x}$ etex, midpoint(B+Fx,B));

% final force
drawarrow O -- O+F3;
label.lft(btex $\vect u+\vect v$ etex, midpoint(O,O+F3));

endfig;

verbatimtex
\end{document}
etex
end
