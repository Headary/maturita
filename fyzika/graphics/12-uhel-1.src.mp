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

beginfig(1);
path p;
pair B, theta;
l = 0.8u;
B = (0,1.5u);

p := B..{right}(l,u)..{right}(2u,u);
theta := 0.8u*unitvector(direction 0 of p);

fill buildcycle(p, (0,2u)--(0,0)--(2u,0)--(2u,2u)) withcolor (0.494,0.784,0.929);

draw (0,2u)--(0,0)--(2u,0);
draw p;
drawarrow B--B+theta;

uhel((0,0),B,B+theta,0.4u);
label(btex $\theta$ etex, B+unitvector(0.5[unitvector(theta),unitvector(-B)])*0.55u);

endfig;
verbatimtex
\end{document}
etex
end
