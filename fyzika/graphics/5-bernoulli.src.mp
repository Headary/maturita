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
pair A[],B[],C[],D[];
numeric h;

A1:=(-0.5u,1.4u);
B1:=(u,1.4u);
C1:=(2u,0.6u);
D1:=(4u,0.6u);

A2:=(-0.5u,0u);
B2:=(u,0u);
C2:=(2u,-0.3u);
D2:=(4u,-0.3u);

h := -1u;

path p,q;

p := A1--B1{right}..C1{right}--D1;
q := A2--B2{right}..C2{right}--D2;

numeric v[];
v1 = 0.4u;
v2 = v1*((ypart(A1-A2)**2)/(ypart(C1-C2)**2));

path S[];
S1 = midpoint(A1,B1) shifted (-v1/2,0) -- midpoint(A1,B1) shifted (v1/2,0) --
	midpoint(A2,B2) shifted (v1/2,0) -- midpoint(A2,B2) shifted (-v1/2,0) -- cycle;
S2 = midpoint(C1,D1) shifted (-v2/2,0) -- midpoint(C1,D1) shifted (v2/2,0) --
	midpoint(C2,D2) shifted (v2/2,0) -- midpoint(C2,D2) shifted (-v2/2,0) -- cycle;

fill S1 withcolor (0.3,0.6,1);
fill S2 withcolor (0.3,0.6,1);

draw p; draw q;

pair LP[], RP[];

LP1 := (xpart(midpoint(A1,B1))-v1/2,ypart(midpoint(A1,A2)));
LP2 := (xpart(midpoint(A1,B1)),ypart(midpoint(A1,A2)));
LP3 := (xpart(midpoint(A1,B1))+v1/2,ypart(midpoint(A1,A2)));

RP1 := (xpart(midpoint(C1,D1))-v2/2,ypart(midpoint(C1,C2)));
RP2 := (xpart(midpoint(C1,D1)),ypart(midpoint(C1,C2)));
RP3 := (xpart(midpoint(C1,D1))+v2/2,ypart(midpoint(C1,C2)));

drawarrow LP1 -- LP3;
drawarrow RP1 -- RP3;

label.rt(btex$S_1$etex, LP3);
label.rt(btex$S_2$etex, RP3);

label.bot(btex$\vect v_1$etex, LP2);
label.bot(btex$\vect v_2$etex, RP2);

draw (xpart(A1),h)--(xpart(D1),h);
srafuj((xpart(A1),h)--(xpart(D1),h)--(xpart(D1),h-v)--(xpart(A1),h-v)--cycle, dir45, 1mm);

kota((xpart(LP2),h),LP2,btex$h_1$etex);
kota((xpart(RP1),h),RP1,btex$h_2$etex);

endfig;

verbatimtex
\end{document}
etex
end
