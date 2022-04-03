input fks
verbatimtex
%&latex
\documentclass[9pt]{extarticle}
\usepackage[utf8]{inputenc}
\usepackage{fkssugar}
\begin{document}
etex

prologues:=3;
u:=0.8cm;

sx:=12.7u;
sy:=7.7u;

def midpointoncurve(expr p)=
	point arctime .5*arclength p of p of p
enddef;

beginfig(1);


path p[], q[];

p1 = (.15sx,.8sy)..(.5sx,.58sy)..(.8sx,.5sy);
p2 = p1 yscaled 0.7 shifted (0,-0.8u);
p3 = (.25sx,.9sy)..(.35sx,.35sy)..(.45sx,.1sy);
p4 = p3 xscaled 1.5 shifted (u,0);

q1 = p1 cutbefore p3 cutafter p4;
q2 = p4 cutbefore p1 cutafter p2;
q3 = p2 cutbefore p3 cutafter p4;
q4 = p3 cutbefore p1 cutafter p2;

pair a,b,c,d;
a = p1 intersectionpoint p3;
b = p1 intersectionpoint p4;
c = p2 intersectionpoint p4;
d = p2 intersectionpoint p3;

% draw border
draw (0,0)--(0,sy)--(sx,sy)--(sx,0)--cycle;
% draw graph labels
label.bot(btex$V$etex, .5[(0,0),(sx,0)] shifted (0,-.5u));
label.lft(btex$p$etex, .5[(0,0),(0,sy)] shifted (-.5u,0));

% dashed lines
draw p1 dashed evenly;
draw p2 dashed evenly;
draw p3 dashed evenly;
draw p4 dashed evenly;

% normal lines
draw q1;
draw q2;
draw q3;
draw q4;

% arrows
drawarrow q1 cutafter midpointoncurve(q1);
drawarrow q2 cutafter midpointoncurve(q2);
drawarrow reverse q3 cutafter midpointoncurve(q3);
drawarrow reverse q4 cutafter midpointoncurve(q4);

% point labels
dotlabel.urt(btex$\bod A$etex, a);
dotlabel.urt(btex$\bod B$etex, b);
dotlabel.urt(btex$\bod C$etex, c);
dotlabel.llft(btex$\bod D$etex, d);

% path labels
label.top(btex$(1)$etex,midpointoncurve(q1));
label.rt(btex$(2)$etex,midpointoncurve(q2));
label.bot(btex$(3)$etex,midpointoncurve(q3));
label.lft(btex$(4)$etex,midpointoncurve(q4));

% infill
srafuj(buildcycle(p1,p3,p2,p4),dir 45,2mm);

endfig;
verbatimtex
\end{document}
etex
end
