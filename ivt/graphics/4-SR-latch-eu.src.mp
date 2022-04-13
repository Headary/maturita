input fks
input ../logic-gates
verbatimtex
%&latex
\documentclass[9pt]{extarticle}
\usepackage[utf8]{inputenc}
\usepackage{fkssugar}
\begin{document}
etex

prologues:=3;
u:=1cm;
v:=0.3u;

beginfig(1);

gs := u;
SRx := -2u;

%pickup pencircle scaled 1.2pt;

path SR, con, Q;
pair X;

SR := (SRx,u+gs/4) -- (0,u+gs/4);
con := (0,u-gs/4) -- (SRx/2,u-gs/4) -- (SRx/2,u-gs*3/4) -- (u*3/2,-u+gs/2) -- (u*3/2,-u);
Q := (0,u)--(-SRx,u);

draw SR; draw SR yscaled -1;
draw con; draw con yscaled -1;
draw Q; draw Q yscaled -1;

X := (u*3/2, -u);

draw X withpen pencircle scaled 4pt;
draw X yscaled -1 withpen pencircle scaled 4pt;

norgate((0,u),gs);
norgate((0,-u),gs);

dotlabel.lft(btex R etex, (SRx,u+gs/4));
dotlabel.lft(btex S etex, (SRx,-u-gs/4));
dotlabel.rt(btex Q etex, (-SRx,u));
dotlabel.rt(btex Q' etex, (-SRx,-u));

endfig;
verbatimtex
\end{document}
etex
end
