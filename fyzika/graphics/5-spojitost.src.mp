input fks
verbatimtex
%&latex
\documentclass[9pt]{extarticle}
\usepackage[utf8]{inputenc}
\usepackage{fkssugar}
\begin{document}
etex

prologues:=3;
u:=1.1cm;
v:=0.4u;

def midpoint(expr s,e)=
	.5[s,e]
enddef;

beginfig(1);
pair A,B,C,D;

A:=(0,u);
B:=(u,u);
C:=(2u,0.5u);
D:=(4u,0.5u);

path p,q;

p := A--B{right}..C{right}--D;
q := p yscaled -1;

numeric v[];
v1 = 0.4u;
v2 = v1*((ypart(A)**2)/(ypart(C)**2));

path S[];
S1 = midpoint(A,B) shifted (-v1/2,0) -- midpoint(A,B) shifted (v1/2,0) --
	midpoint(A,B) shifted (v1/2,0) yscaled -1 -- midpoint(A,B) shifted (-v1/2,0) yscaled -1 -- cycle;
S2 = midpoint(C,D) shifted (-v2/2,0) -- midpoint(C,D) shifted (v2/2,0) --
	midpoint(C,D) shifted (v2/2,0) yscaled -1 -- midpoint(C,D) shifted (-v2/2,0) yscaled -1 -- cycle;

fill S1 withcolor (0.3,0.6,1);
fill S2 withcolor (0.3,0.6,1);

draw p; draw q;

drawarrow (xpart(midpoint(A,B))-v1/2,0) -- (xpart(midpoint(A,B))+v1/2,0);
drawarrow (xpart(midpoint(C,D))-v2/2,0) -- (xpart(midpoint(C,D))+v2/2,0);

label.lft(btex$S_1$etex, (xpart(midpoint(A,B))-v1/2,0));
label.lft(btex$S_2$etex, (xpart(midpoint(C,D))-v2/2,0));

label.bot(btex$\vect v_1$etex, (xpart(midpoint(A,B)),0));
label.bot(btex$\vect v_2$etex, (xpart(midpoint(C,D)),0));


endfig;

verbatimtex
\end{document}
etex
end
