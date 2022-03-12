input fks
verbatimtex
%&latex
\documentclass[9pt]{extarticle}
\usepackage[utf8]{inputenc}
\usepackage{fkssugar}
\begin{document}
etex

prologues:=3;
u:=1.2cm;

beginfig(1);
pair A,B,C,D,S,F[];
path p;

A := (0.3u,0.2u);
B := (1u,0.7u);
C := (3u,0);
D := (1u,0);

S := (1.5u,0.05u);
F1 := (0.7u,0);
F2 := (0,1.4u);

p := A..B{right}..{dir -40}C{left}..{dir 185}D..cycle;

draw p rotated -10;
drawarrow S--S+F1;
drawarrow S--S+F2;
drawarrow S--S+F1+F2;

draw S+F1--S+F1+F2--S+F2 dashed evenly withcolor 0.7white;

label.bot(btex $\vect F_{\text{o}}$ etex,0.5[S,S+F1]);
label.lft(btex $\vect F_{\text{vz}}$ etex,0.6[S,S+F2]);
label.ulft(btex $\vect F$ etex,0.5[S,S+F1+F2]);

endfig;

verbatimtex
\end{document}
etex
end
