\setcounter{section}{25}
## Elektronový obal atomu, atomové jádro, elementární částice

### Atomová vs Jaderná fyzika
##### Atomová fyzika
- fyzika elektronového obalu
- zkoumá vlastnosti a pohyb elektronů v elektronovém obalu
- atomové jádro zůstává neměnné
- chemická energie v řádech jednotek elektronvoltů

##### Jaderná fyzika
- fyzika atomového jádra
- zkoumá pohyb částic uvnitř atomových jader a jejich přeměny
- energie v řádech megaelektronvoltů

### Vlastnosti atomu
- jádro (většina hmotnosti) + elektronový obal
- elektricky neutrální
- částice
	- jádro
		- proton - kladný náboj
		- neutron - bez náboje
	- obal
		- elektron - záporný náboj
- protonové číslo $Z$~-- počet protonů v jádře; nukleonové číslo~$A$~-- počet
	nukleonů v jádře

### Modely atomu
#### Thomsonův (pudinkový) model
- elektrony (záporné) poletují v "polívce" kladného náboje

#### Ruthefordův model
- "planetární model atomu", 1911
- velmi malé, hmotné jádro okolo kterého obíhají elektrony ($\approx "10~000"r$
	jádra)

#### Bohrův model
- 1913
- následník Ruthefordova modelu a předchůdce kvantově mechanického modelu
- elektrony se nachází v jednotlivých hladinách okolo jádra

#### Kvantově mechanický model
- zatím nejrealističtější popis atomu
- založen na kombinaci řady předpokladů
	- každá částice má vlnovou funkci (viz Korpuskulárně vlnový dualismus) ->
		uvažujeme o elektronu jako o vlně
	- principu neurčitosti
	- v atomu existuje více než jedna energetická hladina -> elektrony mají orbitaly
	- elektrony mají spin; elektrony ve stejném orbitalu mají odlišný spin

### Kvantová čísla
- elektrony se pohybují v trojrozměrném prostoru po orbitalech
- nacházejí se zde s určitou pravděpodobností, jejich polohu a hybnost nelze s
	určitostí říct
- elektrony popsány pomocí 4 kvantových čísel

#### Hlavní kvantové číslo -- $n$
- hlavní energie elektronu, popisuje velikost orbitalu
- $n\in\mathbb{N}$ -- $1,2,3,\dots$ (praktické maximum 7 hladin)

#### Vedlejší kvantové číslo -- $l$
- tvar orbitalu
- $l\in\\\{0,1,2,...,n-1\\\}$
- popisováno písmeny $(s, p, d, f, g, ...)$

#### Magnetické číslo -- $m$
- orientace orbitalu v prostoru
- $m\in\\\{-l,-l+1,\dots,-1,0,1,\dots,l-1,l\\\}$

#### Spinové číslo -- $s$
- vyjadřuje vnitřní moment hybnosti
- hodnota pevně daná, u elektronů $s=\pm\frac{2}$

\fullfig[width=0.9\textwidth]{26-orbitals}[Vyobrazení jednotlivých orbitalů elektronů]

### Pauliho vylučovací princip
- \uv{*Žádné dva nerozlišitelné fermiony nemohou být ve stejném kvantovém stavu*}
- elektrony jsou fermiony $\Rightarrow$ žádné dva elektrony v elektronovém
	obalu nemohou být ve stejném kvantovém stavu / alespoň jedno kvantové číslo
	se musí lišit

### Elementární částice
- částice, která již není složená z jiných částic
- dělení
	- fermiony
	- bosony

#### Fermiony
- kvarty, antikvarky, leptony, antileptony
- částice \uv{hmoty}
- poločíselný spin ($\pm\frac{1}{2}, \pm\frac{3}{2}, ...$)
- splňují Pauliho vylučovací princip

#### Bosony
- výměnné bosony a Higgsův boson
- částice \uv{sil}, zajišťují interakce mezi fermiony
- celočíselný spin ($\pm 1, \pm 2, ...$)
- nesplňují Pauliho vylučovací princip

\fullfig[width=0.95\textwidth]{26-elementary-particles}[Tabulka elementárních částic a jejich zařazení]

### Jaderná fyzika
- velikost atomu $"10^{-15} m"$
- stabilita jádra udržována silnou jadernou silou

#### Radioaktivita
- přirozená a umělá
- schopnost některých jader vysílat záření, při kterém se jádro mění v jiné
	(nebo ztratí část své energie)
- objevení -- 1846 -- Henri Becquerel
- využití
	- medicína -- diagnostika, léčba (např.~chemoterapie)
	- diagnostika stáří materiálů a jejich složení
	- výroba elektrické energie
	- defektometrie
	- zemědělství

##### Alpha záření
- jádra \ce{^4_2He}
- ionizační účinky
- malá pronikavost -- zastaveno papírem
- velká hmotnost, rychlost~$"10^7 m.s^{-1}"$

##### Beta záření
- proud elektronů a pozitronů
- střední pronikavost -- třeba alobal
- rychlost téměř~$c$, menší hmotnost než~$\alpha$

##### Gamma záření
- proud fotonů / elektromagnetické záření
- nemá el.~náboj, nereaguje na elmag.~pole
- vysoká pronikavost -- olovo, $"1 m"$~betonu, voda
- nebezpečné -- doprovázeno dalšími zářeními

##### Neutronové záření
- proud neutronů
- těžké, pomalé
- bez náboje
- nelze odstínit, ochranou je vzdálenost

#### Poločas rozpadu
- funkce zhruba popisující zbývající počet částic z původního počtu v čase
	- radioaktivita je náhodný děj $\Rightarrow$ nelze určit přesný počet
- \eq{N=N_0\left(\frac{2}\right)^{\dfrac{t}{T}}}
	- $N$ -- počet částic v čase~$t$
	- $N_0$ -- původní počet částic v čase~$t=0$
	- $T$ -- poločas rozpadu -- doba, za kterou se rozpadne polovina částic
- hodnota aktivity~$A$, $[A]=\jd{Bq}$
	\eq{A=A_0\left(\frac{2}\right)^{\dfrac{t}{T}}}
- popis pomocí rychlosti rozpadu~$\lambda$
	\eq{\lambda = \frac{\ln 2}{T}\ztoho N=N_0 e^{-\lambda t}}

#### Jaderné reakce
- reakce, při kterých dochází ke změně jádra
- typy podle energie
	- endoenergetické reakce -- přijímání energie
	- exoenergetické reakce -- vylučování energie
- typy podle procesu
	- fúze - slučování jader
	- štěpení - rozdělení jader
- platí $a+X=Y+b$ (viz obr.~\ref{26-stepeni})
\fullfig[width=0.4\textwidth]{26-stepeni}[Štěpení jádra; a,b -- částice; X,Y -- jádra atomů][26-stepeni]
- příklady:
	\eq[m]{
		\ce{^4\_2He + ^14\_7N &-> ^17\_8O + ^1\_1H}\\\\
		\ce{^4\_2He + ^9\_4Be &-> ^13\_6C + ^1\_0n}\\\\
		\ce{^1\_0n + ^14\_7N &-> ^14\_6C + ^1\_1H}
	}
