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

beginfig(1);
numeric l,h,w[], F[];
path p;

l = 1*u;
h = 1.7*u;
w1 = u;
w2 = 2u;
w3 = v;

F1 = 0.5u;
F2 = F1 * (w2*w2/(w1*w1));

p = (-l,0)--(-l,-h)--(l,-h)--(l,0)--
	(l+w2,0)--(l+w2,-h-w3)--(-l-w1,-h-w3)--(-l-w1,0)--cycle;

currentpen := currentpen scaled 1.3;

fill p withcolor (0.3,0.6,1);

draw p;
draw (-l-w1,0)--(-l-w1,v);
draw (-l,0)--(-l,v);
draw (l+w2,0)--(l+w2,v);
draw (l,0)--(l,v);

drawarrow (-l-w1/2,0)--(-l-w1/2,-F1);
drawarrow (l+w2/2,0)--(l+w2/2,F2);

label.urt(btex$S_1$etex, (-l-w1,0));
label.llft(btex$S_2$etex, (l+w2,0));

label.rt(btex$F_1$etex,(-l-w1/2,-F1/2));
label.lft(btex$F_2$etex,(l+w2/2,F2/2));

endfig;

verbatimtex
\end{document}
etex
end
