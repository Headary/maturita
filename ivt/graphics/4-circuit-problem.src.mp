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

def nandasnot (expr pos, scale)=	
	draw (xpart(pos)-scale/2,ypart(pos)+scale/6) -- (xpart(pos)-scale*3/4,ypart(pos)+scale/6) --
	(xpart(pos)-scale*3/4,ypart(pos)-scale/6) -- (xpart(pos)-scale/2,ypart(pos)-scale/6);
	draw (xpart(pos)-scale*3/4,ypart(pos)) -- (xpart(pos)-scale,ypart(pos));
	nandgate(pos,scale);
enddef;

beginfig(1);

picture gates[], connections;

connections := image(
	draw (-u,2u)--(u,2u)--(u,0.4u)--(2u,0.4u);
	draw (-u,1u)--(0.5u,1u)--(0.5u,0.15u)--(2u,0.15u);
	draw (-u,-2u)--(u,-2u)--(u,-0.4u)--(2u,-0.4u);
	draw (-u,-1u)--(0.5u,-1u)--(0.5u,-0.15u)--(2u,-0.15u);
	draw (2u,0) -- (3u,0);

	dotlabel.lft(btex A etex,(-u,2u));
	dotlabel.lft(btex B etex,(-u,1u));
	dotlabel.lft(btex C etex,(-u,-1u));
	dotlabel.lft(btex D etex,(-u,-2u));
	dotlabel.rt(btex Y etex, (3u,0));
);

gates1 := image(
	andgate((2u,0),u);
	notgate((0,2u),u);
	notgate((0,-2u),u);
);

gates2 := image(
	nandgate((2u,0),u);
	notgate((0,2u),u);
	notgate((0,-2u),u);

	notsymbol((2u-0.6u,0.15u),u);
	notsymbol((2u-0.6u,0.4u),u);
	notsymbol((2u-0.6u,-0.15u),u);
	notsymbol((2u-0.6u,-0.4u),u);
);

gates3 := image(
	nandgate((2u,0),u);
	notgate((-0.25u,1u),0.8u);
	notgate((-0.25u,-1u),0.8u);
);

gates4 := image(
	draw (-u,2u)--(u,2u)--(u,0.4u)--(2u,0.4u);
	draw (-0.5u,1u)--(0.5u,1u)--(0.5u,0.15u)--(2u,0.15u);
	draw (-0.5u,-1u)--(0.5u,-1u)--(0.5u,-0.15u)--(2u,-0.15u);
	draw (-u,-2u)--(u,-2u)--(u,-0.4u)--(2u,-0.4u);
	draw (2u,0) -- (3u,0);

	dotlabel.lft(btex A etex,(-u,2u));
	dotlabel.lft(btex B etex,(-1.5u,1u));
	dotlabel.lft(btex C etex,(-1.5u,-1u));
	dotlabel.lft(btex D etex,(-u,-2u));
	dotlabel.rt(btex Y etex, (3u,0));

	nandgate((2u,0),u);
	nandasnot((-0.5u,1u),u);
	nandasnot((-0.5u,-1u),u);
);

draw connections;
draw gates1;

draw connections shifted (6u,0);
draw gates2 shifted (6u,0);

draw connections shifted (0,-6u);
draw gates3 shifted (0,-6u);

draw gates4 shifted (6.25u,-6u);

drawarrow (3.5u,0)--(4.5u,0);
drawarrow (4.5u,-6u)--(3.5u,-6u);
drawarrow (6u,-2.8u)--(6u,-3.7u);

endfig;
verbatimtex
\end{document}
etex
end
