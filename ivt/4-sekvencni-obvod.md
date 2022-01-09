\setcounter{section}{3}
# Sekvenční logický systém a jeho návrh, synchronní klopní obvody SR, JK, D a T, konečný automat

% https://www.youtube.com/watch?v=DwKKly9M1cE
% https://www.youtube.com/watch?v=LRaCh6AvTlM

## Sekvenční logický systém
- též taky jen sekvenční obvod
- na rozdíl od kombinačních obvodů není závislý pouze na vstupních signálech ale také na pořadí zadání
- uchovávají předešlý stav -- mají paměť
- při určení hodnoty výstupu nutno sledovat jak vstupy, tak stav paměti
- typy podle času změny výstupu a paměti
	- asynchronní -- změna vstupu ihned ovlivní výstup; *latches*
	- synchronní -- řízeny vnějším synchronizačním signálem (*clock signal*), změna probíhá pouze při tiku hodin, *flip-flops*

### Stavba
- kombinační a paměťová část
- paměťová
	- uchování vnitřního stavu
	- základem SR latch
	- většinou složena z NAND nebo NOR gate
- kombinační část
	- pomocná kombinační logika doplňující paměť
	- využití AND či NOT gate\dots

### Návrh sekvenčního systému
#### Mealyho typ
- výstup závislý na vstupu a vnitřním stavu
- rychlejší než Moor
- menší počet stavů ($n$ vs $n^2$)

#### Moorův typ
- vstupní hodnoty se projeví až v následujícím stavu
- výstup závislý pouze na vnitřním stavu

## SR Latch
- základní paměťový obvod
- sestaven z NAND nebo NOR gates
- 2 vstupy -- $S$ (set) a $R$ (reset)
- 2 výstupy -- $Q$ a $\overline{Q}$
- set nastaví hodnotu~$Q$ na~1, reset na~0; opakované spouštění stejného vstupu nic nedělá
- oba vstupy zapnuté -- nedefinovaný stav, latch se rychle přehazuje, konečný stav neurčitelný

\fullfig[width=0.3\textwidth]{4-SR-latch}[SR latch za použití NOR gate.]

|$S$|$R$|$Q$|$\overline{Q}$|
|:--:|:--:|:--:|:--:|
|0|0|Last|Last|
|0|1|0|1|
|1|0|1|0|
|1|1|--|--|
: Pravdivostní hodnoty SR latch (Last -- Last state -- poslední stav)

## SR latch with enable (gated SR latch)
- rozšíření SR latch o kombinační obvod
- přidání *enable* vstupu -- povoluje vstup
	- s $E = 0$ není možné ovlivnit latch
	- s $E = 1$ vstupy projdou a změní stav

\fullfig[width=0.3\textwidth]{4-SR-withEnable}[SR latch s enable vstupem]

## D latch
- základem gated SR latch
- dva vstupy -- $E$ (enable) a $D$
- vstupy $S$ připojeno na $D$, $R$ na $\overline{D}$
- bez enable vstupu by~$Q$ v podstatě jen kopírovalo stav~$D$
- s enable vstupem možnost zapamatovat si poslední stav
- D~flip~flop -- obvod používán jako paměťový modul

|$D$|$E$|$Q$|$\overline{Q}$|
|:--:|:--:|:--:|:--:|
|0|--|Last|Last|
|1|0|0|1|
|1|1|1|0|
: Pravdivostní hodnoty D latch

\fullfig[width=0.3\textwidth]{4-D-latch}[D latch s enable signálem]

### Rising edge D flip-flop
- uložení hodin pouze na začátku clock cyklu
- možnosti sestavení
	- master-slave -- 2 D latches za sebou, u jednoho invertovaný clock signál
	- rising-edge detektor na clock signálu (viz~\ref{fig:rising-circ})

## JK latch
- modifikovaná gated SR latch
- zamezení nedefinovaného stavu

|$J$|$K$|$Q$|$\overline{Q}$|
|:--:|:--:|:--:|:--:|
|0|0|Last|Last|
|0|1|0|1|
|1|0|1|0|
|1|1|Toggle|Toggle|
: Pravdivostní hodnoty JK latch

\fullfig[width=0.4\textwidth]{4-JK-latch}[JK latch]

## T latch
- modifikace JK latch
- J i K připojeny na T $\rightarrow$ stav J a K vždy stejný
	- $T=0$ -- latch si drží poslední stav
	- $T=1$ -- latch změní stav, toggles
- funguje jako přepínač

|$T$|$Q$|$\overline{Q}$|
|:--:|:--:|:--:|
|0|Last|Last|
|1|Toggle|Toggle|
: Pravdivostní hodnoty T latch

\fullfig[width=0.4\textwidth]{4-T-latch}[T latch]

## Flip Flop
- sekvenční obvod pracující dle hodin
- připojení hodin (CLK) na enable vstup
- nutno zapsat hodnotu jednou, ne ji zapisovat po celou dobu aktivace hodin $\rightarrow$ rising nebo falling edge
	- rising edge -- k rychlé aktivaci dojde při změně signálu z 0 na 1
	- falling edge -- k rychlé aktivaci dojde při změně signálu z 1 na 0
	- většinou využita rising edge

\fullfig[width=0.5\textwidth]{4-rising-circ}[Obvod pro dosažení rychlého zapnutí, možno přidat diodu pro odstranění *negativních pulzů*][fig:rising-circ]

%TODO
## Konečný automat
- popis jednoduché počítače
- model systémů různých stavů
- přechod mezi stavy na základě vstupů
- vždy pouze v jednom stavu
- skladba
	- konečný počet stavů
	- konečný počet externích vstupů
	- konečný počet externích výstupů
	- explicitní specifikace přechodu mezi stavy
	- explicitní specifikace hodnoty výstupu
- části
	- logika dalšího stavu
	- registr stavu
		- uložení dat na začátku clock cyklu
		- data dostupná celý clock cyklus
	- logika výstupu
- příklad: výtahy, semafory, kombinační zámky\dots

\fullfig{4-automat}[Symbolický nákres konečného automatu]
