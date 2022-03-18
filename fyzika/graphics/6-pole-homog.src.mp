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
v:=0.6cm;

beginfig(1);

l:=5u;

draw (0,0)--(l,0);
srafuj((0,0)--(l,0)--(l,-0.3u)--(0,-0.3u)--cycle,dir 45,3mm);

for i=0 step u until l:
	for j=1 step 1 until 3:
		drawarrow (i,2*j*v)--(i,(2*j-1)*v);
	endfor
endfor

for i=u/2 step u until l:
	for j=1 step 1 until 2:
		drawarrow (i,(2*j+1)*v)--(i,2*j*v);
	endfor
endfor

endfig;

verbatimtex
\end{document}
etex
end
