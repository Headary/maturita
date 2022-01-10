% Booleova algebra - zákony a pravidla, základní logické operace a členy, zápis
% logické funkce, minimalizace funkce. Kombinační logický systém a jeho návrh.
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
	- $\land$ přes $\lor$: $x\land(y\lor z)=(x\land y)\lor (x\land z)$
	- $\lor$ přes $\land$: $x\lor(y\land z)=(x\lor y)\land (x\lor z)$
- absorpce
	- $x\land (x\lor y) = x$
	- $x\lor (x\land y) = x$
- idempotence
	- $x\land x = x$
	- $x\lor x = x$

## Základní logické operace
- výsledkem opět výrok
- hodnota výsledku závislá na hodnotách vstupu a druhu operace

### Konjunkce / AND
- značka~$\land$
- operace pravdivá, pokud oba výroky pravdivé

|$x$|$y$|$x\land y$|
|:--:|:--:|:--:|
|0|0|0|
|0|1|0|
|1|0|0|
|1|1|1|
: Implikace

### Disjunkce / OR
- značka~$\lor$
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
\fullfig[width=0.25\textwidth]{3-not}[Člen NOT]

### AND
- realizace konjunkce
- stejné hodnoty jako konjunkce
\fullfig[width=0.25\textwidth]{3-and}[Člen AND]

### OR
- realizace disjunkce
- stejné hodnoty jako disjunkce
\fullfig[width=0.25\textwidth]{3-or}[Člen OR]

### NAND
- převrácené (znegované) AND

|$x$|$y$|NAND|
|:--:|:--:|:--:|
|0|0|1|
|0|1|1|
|1|0|1|
|1|1|0|
: NAND

\fullfig[width=0.25\textwidth]{3-nand}[Člen NAND]

### NOR
- převrácené (znegované) OR

|$x$|$y$|NOR|
|:--:|:--:|:--:|
|0|0|1|
|0|1|0|
|1|0|0|
|1|1|0|
: NOR

\fullfig[width=0.25\textwidth]{3-nor}[Člen NOR]

### XOR
- \uv{exklusive OR}
- platné, pokud pouze jeden ze členů platný

|$x$|$y$|XOR|
|:--:|:--:|:--:|
|0|0|0|
|0|1|1|
|1|0|1|
|1|1|0|
: XOR

\fullfig[width=0.25\textwidth]{3-xor}[Člen XOR]

### XNOR
- negace XOR

|$x$|$y$|XNOR|
|:--:|:--:|:--:|
|0|0|1|
|0|1|0|
|1|0|0|
|1|1|1|
: XNOR

\fullfig[width=0.25\textwidth]{3-xnor}[Člen XNOR]

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
