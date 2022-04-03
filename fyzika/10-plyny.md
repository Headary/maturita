\setcounter{section}{9}

# Struktura a vlastnosti plynného skupenství
## Mechanické vlastnosti
- snadno stlačitelné
- zaobírají objem a tvar nádoby
- tekuté
- neuspořádaný pohyb částic

### Ideální plyn
- ideální model plynu použitý pro modely, v reálu neexistuje, blíží se za velké teploty a nízkého tlaku
- rozměry molekul vzhledem ke vzdálenosti molekul zanedbatelně malé
- molekuly na sebe kromě srážek nepůsobí silami $\rightarrow$ potenciální energie soustavy nulová $\rightarrow$ vnitřní energie dána pouze kinetickou~e.
- dokonale pružné srážky se stěnami nádoby

## Stav plynu
### Stavové veličiny
- vyjadřující stav plynu
- objem~$V$, $[V]=\jd{m^3}$ -- prostor zabrán plynem
- tlak~$p$, $[p]=\jd{Pa}=\jd{F.m^{-3}}$ -- síla plynu působící na jednotku plochy stěny
- teplota~$T$, $[T]=\jd{K}$ -- tepelný stav plynu
- látkové množství~$n$,$[n]=\jd{mol}$ -- počet elementárních jedinců specifikovaných Avogradrovou konstantou

### Stavová rovnice
- vztah mezi stavovými veličinami při rovnovážném stavu
	\eq{
		pV = nRT
	}
	- $R\doteq"8.31 J.K^{-1}.mol^{-1}"$ -- molární plynová konstanta
- při neměnném množství plynu
	\eq{
		\frac{pV}{T} = nR = \const
	}

## Děje v ideálním plynu
### Izotermický
- děj, kdy zůstává teplota konstantní -- mění se pouze tlak a objem
	- součin tlaku a objemu konstantní
	\eq[m]{
		T_1 = T_2 &\Rightarrow nRT = \const\\\\
		p_1V_1 &= p_2V_2
	}
- grafem izoterma
- teplota konstantní $\rightarrow$ vnitřní energie zůstává stejná
- teplo přijaté plynem koná práci


### Izochorický
- děj za konstantního objemu
	\eq[m]{
		\frac{p}{T} &= \frac{nR}{V} = \const\\\\
		\frac{p_1}{T_1} &= \frac{p_2}{T_2}
	}
- grafem izochora
- tlak přímo úměrný teplotě
- stálý objem $\rightarrow$ nekoná práci
- přijaté teplo přeměněno na vnitřní energii

### Izobarický
- děj za konstantního tlaku
	\eq[m]{
		\frac{V}{T} &= \frac{nR}{p} = \const\\\\
		\frac{V_1}{T_1} &= \frac{V_2}{T_2}
	}
- grafem izobara
- přijaté teplo rovno součtu změny vnitřní energie a vykonané práce

\fullfig[width=16cm]{10-pv-izo}[pV diagramy dějů]

### Adiabatický
- neprobíhá tepelná výměna s okolím ($Q=0$) $\Rightarrow$ změna vnitřní energie způsobena prací ($\Delta U = W$)
- většinou velmi rychlé děje -- nestihne dojít k výměně tepla
- působení síly na píst $\rightarrow$ konání práce sílou $\rightarrow$ zvýšení vnitřní energie $\rightarrow$ zvýšení teploty
- rozpínání plynu / roztahování pístu $\rightarrow$ plyn koná práci $\rightarrow$ snížení vnitřní energie $\rightarrow$ snížení teploty
- grafem adiabata
- platí Poissonův zákon
	\eq[m]{
		pV^\kappa&=\const\\\\
		\kappa &= \frac{c_p}{c_V}
	}
	- $\kappa$ -- Poissonova konstanta
	- $c_p, c_V$ -- měrná tepelná kapacita plynu při stálém tlaku a objemu
	- $c_p>c_V \Rightarrow \kappa > 1$
- jednoatomární plyn -- $\kappa = 5/3$; dvouatomární plyn -- $\kappa = 7/5$
- izoterma -- $pV^1 = \const$; adiabata -- $pV^\kappa = \const, \kappa > 1$

\fullfig[width=16cm]{10-pv-adiabata}[pV diagram adiabatického dějě]

### Kruhový
- schopnost práce tepelného stroje pouze při vrácení plynu do původního stavu
- pV diagram uzavřená křivka (např.~graf~\ref{10-pv-kruhovy})
	- $A\rightarrow B$ -- izotermické expanze
	- $B\rightarrow C$ -- adiabatická expanze
	- $C\rightarrow D$ -- izotermické komprese
	- $D\rightarrow A$ -- adiabatická komprese
- vykonaná práce plynu -- plocha uzavřené křivky
	- $1,2$ -- plyn koná práci
	- $3,4$ -- okolí koná práci
	- výsledná práce rovna rozdílů práce plynu a prostředí (plochy pod křivkou $A\rightarrow B\rightarrow C$ a $C\rightarrow D\rightarrow A$)
- počáteční a koncový stav stejný -- mezi vnitřní energie mezi cykly nulová ($\Delta U = 0$)
- přijímání tepla~$Q_1$ od ohřívače, předávání tepla~$Q_2$ chladiči
	- celkové teplo~$Q=Q_1-Q_2$
	- 1.~termodynamický zákon -- $Q=W'$ dodaný rozdíl tepla roven vykonané práci
- účinnost~$\eta$ -- podíl vykonané práce a dodaného tepla
	\eq{
		\eta = \frac{W'}{Q_1} = \frac{Q_1-Q_2}{Q_1} = 1 - \frac{Q_2}{Q_1}
	}

\fullfig[width=15cm]{10-pv-kruhovy}[Diagram kruhového děje (Carnotův cyklus)][10-pv-kruhovy]

## Druhý termodynamický zákon
- \emph{\uv{Není možné sestrojit periodicky pracující tepelný stroj, který by jen přijímal teplo od určitého tělesa (ohřívače) a měnil by je v ekvivalentní práci (tj. vykonával stejně velkou práci).}}
- tepelný stroj vždy musí ochlazovat jedno těleso a zároveň ohřívat druhé
- nelze všechno přijaté teplo přeměnit na práci
- účinnost stroje nikdy nedosáhne~$\eta="100 \%"$

\fullfig[width=0.4\textwidth]{10-pist}[Schéma tepelného stroje]

## Plyn při nízkém a vysokém tlaku
### Nízký tlak
- zmenšení hustoty molekul $\rightarrow$ zvětšení střední volné dráhy~$l$
	- délka přímočarého úseku mezi dvěma srážkami
- střední volná dráha molekuly~$\lambda$
	- aritmetický průměr středních volný drah všech molekul
	- statistická veličina
	- nepřímo úměrná tlaku
- pokles střední srážkové frekvence~$z$
	- počet srážek za jednotku času
- velmi nízké tlaky ($"10^{-5} Pa"$) -- střední volná dráha větší než rozměry nádoby -- téměř nedochází ke srážkám

### Vysoký tlaku
- zvýšení hustoty molekul $\rightarrow$ zmenšení střední volné dráhy~$\lambda$
- nelze zanedbat přitažlivé síly a vlastní objem molekul
- dostatečně vysoký tlak a dostatečně nízká teplota -- vazby mezi molekulami; zkapalnění

## Tepelné motory
- stroje přeměňující vnitřní energii na mechanickou energie
- typy
	- parní motory -- pára, získání mimo vlastní motor
	- spalovací motory -- plyn vzniklý při hoření paliva, vznik uvnitř motoru

\begin{table}[htbp]
\centering
\begin{tabularx}{0.9\textwidth}{cccX}
\toprule
Tepelný motor &$\eta\_{max}$&$\eta$&Poznámka\\\\
\midrule
parní stroj lokomotivy &0,35 &0,09 - 0,15 &účinnost parních motorů lze zvýšit užitím přehřáté páry\\\\
parní turbína &0,60 &0,25 - 0,35 &\\\\
plynová turbína &0,55 &0,22 - 0,37 &\\\\
čtyřdobý zážehový motor &0,65 &0,20 -- 0,33\\\\
vznětový motor &0,73 &0,30 -- 0,42 &vzduch se zahřívá již kompresí a poté spalováním nafty\\\\
raketový motor &0,75 &0,50 &vysoká účinnost je dána tím, že $T_1 = "4~000 K"$\\\\
\bottomrule
\end{tabularx}
\caption{Porovnání typů tepelných motorů}
\end{table}

### Parní stroj
- historický význam
- vznik 1769 -- James Watt $\rightarrow$ prudký rozvoj techniky
- používán do 60.~let 20.~stol.
- pálení uhlí $\rightarrow$ ohřívání vodní páry $\rightarrow$ pohyb pístu

### Turbíny
- roztáčení vícestupňové turbíny pomocí par nebo plynů pod vysokým tlakem
- roztočení turbíny $\rightarrow$ ochlazení plynu

### Zážehové motory
- spalování benzínových par a vzduchu uvnitř komor $\rightarrow$ expanze plynu $\rightarrow$ pohyb pístu
- převod posuvného pohybu na rotační

#### Čtyřdobý zážehový motor
- 4 fáze -- sání, komprese, výbuch, výfuk plynů
- auta, letadla, generátory\dots
- možnost regulace přívodu paliva

#### Dvoudobý motor
- pouze 2 fáze; sání a komprese dohromady a výbuch a výfuk dohromady
- jednodušší, ale méně efektivní
- menší vozidla, malé přenosné zařízení (sekačky, pily\dots)
