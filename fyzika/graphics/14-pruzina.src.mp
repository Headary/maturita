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

l := 5u;
dl := u;
ym := u;
n:=10;
w := 0.8u;

def pruzina(expr pocatek,konec,sirka,pocet)=
	draw((0,0)
	for i=1 step .2 until (10+20*pocet):
		%..(10+i-10*cosd(18i),sind(18i))
		..(10+i-10*cosd(18i),sind(18i))
		endfor
	) xscaled(length(pocatek-konec)/(30+20*pocet))
	yscaled (sirka/2)
	rotated angle(konec-pocatek) shifted pocatek;
enddef;

def zavazi(expr wx,wy,bod)=
	path p;
	p:= (xpart(bod)-wx/2,ypart(bod)-wy/2)--
		(xpart(bod)+wx/2,ypart(bod)-wy/2)--
		(xpart(bod)+wx/2,ypart(bod)+wy/2)--
		(xpart(bod)-wx/2,ypart(bod)+wy/2)--cycle;
	fill p withcolor .8white;
	draw p;
enddef;

def forces(expr p,g,bod)=
	drawarrow bod--bod+p withcolor red;
	drawarrow bod--bod+g withcolor red;
	drawarrow bod--bod+p+g withcolor blue;
enddef;

def forcelabels(expr p,g,bod)=
	forces(p,g,bod);
	label.rt(btex $F_\text{p}$ etex, 0.5[bod,bod+p] + (0.35u,0)) withcolor red;
	label.rt(btex $F_\text{G}$ etex, 0.5[bod,bod+g] + (0.35u,0)) withcolor red;
	label.rt(btex $F$ etex, 0.5[bod,bod+p+g] + (0.35u,0)) withcolor blue;
enddef;

beginfig(1);
draw (-u,0)--(7u,0);
srafuj((-u,0)--(7u,0)--(7u,0.5u)--(-u,0.5u)--cycle, dir 45, 0.2u);

% bez závaží
pruzina((0,0),(0,-l),w,n);
kota((0,0),(0,-l),btex $l$ etex);

% rovnovážná poloha
draw (2u,-l-dl)--(6u,-l-dl) dashed evenly;
pruzina((2u,0),(2u,-l-dl),w,n);
kota((2u,0),(2u,-l),btex $l$ etex);
kota((2u,-l),(2u,-l-dl),btex $\Delta l$ etex);
zavazi(0.4u, 0.3u, (2u,-l-dl));
forces((0,u),(0,-u),(2u,-l-dl));

% výchylení
pruzina((4u,0),(4u,-l-dl-ym),w,n);
kota((4u,-l-dl-ym),(4u,-l-dl),btex $y$ etex);
zavazi(0.4u, 0.3u, (4u,-l-dl-ym));
forcelabels((0,1.55u),(0,-u),(4u,-l-dl-ym));

pruzina((6u,0),(6u,-l-dl+ym),w,n);
kota((6u,-l-dl),(6u,-l-dl+ym),btex $y$ etex);
zavazi(0.4u, 0.3u, (6u,-l-dl+ym));
forces((0,0.45u),(0,-u),(6u,-l-dl+ym));
endfig;
verbatimtex
\end{document}
etex
end
