input fks
verbatimtex
%&latex
\documentclass[9pt]{extarticle}
\usepackage[utf8]{inputenc}
\usepackage{fkssugar}
\begin{document}
etex

prologues:=3;
u:=4.0cm;
v:=0.1u;

beginfig(1);

drawarrow (-v,0)--(u,0);
drawarrow (0,-v)--(0,u);

pair p[];
path P;
p1=(0.05u,u);
p2=(0.2u,0);
p3=(0.4u,-0.2u);
p4=(0.7u,-0.1u);
p5=(0.9u,-0.05u);

P := p1{down}..p2..p3..p4..p5;
draw P;

dotlabel.urt(btex$r_0$etex, P intersectionpoint ((0,0)--(u,0)));
label.lft(btex\popi{F}{10^{-9} N}etex, (0,u));
label.bot(btex\popi{r}{10^{-12} m}etex, (u,0));
label.llft(btex$0$etex,(0,0));

endfig;

verbatimtex
\end{document}
etex
end

