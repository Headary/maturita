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

pair FG;
FG:=(0,-u);

def uhellabel(expr bi, bm, be, d, lbl)=
    z1=unitvector(bi-bm);
    z2=unitvector(be-bm);
	z3=unitvector(z1+z2);
	label(lbl, bm+z3*(d+0.2u));
enddef;

def midpoint(expr a,b)=
	.5[a,b]
enddef;

beginfig(1);
pair l;
l := (-3u,-4u);

draw (-2u,0)--(2u,0);
srafuj((-2u,0)--(2u,0)--(2u,0.5u)--(-2u,0.5u)--cycle, dir 45, 0.2u);

draw (0,0)--l;
draw (0,0)--l xscaled -1;
draw (0,0)--(0,-abs(l)) xscaled -1 dashed evenly;

uhel(l,(0,0),l xscaled -1, abs(l));
uhel(l,(0,0),(0,-abs(l)), 1.5u);
uhellabel(l,(0,0),(0,-abs(l)), 1.5u, btex$\alpha$ etex);
uhellabel(l,(0,0),(0,-abs(l)), abs(l), btex$y$ etex);

kulicka(0.4u, l);
kulicka(0.4u, l xscaled -1);

drawdblarrow l--(0,ypart(l));
label.top(btex $y'$ etex, midpoint(l,(0,ypart(l))));

pair F[];
F1 = -unitvector(l) * abs(FG) * ypart(unitvector(l));
F2 = -unitvector(l rotated 90) * abs(FG) * xpart(unitvector(l));

drawarrow l--l+F1;
drawarrow l--l+F2;
draw l--l+F1--l+F1+F2--l+F2--cycle dashed evenly;
drawarrow l--l+FG;

label.urt(btex $F$ etex, l+F2);
label.bot(btex $F_\text{G}$ etex, l+FG);

uhel(l+F1,l,l+FG, .4u);
uhellabel(l+F1,l,l+FG, .4u, btex $\alpha$ etex);

endfig;
verbatimtex
\end{document}
etex
end
