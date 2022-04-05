% Booleova algebra - zákony a pravidla, základní logické operace a členy, zápis
% logické funkce, minimalizace funkce. Kombinační logický systém a jeho návrh.

\newcommand\logicgates[2]{
	\begin{figure}[htp]
		\centering
		\subfloat[Člen #1 -- EU/IEC]{\includegraphics[height=1.5cm]{3-#2-eu}}
		\qquad
		\subfloat[Člen #1 -- US]{\includegraphics[height=1.5cm]{3-#2-us}}
	\end{figure}
}

\newcommand\logicgatestable[6]{
	\begin{figure}[htp]
		\centering
		\subfloat[Člen #1 -- EU/IEC]{\includegraphics[height=1.5cm]{3-#2-eu}}
		\qquad
		\subfloat[Člen #1 -- US]{\includegraphics[height=1.5cm]{3-#2-us}}
		\qquad
		\subfloat{
			\begin{tabular}{ccc}
			\toprule
				$x$ & $y$ & #1\\\\
			\midrule
				0&0&#3\\\\
				0&1&#4\\\\
				1&0&#5\\\\
				1&1&#6\\\\
			\bottomrule
			\end{tabular}
		}
	\end{figure}
}

\setcounter{section}{2}
# Booleova algebra
- algebraická struktura se dvěma binárními a jednou unární operací
- zobecnění vlastností množinových a logických operací
- dvouprvková Booleova algebra
	- reprezentace pravdivostních hodnot a logických hodnot
- hodnoty proměnných -- pravda/lež, true/false, 1/0

## Zákony a pravidla
- asociativita
	- pro $\land$: $(x\land y)\land z = x\land (y\land z)$
	- pro $\lor$: $(x\lor y)\lor z = x\lor (y\lor z)$
- komutativnost
	- pro $\land$: $x\land y = y\land x$
	- pro $\lor$: $x\lor y = y\lor x$
- identita -- vrácení původní hodnoty
	- pro $\land$: $x\land 1 = x$
	- pro $\lor$: $x\lor 0 = x$
- anihilace
	- pro $\land$: $x\land 0 = 0$
	- pro $\lor$: $x\lor 1 = 1$
- distributivita
	- $\land$ přes $\lor$ (dva zápisy):
		- $x\land(y\lor z)=(x\land y)\lor (x\land z)$
		- $x\*(y+z)=(x \* y)+(x \* z)$
	- $\lor$ přes $\land$ (dva zápisy):
		- $x\lor(y\land z)=(x\lor y)\land (x\lor z)$
		- $x+(y\*z)=(x+y)\*(x+z)$
- absorpce
	- $x\land (x\lor y) = x$
	- $x\lor (x\land y) = x$
- idempotence
	- $x\land x = x$
	- $x\lor x = x$
- De Morganovo pravidlo (pravidla o vytvoření negace)
	- $\neg(x\lor y\lor z) = \neg x \land \neg y \land \neg z$
	- $\neg(x\land y\land z) = \neg x \lor \neg y \lor \neg z$

## Základní logické operace
- výsledkem opět výrok
- hodnota výsledku závislá na hodnotách vstupu a druhu operace

### Konjunkce / AND
- značka~$\land$, nebo taky $\cdot$
- operace pravdivá, pokud oba výroky pravdivé

|$x$|$y$|$x\land y$|
|:--:|:--:|:--:|
|0|0|0|
|0|1|0|
|1|0|0|
|1|1|1|
: Implikace

### Disjunkce / OR
- značka~$\lor$, nebo taky $+$
- operace pravdivá, pokud alespoň jeden výrok pravdivý

|$x$|$y$|$x\lor y$|
|:--:|:--:|:--:|
|0|0|0|
|0|1|1|
|1|0|1|
|1|1|1|
: Disjunkce

### Implikace
- značka~$\Rightarrow$
- $x$ implikuje $y$, pokud z $x$ nutně vyplývá $y$ nebo je $y$ již v $x$ zahrnuto

|$x$|$y$|$x\Rightarrow y$|
|:--:|:--:|:--:|
|0|0|1|
|0|1|1|
|1|0|0|
|1|1|1|
: Implikace

### Ekvivalence
- značka~$\Leftrightarrow$
- $x$ a $y$ platí nutně zároveň

|$x$|$y$|$x\Leftrightarrow y$|
|:--:|:--:|:--:|
|0|0|1|
|0|1|0|
|1|0|0|
|1|1|1|
: Ekvivalence

### Negace / NOT
- značka~$\neg$
- hodnota operace opačná hodnotě výroku

|$x$|$\neg x$|
|:--:|:--:|
|0|1|
|1|0|
: Negace

## Základní logické členy
- \uv{hradla}
- prvek logických/elektrických obvodů
- vyčíslení logické funkce
- pomocí AND, OR a NOT možno sestavit jakýkoliv obvod

### NOT
- realizace negace
- stejné hodnoty jako negace

\logicgates{NOT}{not}

### AND
- realizace konjunkce
- stejné hodnoty jako konjunkce

\logicgates{AND}{and}

### OR
- realizace disjunkce
- stejné hodnoty jako disjunkce

\logicgates{OR}{or}

### NAND
- převrácené (znegované) AND

\logicgatestable{NAND}{nand}{1}{1}{1}{0}

### NOR
- převrácené (znegované) OR

\logicgatestable{NOR}{nor}{1}{0}{0}{0}

### XOR
- \uv{exklusive OR}
- platné, pokud pouze jeden ze členů platný

\logicgatestable{XOR}{xor}{0}{1}{1}{0}

### XNOR
- negace XOR

\logicgatestable{XNOR}{xnor}{1}{0}{0}{1}

% TODO: Logické funkce
## Logická funkce
- funkce přijímající pravdivostní hodnoty jako vstup
- výstup také pravdivostní hodnota
- deterministická

### Minimalizace logické funkce
- prováděna pomocí pravidel boolenové algebry
- užitečné pro zmenšení obvodu
\eq[m]{
(A \lor B) \land (A \lor C) &= A \lor (B \land C) \\\\
(A \land B) \lor (A \land C) &= A \land (B \lor C)\\\\
\\\\
A \lor (A \land B) &= A \\\\
A \land (A \lor B) &= A \\\\
\\\\
A \lor (\lnot A \land B) &= A \lor B \\\\
A \land(\lnot A \lor B) &= A \land B \\\\
\\\\
(A \lor B)\land(\lnot A \lor B)&=B \\\\
(A \land B) \lor (\lnot A \land B)&=B \\\\
\\\\
(A \land B) \lor (\lnot A \land C) \lor (B \land C) &= (A \land B) \lor (\lnot A \land C) \\\\
(A \lor B) \land (\lnot A \lor C) \land (B \lor C) &= (A \lor B) \land (\lnot A \lor C) \\\\
}

## Kombinační obvod
- realizace logické funkce
- nemá paměť
- v počítači provádí boolenovou algebru na vstupních signálech a uložených datech
	- např. ALU (arithmetic logic unit)
- stavba na základě matematické funkce z logických členů
