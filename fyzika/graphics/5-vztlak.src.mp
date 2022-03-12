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

w:=1.5u;

def midpoint(expr s,e)=
	.5[s,e]
enddef;

beginfig(1);
path p,q;

h:=3.5u;

p := (-w,v) -- (-w,-h+v){down} .. {right}(-w+v,-h) -- (w-v,-h){right} .. {up}(w,-h+v) -- (w,v);
q := (-0.5w,-0.5u) -- (0.5w,-0.5u) -- (0.5w,-2u) -- (-0.5w,-2u) --cycle;

fill buildcycle(p,(-w,0)--(w,0)) withcolor (0.3,0.6,1);
fill q withcolor 0.8white;

draw p; draw q;

drawarrow (0,0)--(0,-0.5u);
drawarrow (0,-3u)--(0,-2u);

label.lft(btex$F'$etex, midpoint((0,0),(0,-0.5u)));
label.lft(btex$F''$etex, midpoint((0,-3u),(0,-2u)));
label.top(btex$S$etex, 0.75[(-0.5w,-2u),(0.5w,-2u)]);

kota((w,0),(w,-0.5u),btex $h'$ etex);
kota((w,-0.5u),(w,-2u),btex $h$ etex);
kota((w+5mm,0),(w+5mm,-2u),btex $h''$ etex);

endfig;

verbatimtex
\end{document}
etex
end
