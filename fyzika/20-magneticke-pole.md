% notes: http://fyzweb.cz/materialy/hvizdy/6_casticevmagn.pdf

\setcounter{section}{19}
# Stacionární a nestacionární magnetické pole

## Magnetické pole
- vektorové pole okolo pohybujícího se náboje nebo permanentního magnetu
- působení magnetické síly -- přitahování, odpuzování, působení na el.~náboje
- magnetické siločáry -- uzavřené smyčky znázorňující magnetické pole
- vytvářeno magnety
	- permanentní magnety -- stálé magnetické pole, nerosty
	- dočasný magnet -- magnetický materiál pouze dočasně za určitého stavu
		- působením permanentního magnetu -- feromagnetické materiály magnetické při styku s permanentním magnetem
		- elektromagnety -- tvorba magnetického pole při průchodu el.~proudu
- části magnetu
	- severní a jižní pól -- (domluvený) začátek a konec magnetických siločár, přitahování nesouhlasných
	- netečné pásmu -- střed magnetu, nepůsobení mag.~síly

### Stacionární mag.~pole
- neměnné v čase
- veličiny jej charakterizující konstantní
- zdroj -- stacionární magnet, vodič s konstantní mag.~polem

### Nestacionární mag.~pole
- proměnné vlastnosti v čase
- zdroj
	- pohybující se zdroj stacionárního mag.~pole
	- vodič s proměnným proudem
- důvod elektromagnetické indukce

### Ampérovo pravidlo pravé ruky
- pravidlo určující směr siločár mag.~pole
- vodič
	- palec -- směr proudu
	- prsty -- směr siločár
- cívka 
	- prsty -- směr proudu
	- palec -- směr siločár

\begin{figure}[htbp]
\centering
\subfloat[Přímý vodič]{\includegraphics[height=0.15\textheight]{20-right-hand-rule}}
\qquad
\subfloat[Cívka]{\includegraphics[height=0.15\textheight]{20-right-hand-coil}}
\caption{Ampérovo pravidlo pravé ruky}
\end{figure}

## Magnetická indukce
- značka~$\vec B$, jednotky~$\jd{T}$ (tesla), další $\jd{N.A^{-1}.m^{-1}}$
- vektorová veličina popisující silové účinky mag.~pole
- tvoří vektorové pole
- směr mag.~indukce popsán magnetickými siločárami

### Nabité částice v mag.~poli
- Lorenzova síla -- síla působící na pohybující se nabitou částici v mag.~polem
- popis síly veličinou magnetické indukce
- obecný tvar
	\eq{
		\vec F\\_m = Q(\vec v\times \vec B)
	}
	- $Q$ -- náboj částice
	- $\vec v$ -- vektor rychlosti částice
- zjednodušený tvar pro velikost $F\\_m$
	\eq{
		F\\_m = QvB\sin\alpha
	}
	- $\alpha$ -- úhel $\vec v$ a $\vec B$

\fullfig[width=0.4\textwidth]{20-castice}[Nákres situace nabité částice v mag.~poli]
\fullfig[width=0.8\textwidth]{20-castice-kladna}[Pohyb kladně nabité částice v mag.~poli]
\fullfig[width=0.8\textwidth]{20-castice-zaporna}[Pohyb záporně nabité částice v mag.~poli]

### Působení mag.~pole na vodič
- mag.~pole působí na vodič sílou
- výslednice působení magnetických sil na elektrony ve vodiči
	\eq{
		F = BIl\sin\alpha
	}
	- $l$ -- délka vodiče v poli
	- $I$ -- proud procházející vodičem
	- $\alpha$ -- úhel vodiče a $\vec B$, kolmé -- $\alpha="90\dg"$
- předpoklad homogenního mag.~pole, respektive konstantní mag.~indukce
- odvození\\\\\vspace{-1.5\baselineskip}
\begin{center}
\begin{minipage}{0.25\textwidth}
	\eq[m]{
		F &= QvB\sin\alpha\\\\
		F &= Q\frac{l}{t}B\sin\alpha\\\\
		F &= \frac{Q}{t}lB\sin\alpha\\\\
		F &= IlB\sin\alpha\\\\
	}
\end{minipage}
\begin{minipage}{0.25\textwidth}
	Považujme $Q$ za celkový náboj, který projde vodičem délky~$l$ za čas~$t$
\end{minipage}
\end{center}
- odvození obecného tvaru
	\eq[m]{
		\vec F = Q\vec v \times \vec B \quad&\Rightarrow\quad \d\vec F = \d Q\vec v\times \vec B\\\\
		\d\vec F &= \frac{\d Q}{\d t}\d t\vec v\times \vec B\\\\
		\d\vec F &= I\d l\times \vec B\\\\
		F &= I\int_k \d l\times B\\\\
	}
	- $k$ -- parametrická křivka vodiče

#### Flemingovo levé ruky
- prostředníček -- směr proudu
- ukazováček -- proti vektoru~$\vec B$
- palec -- směr~$\vec F\\_m$

\fullfig[width=0.25\textwidth]{20-left-hand-rule}[Flemingovo pravidlo levé ruky]

## Vytváření magnetického pole
### Přímý vodič
- siločáry ve tvaru soustředných kružnic
- velikost indukce
	\eq{
		B = \frac{\mu}{2\pi}*\frac{I}{d}
	}
	- $\mu=\mu_0\mu\\_r$ -- permeabilita prostředí
	- $d$ -- vzdálenost od vodiče

### Cívky
- tvar pole shodný s tyčovým magnetem
- solenoid -- průměr cívky mnohem menší než délka, pole uvnitř homogenní
- velikost indukce
	\eq{
		B = \mu_0\frac{NI}{l}
	}
	- $N$ -- počet závitů
	- $l$ -- délka cívky

## Magnetický indukční tok
- taky *tok magnetické indukce*
- značka~$\Phi$ (velké fí), jednotky~$\jd{Wb}$ (weber)
	- také jednotky~$\jd{T.m^2}$
- úhrnný tok magnetické indukce svislou plochou (míra počtu indukčních čar procházející plochou)
	\eq{
		\Phi = \int_SB*\d S \ztoho \Phi = BS\cos\alpha
	}
	- $S$ -- rovinná plocha
	- $\alpha$ -- úhel mezi $\vec B$ a normálových vektorem plochy

## Magnetické vlastnosti látek
- vytváření elementárního mag.~pole elektrony
- součet polí $\rightarrow$ celkové pole
- celkové pole závislé na uspořádaní elektronů

### Permeabilita
- značka~$\mu$, jednotky~$\jd{N.A^{-2}}$ nebo $\jd{H.m^{-1}}$ (henry na metr)
- účinek materiálu/prostředí na výsledné účinky působícího magnetického pole
- \eq{
		\mu = \frac{B}{H}
	}
	- $H$ -- intenzita magnetického pole, jednotky~$\jd{A.m^{-1}}$
		- na rozdíl od indukce nebere v potaz vliv vázaných magnetických proudů
		- vliv pouze vnějších magnetických polí
- permeabilita vakua~$\mu_0 = "4\pi e-7 N.A^{-2}"$


### Diamagnetické látky
- $\mu\\_r$ < 1 %>
- zeslabení externího mag.~pole
- vzácné plyny, měď, rtuť, nekovové materiály, kapaliny, organické látky\dots

### Paramagnetické látky
- $\mu\\_r$ > 1 (mírně větší)%>
- externí mag.~pole $\rightarrow$ mírné zesílení + vytvoření vlastního
- mag.~pole nelze uspořádat, bez vnějšího si jej neudrží
- hliník, sodík, draslík, platina, kyslík, uran, hořčík\dots

### Feromagnetické látky
- $\mu\\_r$ >> 1 %>
- značné zesílení mag.~pole
- ztráta vlastní při určité teplotě (Curieova teplota)
	- chladnutí bez mag.~pole $\rightarrow$ zničení struktury, přestává být magnetický
- železo, kobalt, nikl; hlavně v krystalech

#### Ferimagnetické látky (ferity)
- sloučeniny \ce{Fe2O3} a oxidy dalších kovů
- mnohem větší odpor než feromagnetické magnety
- v praxi široce používané

## Elektromagnetická indukce
- vznik indukovaného elektrického pole vytvořeno nestacionárním mag.~polem
- při změně mag.~toku -- deformace vodiče, průchod polem\dots

- Faradayův zákon elmag.~indukce -- udává velikost indukovaného napětí~$U\\_i$
	\eq{
		U\\_i = -\frac{\Delta \Phi}{\Delta t} = -\der{\Phi}{t}
	}

- Lensův zákon -- mag.~pole vybuzené indukcí působí proti  směru pohybu vnějšího pole

### Indukčnost
- značka~$L$, jednotky~$\jd{H}$ (henry)
- schopnost
	- vodivých těles vytvářet mag.~pole v závislosti na protékajícím proudu
	- indukovat napětí ve vodiči při změně mag.~pole
- základní vlastnost cívek

### Vlastní indukce
- indukované el.~pole v uzavřeném vodiči při změně mag.~pole v důsledku změny proudu na vodiči
- mag.~tok úměrný el.~proudu
	\eq{
		\Phi = LI
	}
	- $L$ -- indukčnost
- indukované napětí
	\eq{
		U\\_i = -\frac{\Delta\Phi}{\Delta t} = -L\frac{\Delta I}{\Delta t}
	}

## Foucaltovy proudy
- tzv. *výřivé proudy*
- vznik v plošných nebo objemových vodičích při změně mag.~toku
- vznik opačné reakce -- zeslabení mag.~toku; největší zeslabení uprostřed průřezu
- využití
	- stabilizace ručiček tachometru
	- indukční brzda
	- indukční vařiče, metalurgie -- využití tepelných účinků
	- indukční pece pece
