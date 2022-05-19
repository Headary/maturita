\setcounter{section}{17}
# Elektrický proud v polovodičích
- materiály s větším el.~odporem než vodiče, ale menším než izolanty
- klesající odpor s teplotou
- většina polovodičů krystalické látky polovodiče
	- prvky -- Si, Ge, Se
	- sloučeniny -- GaAs, PbS
- existence i amorfních polovodičů (některá skla)
- využití -- el.~součástky

## Elektron-díra
- pár elektronu a díry (prázdné místo nechané po odtržení elektronu od atomu)
- vznik -- *generace* -- přidání energie, odtržení elektronu z valenční vrstvy atomu, vznik elektron-díry
- zánik -- *rekombinace* -- elektron \uv{spadne} zpět do díry

## Vlastní vodivost
- u čistých polovodičů
- připojení ke zdroji
	- vznik elektron-díry
	- pohyb elektronů ke kladnému pólu
	- elektron spadne do jiné díry
	- vznik nové elektron-díry
	- $\Rightarrow$ zdánlivý pohyb děr k zápornému pólu
	
## Příměsová vodivost
- u příměsových polovodičů
- některé atomy nahradíme jiným prvkem s odlišným počtem valenční elektronů
	- do křemíku (4 valenční $e^-$) dáme fosfor (5 val.~$e^-$)
		- 1 elektron přebývá, malá potřebná energie k oddělení
		- $e^-$ vedou el.~proud -- *elektronová vodivost*
		- polovodiče type~N (negative)
	- do křemíku (4 valenční $e^-$) dáme bór (3 val.~$e^-$)
		- 1 elektron chybí -- díra
		- díry vedou el.~proud -- *děrová vodivost*
		- polovodiče type~P (positive)

\fullfig[width=0.8\textwidth]{18-polovodice-typy}[Vlastní vodivost je spojena
se vznikem párů elektron–díra, zatímco příměsi jiných prvků mohou způsobit
přebytek nebo nedostatek elektronů.][][Vlastní vodivost a příměsi v polovodičích]

## PN přechod -- Dioda
- spojení polovodiče typu~P a~typu~N
- rozhraní polovodičů -- PN přechod
	- dochází zde k rekombinaci -- místo bez nositelů náboje
- propouští proud pouze jedním směrem
- el.~součástka -- *polovodičová dioda*

\fullfig[width=0.5\textwidth]{18-prechod}[PN přechod a schématické zakreslení polovodičové diody]

% TODO voltampérová charakteristika

### Závěrný směr
- zapojení PN přechodu, kdy neprochází proud
- typ~P připojen na záporný pól zdroje, typ N připojen ke kladnému pólu zdroje
- díry i elektrony tlačeny od PN přechodu
- zvětšení oblast bez nositelů náboje -- neprochází proud

### Propustný směr
- PN přechodem prochází proud
- typ P připojen na kladný pól zdroje, typ N připojen k zápornému pólu zdroje
- díry a elektrony tlačeny směrem k PN přechodu
- pokles el.~odporu, přecházení $e^-$ přes PN přechod -- prochází proud

## Využití polovodičů
- usměrnění proudu
- LED diody -- světlo
- fotovoltaické články -- výroba energie
- tranzistory -- boolenová algebra v počítačích

## Tranzistory
- 2 PN přechody -- tranzistory typu NPN nebo PNP
- zesilovače, spínače, invertory, základ integrovaných obvodů (procesor, RAM\dots)
- dva typy -- bipolární a unipolární
- minimálně 3 elektrody

\fullfig[width=0.5\textwidth]{18-tranzistor}[Jednoduché zapojení bipolárního NPN tranzistoru jako spínače.]

### Bipolární tranzistory
- kolektor (C/K), báze (B), emitor (E)
- hlavní proud protéká z kolektoru do emitoru
- řízení proudem do báze

### Unipolární tranzistory
- source (S), gate (G), drain (D)
- proud ze source do drainu
- řízení napětím na gate
