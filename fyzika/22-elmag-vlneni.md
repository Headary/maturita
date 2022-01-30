% elektromagnetické vlnění - charakteristika
% Maxwellova teorie elmag. pole
% Elmag. oscilátor jako zdroj elmag. vlnění
% popis elmag. vlny - vlastnosti elmag. vlnění
% vlastní a nucené kmitání elmag. vln
% rovnice elmag. vlny
% elmag. dipól
% šíření elmag. vln prostorem + využití

\setcounter{section}{21}
# Elektromagnetické vlnění
- šíření elektrického a magnetického pole prostorem
- oscilující elektrické a magnetické pole
- vlnoplocha z bodového zdroje -- koule
- emitovány částicemi s nábojem při zrychlení

\fullfig[width=0.8\textwidth]{22-vlna}[Šíření elektrického a magnetického pole]

## Maxwellova teorie
- definována Jamesem Clerkem Maxwellem
- zkompletoval a doplnil známe rovnice o elektrickém a magnetickém poli
- došel k závěru, že světlo jsou elmag.~vlny
- obecné vyjádření elektromagnetického pole -- jednoznačné vyjádření z proudu a náboje
- rozšíření informací: \url{https://fykos.cz/_media/rocnik23/ulohy/pdf/serie23_4.pdf}

### První Maxwellova rovnice
- diferenciální tvar \eq{
		\nabla \cdot \vect E = \frac{\varrho}{\epsilon_0}
	}
	- $\nabla \cdot$ -- divergence (skalár vyjadřující tok vektorového pole), kdy
		\eq{
			\nabla = \\(\pder{}{x}, \pder{}{y}, \pder{}{z}\\) \ztoho \nabla\cdot\vect E = \pder{E_x}{x} + \pder{E_y}{y} + \pder{E_z}{z}
		}
	- $\varrho$ -- hustota náboje
	- $\epsilon_0$ -- permitivita vakua
- význam: jestliže se v prostoru nachází náboj ($\varrho \neq 0$), potom je přítomno nenulové elektrické pole
- *\uv{elektrické pole vzniká v nábojích}*

### Druhá Maxwellova rovnice
- diferenciální tvar \eq{
	\nabla\cdot\vect B = 0
	}
- neexistují magnetické náboje
- magnetické pole nemá na rozdíl od elektrického žádná místa v prostoru, kde by vznikalo nebo zanikalo

### Třetí Maxwellova rovnice
- diferenciální tvar \eq{
		\nabla\times\vect E = -\pder{\vect B}{t}
	}
	- $\nabla\times$ -- rotace
- zákon elektromagnetické indukce
- parafráze Faradayova zákona
- *\uv{jestliže se někde mění magnetické pole v čase, vzniká elektrické}*

### Čtvrtá Maxwellova rovnice
- diferenciální tvar \eq{
		\nabla\times\vect B = \mu_0\vect j + \mu_0\epsilon_0\pder{\vect E}{t} %_
	}
	- $j$ -- vektor hustoty proudu
	- $\mu_0$ -- permeabilita vakua
- *\uv{pokud někde teče proud nebo se mění magnetické pole, vznikne kolem něj magnetické pole}*

\fullfig{22-divergence}[Vizualizace divergence]

## Elektromagnetický oscilátor
- elektrický obvod generující elektromagnetické vlnění
- přeměna elektrické energie na energii magnetickou a naopak

### Nejjednodušší oscilátor
- LC obvod ($L$ -- indukčnost -- cívka, $C$ -- kapacita -- kondenzátor)
- dochází k rezonanci na rezonanční frekvenci \eq[m]{
		X\_L &= X\_C\\\\
		\omega L &= \frac{\omega C}\\\\
		\omega &= \frac{\sqrt{LC}}\\\\
		f &= \frac{2\pi\sqrt{LC}}
	}
- iniciace LC oscilátoru -- nabití kondenzátoru
- průběh
	- $t=0$ -- nabitý kondenzátor, začíná se vybíjet
	- zvýšení proudu procházející cívkou, tvorba mag.~pole -- přeměna el.~pole na mag.~pole
	- $t=T/4$ -- kondenzátor vybit, $I=I\\_{max}$, všechna energie v mag.~poli
	- zmenšování proudu $\rightarrow$ indukování napětí, procházení indukovaného proudu $\rightarrow$ nabíjení kondenzátoru
	- $t=T/2$ -- kondenzátor nabit, ovšem s opačnou polaritou
	- opakování popsaného děje v druhé polovině periody s opačnou polaritou
	
\fullfig[width=0.4\textwidth]{22-lc-obvod}[Nákres LC obvodu]
\fullfig[width=0.5\textwidth]{22-lc-prubeh}[Průběh oscilace LC obvodu]

## Vlastnosti elektrického vlnění
- neoddělitelné oscilující elektrické a magnetické pole
- elektrické a magnetického pole navzájem kolmé, společně se směrem pohybu
- příčné vlnění
- vlny
	- postupná vlna -- souhlasné váze $\vect E$ a $\vect B$
	- stojatá vlna -- fáze $\vect E$ a $\vect B$ posunuty o $\pi/2$
- platí zákony odrazu a ohybu
	- rozměry překážky $\leq \lambda \rightarrow$ ohyb
	- rozměry překážky $> \lambda \rightarrow$ za překážkou stín
- rychlost šíření
	- ve vakuu -- pohyb rychlostí světla~$c="3e8 m.s^{-1}"$
	- v prostředí
		\eq{
			v = \frac{c}{\epsilon\\_r\mu\\_r}
		}
		- $\epsilon\\_r, \mu\\_r$ -- relativní permitivita a permeabilita prostředí

### Parametry elmag.~vlny
- vlnová délka~$\lambda, [\lambda] = \jd{m}$
	- vzdálenost, kterou vlna urazí za jednu periodu / délka jedné periody
- perioda~$T, [T]=\jd{s}$
	- doba jedné periody
- frekvence~$f, [f] = \jd{Hz} = \jd{s^{-1}}$
	- počet period za jednu sekundu
	- \eq{
		f = \frac{T}
	}
- rychlost šíření~$v, [v] = \jd{m.s^{-2}}$
	- \eq{
		v = \frac{\lambda}{T} = \lambda f
	}
- úhlová frekvence~$\omega, [\omega]=\jd{rad.s^{-1}}$
	- rychlost kmitání vlny vyjádřeno jako úhlová rychlost
	- \eq{
		\omega = 2\pi f = 2\pi/T
	}
- okamžité elektrické a magnetické pole
	\eq[m]{
		\vect E &= \vect E\\_{max} \sin\omega t\\\\
		\vect B &= \vect B\\_{max} \sin\omega t
	}

## Vlastní a nucené kmitání elmag.~vln
### Vlastní kmitání
- kmitání soustavy bez vnějšího zásahu
- po prvotním nabití a odpoje LC obvod kmitá vlastním kmitáním
- ztráty energie $\rightarrow$ tlumené
	- soustava po čase kmitat přestane
- oscilace pouze vlastní frekvencí

### Nucené kmitání
- kmitání soustavy s vnějším zásahem
- dodávání síly/energie do systému
- kompenzace ztrát energie
- netlumené harmonické kmitání
- oscilace s frekvencí vnějšího působení

## Elektromagnetický dipól
- zařízení se dvěma konci, na kterých se nachází opačný náboj o stejné velikosti
- rozevření konců rovnoběžných vodičů o délce $\lambda/4$ do směru kolmému vedení $\rightarrow$ půlvlnový dipól
- periodické dosažení maxima napětí na koncích vodiče $\rightarrow$ vznik elektrického pole
- vytváření elektromagnetického pole
	- elektrické siločáry v rovině dipólu
	- magnetické indukční vlny -- soustředné kružnice v rovině kolmé dipólu
- využití -- antény
	- vysílač -- vyzařování vlnění do okolí, většina energie vyzařována ve směru kolmém k ose energie
	- přijímač -- vznik nuceného kmitání, příjem signálu

\fullfig{22-dipol}[Vytvoření elektrického půlvlnového dipólu]
\fullfig{22-antena}[Půlvlnový dipól jako anténa]
\fullfig{22-dipol-pole}[Elektrické a magnetické pole dipólu]

## Šíření elektromagnetických vln
- závislé na frekvenci / vlnové délce
- ohyb podél zemského povrchu
	- šíření přes velké překážky
	- dlouhé a střední vlny
	- velmi krátké vlny (rozhlas, televize) -- nutná zachovat přímou cestu k vysílači
- ionosféra ($"60 km"$ -- $"80 km"$)
	- volné elektrony a ionty -- vodivá pro elmag.~vlny
	- odražení některých krátkých vln
	- proměnlivé vlastnosti
- radiolokace -- systémy sledující přímočaré šíření 
	- radar -- určování poloha rádiem ($"0.01 m"$ -- $"0.5 m"$)
