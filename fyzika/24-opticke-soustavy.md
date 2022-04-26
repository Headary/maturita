\setcounter{section}{23}
# Optické soustavy a optická zobrazení
- souhrn věcí ovlivňující přechod paprsku a vytvářející obraz pozorovaného předmětu
	- lámavé/odrazové plochy
	- rozhraní prostředí
	- clony
- centrovaná optická soustava -- středy křivosti leží na jedné přímce

## Základní pojmy
### Obraz
- místo, kde se skutečně nebo zdánlivě protínají paprsky vycházející
z~jednotlivých bodů zobrazovaného předmětu

#### Vlastnosti
- zvětšení~$Z$
	- velikost obrazu relativně k zobrazovanému předmětu
	- zmenšený / stejně velký / zvětšený ($\abs{Z}<1,\abs{Z}=1,\abs{Z}>1$)
	- \eq{
			Z=\frac{y'}{y}=-\frac{a'}{a}
		}
		- $y,y'$ -- výška předmětu a obrazu
		- $a,a'$ -- vzdálenost předmětu a obrazu čočky nebo zrcadla
- orientace
	- přímý ($Z>0$) / převrácený ($Z<0$) obraz %>
	- relativně k původní orientaci předmětu
- skutečný / zdánlivý obraz
	- skutečný -- paprsky se sbíhají, lze zachytit na stínítku ($a'>0$)
	- zdánlivý -- paprsky se rozbíhají, nelze zachytit na stínítku ($a'<0$)%>

### Ohnisko
- místo, kde se skutečně (spojka, duté zrcadlo) nebo zdánlivě^[za pomoci
geometrického prodloužení paprsků] (rozptylka, vypuklé zrcadlo) sbíhají paprsky
původně rovnoběžné s optickou osou

#### Ohnisková vzdálenost
- vzdálenost ohniska od čočky
- polovina poloměru křivosti
- značení: $f, [f]=\jd{m}$

#### Optická mohutnost
- schopnost čočky koncentrovat světlo
- převrácená hodnota~$f$
- značení: $\phi, [\phi]=\jd{m^{-1}}$

### Střed křivosti
- střed zakřivení čočky nebo zrcadla
- čočky a zrcadla tvořeny z části kulové plochy
- poloměr kulové plochy~$r$ = **poloměr křivosti**

### Zobrazovací rovnice
- rovnice udávající vztah vzdáleností při zobrazení
- \eq{
		\frac{a}+\frac{a'}=\frac{f}
	}

### Konvence znamének a značení
- optická soustava kreslena zleva doprava
	- $\Rightarrow$ doleva kladný směr, doprava záporný směr
- $f$ před čočkou -- kladné, $f$ za čočkou -- záporné
- vzdálenosti měřeny od středu čočky
- čočky
	- $a>0$ před čočkou, $a<0$ za čočkou %>
	- $a'<0$ před čočkou, $a'>0$ za čočkou
- zrcadla
	- $a,a'>0$ před zrcadlem, $a,a'<0$ za zrcadlem %>

### Významné paprsky
- světelné paprsky používány k dedukci obrazu objektu
- 3 paprsky
	- rovnoběžný s optickou osou -- po ohybu/odrazu míří od ohniska
	- mířící do optického středu čočky/zrcadla -- jeho trasa se nemění / odráží se dle zákona odrazu
	- mířící do ohniska před čočkou/zrcadlem -- po ohybu/odrazu rovnoběžný s optickou osou

## Zobrazení zrcadlem
- zrcadlo -- předmět odrážející světlo
- u kulových zrcadel -- obraz nikdy není dokonalý, pouze u parabolických

### Rovinné zrcadlo
- využití zákonu odrazu
- $f\rightarrow\infty$
- stejně velký, přímý, zdánlivý obraz

### Vypuklé zrcadlo
- odraz z vnějšku kulové plochy
- ohnisko za zrcadlem -- záporná ohnisková vzdálenost 
- obraz zmenšený, přímý, skutečný

\fullfig[width=0.6\textwidth]{24-vypukle}[Vypuklé zrcadlo]

### Duté zrcadlo \label{sec:dute}
- odraz ze vnitřku kulové plochy
- kladná ohnisková vzdálenost
- obraz závislý na poloze objektu
	- $0<a<f$ -- zvětšený, přímý, zdánlivý
	- $a=f$ -- $\abs{Z}\rightarrow\infty$ -- obraz v nekonečnu
	- $f<a<2f$ -- zvětšený, převrácený, skutečný %>
	- $a=2f$ -- stejně velký, převrácený, skutečný
	- $a>2f$ -- zmenšený, převrácený, skutečný

\fullfig[width=16cm]{24-zobrazeni-dute}[Hodnoty $Z$ a $a'$
v~závislosti na násobku~$f_0=1$][graph:dute]

\fullfig[width=0.6\textwidth]{24-dute}[Nákres dutého zrcadla]

## Zobrazení čočkou
### Spojka
- zakřivuje světlo do ohniska
- kladná ohnisková vzdálenost -- platí stejné pravidla jako u dutého zrcadla (sekce~\ref{sec:dute}, graf~\ref{graph:dute})

\fullfig{24-spojka}[Spojná čočka]

### Rozptylka
- rozptyluje paprsky směrem od ohniska
- záporná hodnota ohniskové vzdálenosti~$f$
	- obraz vždy zmenšený, přímý, skutečný

\fullfig{24-rozptylka}[Rozptylná čočka]

## Oko jako optická soustava
- oko -- lidský orgán
- umí zaostřovat -- měnit mohutnost

### Rohovka
- umožňuje světlu dosáhnout sítnice
- práce na základě lomu světla

### Čočka
- proměnlivá mohutnost -- schopnost akomodace
- různé materiály -- nemá jednotný index lomu 
- ohyb světla do ohniska

#### Akomodace
- schopnost měnit optickou mohutnost
- čočka mění svojí šířku pomocí svalů
- čočka se přizpůsobuje, aby zaostřila -- změnila ohnisko
- změna s věkem -- ochabování svalů

#### Blízký a vzdálený bod
- nejbližší a nejvzdálenější bod, na který je možné zaostřit
- nejméně +- 1 cm; nejvzdálenější nekonečnost (pro zdravé oko)

#### Konvenční zraková vzdálenost
- vzdálenost, při které se oko nejméně namáhá
- $\pm "30 cm"$

### Sklivec
- výplň oka
- rosolovitá hmota, připomínaje vodu
- průhledná, světlo jí prochází

### Sítnice
- světločivné buňky -- tyčinky (černobílé) a čípky (barvy)
- zrakový nerv -- slepá skvrna -- místo bez buněk
- žlutá skvrna -- místo s nejvyšší koncentrací buněk
- zmenšený, převrácený, skutečný obraz

### Vady oka
#### Krátkozrakost
- obraz před sítnicí
- korekce pomocí rozptylky

#### Dalekozrakost
- daleký bod v nekonečnu
- obraz za sítnicí
- korekce spojkou

#### Astigmatizmus
- nerovnoměrné zakřivení oka
- různé optické zaostřování
- zaměňování znaků
- hlavně u dětí

#### Šilhavost
- špatná koordinace svalů

#### Šedý zákal
- člověk vidí "mlhu", lze vyléčit

#### Zelený zákal
- zvětšený oční tlak, neléčitelný

#### Barevné vady / barvoslepost
- čípky nevnímají dostatečně, špatně vidíme barvy

### Zorný úhel
- úhel, který může lidské oko rozeznat
- 1 minuta

## Paraxiální prostor
- prostor blízko optické osy
- nedochází zde k ovlivnění paprsků
- prochází přímočaře, bez dalších vlivů
- vyznačuji 3 význačné paprsky

## Optické přístroje
- přístroje, které využívají optickou soustavu pro své fungování

### Lupa
- zvětšování malých předmětů (malý text, detaily, \dots)
- pro~$a'$ typicky použita konvenční zraková vzdálenost~$d$ ($\pm"25 cm"$)
- pro zvětšený a přímý obraz nutno~$a<f$ %>
- zvětšení~$Z=-a'/a=d/f$
	- při správném značení je~$d$ záporné, tedy~$Z>0$
- maximální reálné zvětšení asi~$1~500$krát
### Mikroskop
- zvětšování velice malých předmětů (buňky, malé organismy, \dots)
- soustava více čoček
- obraz zvětšený, převrácený, skutečný
- příčné zvětšení~$Z = \Delta/f$
	- optický interval mikroskopu~$\Delta = \abs{\bod{F'}\bod{F_0}}$ -- vzdálenost mezi ohnisky objektivu a okuláru
- úhlové zvětšení~$\gamma_2=d/f_0$
- celkové zvětšení~$\gamma=Z\gamma_2=\Delta d/(ff_0)$ 

\fullfig[width=0.6\textwidth]{24-mikroskop-soustava}[Zobrazení předmětu
mikroskopem, kde $f$ a $f_0$ jsou ohniskové vzdálenosti, delta je optický
interval mikroskopu; $F$, $F'$, $F_0$, $F'_0$ značí ohniska, $y$ je objekt
a~$y'$ je skutečný obraz. Optická soustava mikroskopu se skládá ze dvou čoček.
Objektiv funguje jako běžná spojná čočka, okulár jako lupa.][][Zobrazení
předmětu mikroskopem]

### Dalekohled
- zvětšování velice vzdálených předmětů
- soustava čoček a v mnohdy i zrcadel
- mnoho různých typů
- úhlové zvětšení~$\gamma=f/f_0$

\fullfig{24-dalekohled}[Nákres jednoduchého dalekohledu]
