\setcounter{section}{4}

# Mechanika kapalin a plynů

## Vlastnosti
- tekutina -- kapaliny a plyny
	- jsou tekuté -- změna tvaru podle nádoby, pohyblivé, neschopné udržet tvar
- kapaliny
	- částice blíže sobě $\rightarrow$ působí na sebe silami, avšak neudrží tvar
	- volná hladina
	- téměř nestlačitelné
	- stálý objem
- plyny
	- volný pohyb částic
	- stlačitelný $\rightarrow$ nestálý objem

### Ideální tekutina
- prakticky neexistující
- dokonalá tekutost, nemá vnitřní odpor
- ideální kapalina -- dokonale nestlačitelná
- ideální plyn -- dokonale stlačitelný; částice na sebe nepůsobí (kromě srážek)

## Tlak
- značka~$p$, $[p]=Pa=N.m^{-2}$
- normálová síla působící na jednotku plochy
	\eq{
		p = \frac{F}{S} \ztoho p = \der{\vect F\\_N}{\vect S}
	}
- tlaková síla~$F=pS$
- v kapalinách způsoben tíhovou nebo vnější sílou

### Tlak tíhové síly
- tíhová síla kapaliny $\rightarrow$ hydrostatická tlaková síla~$F\\_h$ $\rightarrow$ hydrostatický tlak~$p\\_h$
	\eq{
		p = \frac{F\\_G}{S} = \frac{V\rho g}{S} = \frac{hS\rho g}{S} = h\rho g
	}
- nezávisí na objemu nebo tvaru kapaliny -- \emph{hydrostatický paradoxon}

### Vnější síla -- Pascalův zákon
- \emph{\uv{Jestliže na kapalinu v uzavřené nádobě působí vnější tlaková síla, pak tlak v každém místě kapaliny vzroste o stejnou hodnotu.}}
- tlak v každém místě kapaliny stejný $\rightarrow$ při zvětšení plochy možno získat větší sílu
	\eq{
		p=\const \ztoho F\sim S
	}

#### Hydraulická zařízení
- využití Pascalova zákonu
- propojené nádoby o různých objemech/plochách
- malá síla vyvinuta na malou plochu $\rightarrow$ velká síla vyvíjena na velkou plochu
- brzdy, pedály, hydraulický lis, zvedáky, hydraulické písty, \dots

\fullfig[width=0.4\textwidth]{5-pascal}[Nákres Pascalova zákona]

### Vztlaková síla
- síla nadnášející těleso v tekutině
- způsobena rozdílem hydrostatického tlaku nad a pod tělesem
	\eq[m]{
		F\\_{vz} &= F'' - F'\\\\
		F\\_{vz} &= Sp'' - Sp'\\\\
		F\\_{vz} &= S\rho gh'' - S\rho gh'\\\\
		F\\_{vz} &= S\rho g(h'' - h')\\\\
		F\\_{vz} &= S\rho gh\\\\
		F\\_{vz} &= V\rho g
	}
- působení síly proti tíhové síle směrem nahoru -- $F = F\\_G - F\\_{vz}$
- formulováno Archimédovým zákonem -- \uv{\emph{Těleso ponořené do tekutiny, které je v klidu, je nadlehčováno silou rovnající se tíze tekutiny stejného objemu, jako je ponořená část tělesa.}}

\fullfig[width=0.4\textwidth]{5-vztlak}[Síly působící na těleso v tekutině]

## Proudění tekutin
- pohyb tekutiny
- neuspořádaný pohyb částic a zároveň posun ve směru proudění
- proudění tekutiny z místa vyššího tlaku do místa nižšího tlaku
- vzorce -- předpoklad ideální tekutiny
- hydrodynamika, aerodynamika
- znázorněno pomyslnými čarami -- proudnice

### Rovnice spojitosti
- také rovnice kontinuity
- speciální případ zákonu zachování hmotnosti při proudění kapaliny trubicí

#### Nestlačitelné kapaliny
- zachování objemového průtoku $Q_V = \const$
	\eq[m]{
		m_1 &= m_2\\\\
		\frac{m_1}{t\rho} &= \frac{m_2}{t\rho}\\\\
		Q_1 &= Q_2\\\\
		S_1v_1 &= S_2v_2\\\\
		\frac{v_1}{v_2} &= \frac{S_2}{S_1}
	}
- čím menší průřez, tím vyšší rychlost proudění kapaliny

\fullfig[width=0.5\textwidth]{5-spojitost}[Spojitost proudění nestlačitelné kapaliny]

#### Stlačitelné kapaliny / plyny
- zachování hmotnostního průtoku $Q_m = \const$
	\eq[m]{
		Q_1 &= Q_2\\\\
		S_1v_1\rho_1 &= S_2v_2\rho_2
	}

### Bernoulliho rovnice
- odvodil Daniel Bernoulli
- zákon zachování mechanické energie pro ustálené proudění ideální kapaliny
	\eq[m]{
		\frac{2}\rho v^2 + p + \rho u(\vect x) &= \const \qquad (\text{obecný tvar})\\\\
		\frac{2}\rho v^2 + p + \rho gh &= \const \qquad (\text{homogenní tíhové pole})
	}
	- energie přepočtena na objemovou jednotku kapaliny
	- $\rho v^2/2$ -- dynamický/kinetický tlak -- objemová hustota kinetické energie
	- $p$ -- tlaková potenciální energie
	- $\rho u(\vect x) = \rho gh$ -- potenciální energii objemové jednotky kapaliny v silovém poli vnější konzervativní síly (tíhové pole)

\fullfig[width=0.5\textwidth]{5-bernoulli}[Proudění kapaliny dle Bernoulliho rovnice]

#### Torricelliho vzorec
- vztah pro výtokovou rychlost kapaliny při vytékání malým otvorem z nádoby s hladinou ve výšce~$h$
	\eq{
		v = \sqrt{2gh}
	}
- stejná rychlost, jakou by mělo těleso při dopadu při volném pádu
- možno odvodit z Bernoulliho vzorce
	\eq{
		gh = \frac{2} v^2
	}
	- pokles hladiny zanedbatelný $v_1=0$
	- malý rozdíl výšek -- tlak konstantní $p_2=p_2$
	- $h = h_1-h_2$

\fullfig[width=0.3\textwidth]{5-torricelli}[Vytékání kapaliny z nádoby dle torricelliho vzorce]

% TODO spojené nádoby

### Skutečné proudění
- neplatí dokonale předchozí vzorce
- kapalina má vnitřní tření a viskozitu
- pohyb kapalinu u stěn pomaleji -- mezní vrstva
- laminární proudění -- pohyb částic jedním směrem, nedochází k vírům
- turbulentní proudění -- vytváření vírů, neuspořádaný pohyb
- ztrácení energie důvodem tření

## Odporová síla
- při obtékání tělesa tekutinou
- u reálných tekutin vznik odporové síly důsledkem vnitřního tření
	- kapaliny -- hydrodynamická odporová síla
	- plyny -- aerodynamická odporová síla
- určení velikosti pomocí Newtonova vzorce
	\eq{
		F = \frac{2}CS\rho v^2
	}
	- $C$ -- součinitel odporu; závislý na tvaru tělesa
	- $S$ -- příčný průřez tělesa
	- $\rho$ -- hustota tekutiny
	- $v$ -- rychlost tělesa
- síla působí ve směru opačném rychlosti
- nesymetrické těleso -- směr odporové síly odchýlen
	- využití např.~křídla letadel

### Fyzika letu
- aerodynamický tvar křídel -- vyšší rychlost proudění nad křídlem, menší pod křídlem
	- z Bernoulliho rovnice $\rightarrow$ nad křídlem podtlak vzhledem k atmosférickému tlaku, pod křídlem přetlak
- vytváření vztlakové aerodynamické síly
	\eq{
		F\\_{vz} = \frac{2}C\\_{vz}S\rho v^2(\text{pro rychlosti menší rychlosti zvuku})
	}
	- $C\\_{vz}$ -- součinitel vztlaku

\fullfig[width=0.4\textwidth]{5-wing}[Působení sil na křídlo letadla]
