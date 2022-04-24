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

def vectorlength(expr vector)=
	sqrt(xpart(vector)**2 + ypart(vector)**2)
enddef;

beginfig(1);
% define constants
numeric ym[], phi[], omega[], s;
color wavecol[];

ym1 := 1;
ym2 := 1;

phi1 := 20;
phi2 := 75;

omega1 := 1;
omega2 := 1;

s:=2; % xscale of waves
maxtime:=3;

resolution:=2000;

wavecol1 := red;
wavecol2 := blue;
wavecol3 := black;

%calculate circles and vectors
pair v[], circpos;
v1 := ym1*(dir phi1)*u;
v2 := ym2*(dir phi2)*u;
v3 := v1+v2;

ylength :=max(vectorlength(v3),ym1*u,ym2*u);

circpos := (-ylength-0.5*u,0);

% draw axes
draw (0,ylength)--(0,-ylength);
draw (0,0)--(maxtime*s*u,0);

% xtics
for i=0 step u until maxtime*u:
	draw (s*i,u/10)--(s*i,-u/10);
endfor;
for i=0 step u/5 until maxtime*u:
	draw (s*i,u/20)--(s*i,-u/20);
endfor;

% ytics
for i=0 step u until ylength:
	draw (u/10,i)--(-u/10,i);
	draw (u/10,-i)--(-u/10,-i);
endfor;
for i=0 step u/5 until ylength:
	draw (u/20,i)--(-u/20,i);
	draw (u/20,-i)--(-u/20,-i);
endfor;

label.top(btex y etex, (0,ylength));
label.rt(btex t etex, (maxtime*s*u,0));

% draw circle axis
draw circpos-(ylength+0.25u,0)--circpos+(ylength+0.25u,0) dashed evenly;
draw circpos-(0,ylength+0.25u)--circpos+(0,ylength+0.25u) dashed evenly;

% connect vectors with waves
draw circpos+v1 -- (0,ym1*sind(phi1)*u) dashed evenly;
draw circpos+v2 -- (0,ym2*sind(phi2)*u) dashed evenly;
draw circpos+v3 -- (0,(ym1*sind(phi1)+ym2*sind(phi2))*u) dashed evenly;

% connect circles and waves
draw circpos+(0,-vectorlength(v1))--(maxtime*s*u,-vectorlength(v1)) dashed evenly withcolor 0.6white;
draw circpos+(0,-vectorlength(v2))--(maxtime*s*u,-vectorlength(v2)) dashed evenly withcolor 0.6white;
draw circpos+(0,-vectorlength(v3))--(maxtime*s*u,-vectorlength(v3)) dashed evenly withcolor 0.6white;

% draw waves
draw ((0,ym1*sind(phi1)*u)
	for t=0 step 1/resolution until maxtime:
		..(s*t*u,ym1*sind(omega1*t*360+phi1)*u)
	endfor) withcolor wavecol1;

draw ((0,ym2*sind(phi2)*u)
	for t=0 step 1/resolution until maxtime:
		..(s*t*u,ym2*sind(omega2*t*360+phi2)*u)
	endfor) withcolor wavecol2;

draw ((0,(ym1*sind(phi1)+ym2*sind(phi2))*u)
	for t=0 step 1/resolution until maxtime:
		..(s*t*u,(ym1*sind(omega1*t*360+phi1)+ym2*sind(omega2*t*360+phi2))*u)
	endfor) withcolor wavecol3;

% draw circles and vectors
draw fullcircle scaled (2*vectorlength(v1)) shifted circpos;
draw fullcircle scaled (2*vectorlength(v2)) shifted circpos;
draw fullcircle scaled (2*vectorlength(v3)) shifted circpos;

drawarrow circpos--circpos+v1 withcolor wavecol1;
drawarrow circpos--circpos+v2 withcolor wavecol2;
drawarrow circpos--circpos+v3 withcolor wavecol3;

endfig;
verbatimtex
\end{document}
etex
end
