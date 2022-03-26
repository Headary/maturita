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

drawarrow (0,0)--(u,0);
drawarrow (0,0)--(0,u);

draw (0.05u,u){down}
	..(0.4u,-0.2u) .. controls (0.6u,-0.2u) and (0.35u,-0.2u)
	..{dir 10}(u,-0.05u);

endfig;

verbatimtex
\end{document}
etex
end

