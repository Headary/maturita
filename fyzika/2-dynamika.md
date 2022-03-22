\setcounter{section}{1}
# Dynamika
- část mechaniky, zabývající se příčinami pohybu těles

## Síla
- značka~$\vect F$, $[F]=\jd{N}=\jd{kg.m.s^{-2}}$
- vektorová veličina, míra vzájemného působení těle
- přímé měření siloměrem
- deformační a pohybové účinky

## Interakce těles
- umožňují popsat všechny známé způsoby vzájemného silového působení částic a pole
- 4 základní síly
	- gravitace
	- elektromagnetická síla
	- slabá jaderná síla / slabé interakce
	- silná jaderná síla / silné interakce
- ostatní působení možno vyjádřit jako výsledek působení základní sil

### Gravitace
- nejslabší interakce, nejdelší dosah
- univerzální působení na všechny látky a energie
- úměrná hmotnosti těles a klesá s kvadrátem vzdálenosti
- největší význam v makro-úrovni: pád těles, pohyb planet, černé díry\dots
- teoretickým nosičem graviton (nicméně nepotvrzen)

### Elektromagnetická síla
- působení mezi elektricky nabitými částicemi
- tělesa v klidu -- elektrostatická síla
- tělesa v pohybu -- kombinace elektrické a magnetické síly
- relativně silná; od laserů a rozhlasu až po strukturu atomu kovů a duhu
- popsán Maxwellovými rovnicemi
- nosičem fotony

### Slabé interakce
- působení na leptony a kvarky, jediná síla působící na neutrino (při zanedbání neměřitelné gravitační síly)
- umožňuje interakce leptonů a kvarků
- nosiči bosony $\text{W}^\pm$ a Z

### Silné interakce
- drží nukleony a kvarky u sebe v jádrech atomů
- udrží protony u sebe i přes elektromagnetické odpuzování
- nosiči gluony

## Newtonovy zákony
- popis vztahu mezi pohybem těles a působícími silami v inerciální vztažné soustavě

### První Newtonův zákon -- zákon setrvačnosti
- \emph{\uv{Jestliže na těleso nepůsobí žádné vnější síly, nebo výslednice sil je 0, pak těleso setrvává v klidu nebo v rovnoměrném přímočarém pohybu.}}
- pokud na těleso nepůsobí síla nebo výslednice je nulová, pohybuje se tělese bez zrychlení
- inerciální vztažná soustava -- izolovaná tělesa zůstávají v klidu / rovnoměrném přímočarém pohybu (platí I.~Newtonův zákon)
- neinerciální vztažná soustava -- neplatí I.~NZ, tělesa zrychlují i bez působení sil

### Druhý Newtonův zákon -- zákon síly
- \emph{\uv{Jestliže na těleso působí síla, pak se těleso pohybuje zrychlením, které je přímo úměrné působící síle a nepřímo úměrné hmotnosti tělesa.}}
- obecněji -- síla je rovna časové změně hybnosti
	\eq{
		\vect F = \der{\vect p}{t} = \der{(m\vect v)}{t} = \dot{m}\vect v + m\dot{\vect v}
	}
- za předpokladu neměnné hmotnosti $m=\const$ lze zjednodušit na
	\eq{
		\vect F = m\dot{\vect v} = m\vect a
	}
- síla je příčinou změny pohybu

### Třetí Newtonův zákon -- zákon akce a reakce
- \emph{\uv{Proti každé akci vždy působí stejná reakce; jinak: vzájemná působení dvou těles jsou vždy stejně velká a míří na opačné strany.}}
- každá akce vyvolává stejně velkou opačnou reakci
	\eq{
		\vect F_{12} = -\vect F_{21}
	}
- souhlasení se zákonem zachování hybnosti
	\begin{gather\*}
		\vect F_{12} = -\vect F_{21}\qquad \vect F = \Delta \vect p\\\\
		\Delta \vect p_{12} = -\Delta \vect p_{21}\\\\
		\Delta \vect p_{12} +\Delta \vect p_{21} = 0 \Rightarrow \text{Celková hybnost se zachovává}
	\end{gather\*}

- příklad -- zpětný ráz při střelbě

## Hybnost
- značka~$\vect p$, $[\vect p] = \jd{kg.m.s^{-1}}$
- míra pohybu tělesa
- součin hmotnosti a rychlosti tělesa
	\eq{
		p = m\vect v
	}
- rovna impulsu síly ($\vect I, [\vect I]=\jd{Ns}$) -- časovému účinku síly
	\eq{
		\vect p = \vect I = \vect F\Delta t
	}

### Zákon zachování hybnosti
- celková hybnost všech těles v izolované soustavě se zachovává
	\eq{
		\sum_{i=1}^{n} \vect p_i = \vect p = \const
	}
- příklad -- při spalování paliva unikají tryskou plyny vysokou rychlostí $\rightarrow$ pohyb rakety opačným směrem
- souvislost s~III.~NZ
- důležité při výpočtech pružných a nepružných srážek

### Zákon zachování momentu hybnosti
- moment hybnosti -- $\vect L, [\vect L]=\jd{kg.m^2.s^{-2}}$
	- součin hybnosti a průvodiče hybnosti $\vect L = \vect r \times\vect p$
	- moment síly -- derivace momentu hybnosti $\vect M = \d \vect L/\d t$
- zachování momentu hybnosti -- v izolované soustavě se hodnota momentu hybnosti nemění
	\eq{
		L = \const
	}
- vyznám při rotačním pohybu tělesa

## Druhy sil
- druhy sil
	- odporová síla
	- vztlaková síla
	- tření
	- dostředivá a odstředivá
	- setrvačná
	- van der Waalsovy síly
- druhy silových polí
	- gravitační pole -- gravitační síla
	- elektromagnetické pole -- elektrická a magnetická síla

### Dostředivá síla
- síla působící na těleso při rotačním pohybu
- působí směrem do středu křivosti
	\eq{
		F = \frac{mv^2}{r} = m\omega^2 r
	}
- způsobuje dostředivé zrychlení
- způsobuje změnu směru vektoru rychlosti $\rightarrow$ zakřivení trajektorie $\rightarrow$ pohyb po kružnici

### Odstředivá síla
- 2 typy -- reakce na dostředivou sílu nebo setrvačná odstředivá síla; obvykle mluvíme od druhém případu
- síla působící od středu křivosti
- zaváděna v neinerciální vztažné soustavě, není způsobena žádnou reálnou sílou
- stejná velikost jako dostředivá síla
- způsobena setrvačností tělesa při pohybu rovně a působení dostředivé síly

### Setrvačná síla
- síla působící proti směru pohybu
- v neinerciální vztažné soustavě
- nemá původ, pouze účinek
- Eulerova síla, odstředivá síla, Coriolisova síla

### Třecí síla
- smyková třecí síla -- síla působící proti pohybu mezi dvěma styčnými plochami těles
- nezáleží na styčné ploše, pouze na normálové síle~$F\_N$ a činiteli smykového tření~$f$
	\eq{
		F\_t = fF\_N
	}
- koeficient tření závislý na druzích povrchů, zjišťován experimentálně
- typy
	- tření v klidu / statické tření -- tření vyvinuto na těleso v klidu
	- tření za pohybu -- tření působící proti směru pohybu, menší než statické tření
- další typy
	- turbulentní tření -- u kapalin
	- valivý odpor

#### Valivý odpor / valivé tření
- tření způsobeno valením po povrchu
	\eq{
		F\_t = \xi \frac{F\_N}{r}
	}
	- $\xi$ -- koeficient valivého odporu
	- $r$ -- poloměr valení
