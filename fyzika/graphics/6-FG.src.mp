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

beginfig(1);
path earth, radius;
r:=5u;
h:=3.8u;

earth = subpath(-0.2,2.2) of fullcircle scaled 2r;
radius = (0,h)--(r,h) cutafter earth;

pair S;
S := radius intersectionpoint earth;

axis((0,0),.15r,r,.15r,r);
draw earth;
draw radius dashed evenly;
label.bot(btex$R_\text{Z}$etex,(r/2,0));
label.top(btex$r$etex, .5[(0,h),S]);

draw (0,r)--(0,1.2r) dashed evenly;
drawarrow (-.1r,1.15r){down}..{right}(0,1.1r)..{up}(.1r,1.15r)..{left}(0,1.2r);
label.rt(btex$\omega$etex,(.1r,1.15r));

% forces
pair Fg, Fo, FG;
Fg := -S*0.7;
Fo := (1.5u,0);
FG := Fg + Fo;

draw (0,0)--S dashed evenly;
drawarrow S--S+Fg; label.ulft(btex$\vect F_\text{g}$etex, .7[S,S+Fg]);
drawarrow S--S+Fo; label.top(btex$\vect F_\text{o}$etex, .5[S,S+Fo]);
drawarrow S--S+FG; label.ulft(btex$\vect F_\text{G}$etex, .8[S,S+FG]);
draw S+Fg--S+FG--S+Fo dashed evenly;

uhel((0,h),S,(0,0),1.1u);
label(btex$\phi$etex,S-.5[unitvector((r,0)),unitvector(S)]*1.5u);

endfig;

verbatimtex
\end{document}
etex
end
