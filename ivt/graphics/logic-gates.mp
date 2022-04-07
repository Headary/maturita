def gate (expr pos,scale)=
	xp := xpart(pos);
	yp := ypart(pos);
	path p;
	p := (xp-scale/2,yp+scale/2)--(xp+scale/2,yp+scale/2)--(xp+scale/2,yp-scale/2)
		--(xp-scale/2,yp-scale/2)--cycle;
	fill p withcolor white;
	draw p;
enddef;

def not (expr pos,scale,rot)=
	path p;
	pair shift;
	shift := pos + rot*(scale/2+0.1scale);
	notsymbol(shift,scale)	
enddef;

def notsymbol (expr pos, size)=
	p := fullcircle scaled 0.2size shifted pos;
	fill p withcolor white;
	draw p;
enddef;

def andgate(expr pos,scale)=
	gate(pos,scale);
	label(btex $\&$ etex, pos);
enddef;

def orgate(expr pos,scale)=
	gate(pos,scale);
	label(btex $\geq 1$ etex, pos);
enddef;

def xorgate(expr pos,scale)=
	gate(pos,scale);
	label(btex $= 1$ etex, pos);
enddef;

def notgaterot(expr pos,scale,rot)=
	gate(pos,scale);
	not(pos,scale,rot);
	label(btex $1$ etex, pos);
enddef;

def nandgaterot(expr pos,scale,rot)=
	gate(pos,scale);
	not(pos,scale,rot);
	label(btex $\&$ etex, pos);
enddef;

def norgaterot(expr pos,scale,rot)=
	gate(pos,scale);
	not(pos,scale,rot);
	label(btex $\geq 1$ etex, pos);
enddef;

def xnorgaterot(expr pos,scale,rot)=
	gate(pos,scale);
	not(pos,scale,rot);
	label(btex $= 1$ etex, pos);
enddef;

def notgate(expr pos,scale)=
	notgaterot(pos,scale,dir 0);
enddef;
def nandgate(expr pos,scale)=
	nandgaterot(pos,scale,dir 0);
enddef;
def norgate(expr pos,scale)=
	norgaterot(pos,scale,dir 0);
enddef;
def xnorgate(expr pos,scale)=
	xnorgaterot(pos,scale,dir 0);
enddef;
