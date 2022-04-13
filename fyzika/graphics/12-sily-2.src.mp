input fks
verbatimtex
%&latex
\documentclass[9pt]{extarticle}
\usepackage[utf8]{inputenc}
\usepackage{fkssugar}
\begin{document}
etex

prologues:=3;
u:=2cm;

def midpoint(expr s,e)=
	.5[s,e]
enddef;

beginfig(1);
path p, box;
pair B, F[];
l = 0.8u;
B = (0,0.5u);

p := B..{right}(l,u)..{right}(2u,u);
box := (0,2u)--(0,0.0u)--(2u,0.0u);
fill buildcycle(p, box--(2u,2u)) withcolor (0.494,0.784,0.929);

F1 = (-0.3u,0);
F2 = (0.5u,-0.5u);
F3 = F1+F2;

draw box;
draw p;

draw fullcircle scaled 0.35u shifted B dashed evenly;
draw B+F1--B+F3--B+F2 dashed evenly;
drawarrow B--B+F1;
drawarrow B--B+F2;
drawarrow B--B+F3;

label.ulft(btex $\vect F_\text{N}$ etex, midpoint(B,B+F1));
label.urt(btex $\vect F_\text{k}$ etex, midpoint(B,B+F2));
label.urt(btex $\vect F$ etex, B+F3);

endfig;
verbatimtex
\end{document}
etex
end
