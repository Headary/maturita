input fks
verbatimtex
%&latex
\documentclass[9pt]{extarticle}
\usepackage[utf8]{inputenc}
\usepackage{fkssugar}
\begin{document}
etex

prologues:=3;
u:=0.5cm;
v:=0.3u;

beginfig(1);
for i=0 step 1 until 10:
	for j=0 step 1 until 10:
		if (i = 2) and (j = 8):
		elseif (i = 8) and (j = 2):
		elseif (i = 2) and (j = 4):
		else:
			draw fullcircle scaled v shifted (i*u,j*u);
		fi
	endfor;
endfor;
draw fullcircle scaled v shifted (8.5u,3.5u);
draw fullcircle scaled v shifted (2.5u,1.5u);
draw (8u,8u) withpen pencircle scaled 1.5v;
draw (2u,4u) withpen pencircle scaled 0.5v;

% frekel
drawarrow (11u,3u)..(10u,3.5u)..(8.5u+v/2,3.5u+v/2);
drawarrow (11u,2.5u)..(10u,1.5u)..(8u,2u);
label.rt(btex Frekelova porucha etex, (11u,2.75u));

% substituce
drawarrow (11u,8u)..(10u,8.5u)..(8u+v,8u+v);
label.rt(btex Substituce větší částicí etex, (11u,8u));
drawarrow (-1u,4u)..(0u,4.5u)..(2u-v,4u+v);
label.lft(btex Substituce menší částicí etex, (-1u,4u));

% navíc
drawarrow (-1u,1u)..(0u,1.5u)..(2.5u-v,1.5u);
label.lft(btex Intersticiální poloha etex, (-1u,1u));

% gone
drawarrow (-1u,8u)..(0u,8.5u)..(2u-v,8u+v);
label.lft(btex Vakance etex, (-1u,8u));


endfig;
verbatimtex
\end{document}
etex
end
