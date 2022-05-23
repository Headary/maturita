\setcounter{section}{22}
# Světlo, vlnové vlastnosti světla
- speciální typ elmag.~záření
- $"3.9e14 Hz"$ -- $"7.9e14 Hz"$
- $"390 nm"$ -- $"760 nm"$

## Základní pojmy
### Optické prostředí
- prostředí šíření elmag.~záření
- průhledné/průsvitné/neprůhledné, barevné/čiré, homogenní/nehomogenní, izotropní/anizotropní

### Světelný zdroj
- zdroj elektromagnetické záření v rozmezí viditelného světla
- přírodní -- kosmické (hvězdy), chemické (oheň), biologické (luminiscence), elektrické výboje (výboj, blesk)
- umělé -- žárovky, zářivky, LED diody\dots
- bodové a plošné zářiče

### Rychlost světla
- rychlost světla **ve vakuu**
- $"299~792~458 m.s^{-1}"$
- univerzální fyzikální konstanta
- nejvyšší rychlost, které lze dosáhnout

## Zákony a principy
### Zákon přímočarého šíření světla
- v **homogenním** prostředí se svazek světla šíří **přímočaře**

### Princip nezávislosti světelných paprsků
- jednotlivé světelné paprsky se navzájem při šíření neovlivňují
- při vzájemném protnutí navzájem neinteragují

### Zákon odrazu
- \uv{*úhel odrazu je roven úhlu dopadu*}
- úhel relativní k normálovému vektoru povrchu
- např. při úplném odrazu ($\alpha$ větší než kritický úhel), na zrcadle, \dots
- částečně i na rozhraní prostředí

\fullfig[width=0.3\textwidth]{24-odraz}[Zákon odrazu]

### Snellův zákon (zákon lomu)
- popis šíření světla při přechodu přes rozhraní dvou různých prostředí
- poměr sinů úhlů je poměr rychlostí záření v jednotlivých prostředí
	\eq{
		\frac{\sin\alpha}{\sin\beta}=\frac{v_1}{v_2}
	}
- dva druhy
	- lom ke kolmici -- $\alpha > \beta$, $n_2 > n_1$
	- lom od kolmice -- $\beta > \alpha$, $n_1 > n_2$

#### Index lomu
- bezrozměrná fyzikální veličina
- popis šíření světla v prostředí
- poměr rychlosti světla v prostředí a vakuu
	\eq{
		n=\frac{c}{v}
	}
- využití při výpočtu úhlů při lomu světla
	\eq{
		\frac{\sin\alpha}{\sin\beta} = \frac{v_1}{v_2} 
		\frac{\frac{n_1}}{\frac{n_2}} = \frac{n_2}{n_1}
	}
- různá hodnota pro každé prostředí, měřena experimentálně

| Látka | index lomu |
|-----:|:----------|
| vakuum| 1 |
| vzduch| 1,00026 |
| led 	| 1,31 |
| voda 	| 1,33 |
| etanol| 1,36 |
| sklo 	| 1,5 až 1,9 |
: Příklady hodnot~$n$ pro různé materiály

#### Mezní úhel~$\alpha\\_m$
- jev při lomu od kolmice
- výsledný úhel lomu~$\beta$ roven~$90\dg$
- jestliže $\alpha > \alpha\\_m$, poté dochází k **úplnému odrazu**

\fullfig[width=0.9\textwidth]{24-lom}[Vyobrazení lomu světla, mezního úhlu a úplného odrazu]

## Rozklad světla
- bílé světlo -- složeno z několika složek světla / barev
- různý ohyb jednotlivých složek na optickém rozhraní -> rozklad světla
	- červené světlo -- nejmenší ohyb
	- fialové světlo -- největší ohyb
	- vznik duhy
- rozklad světla na hranolu -- objeveno Newtonem

\fullfig{23-prism}[Rozklad světla na hranolu]

## Interference světla
- vzájemné ovlivnění dvou světelných vln
- skládání vln do jedné
- dle posunu a frekvencí se navzájem zesilují nebo naopak zeslabují
- nejčastěji monochromatické světlo
- pozorovatelné u koherentního vlnění (stejné~$\lambda$ a $f$)
- interferenční maximum -- dráhový rozdíl roven sudému počtu půlvln
	\eq{
		\Delta l = 2k \frac{\lambda}{2}
	}
	- $\Delta l$ -- vlnová délka, $k$ -- přirozené číslo, $\lambda$ -- vlnová délka
- interferenční minimum -- dráhový rozdíl roven lichému počtu půlvln
	\eq{
		\Delta l = \(2k+1\)\frac{\lambda}{2}
	}

\fullfig{23-interference}[Příklad interference]
### Interference na tenké vrstvě
- tenká vrstva -- mýdlová bublina, antireflexní vrstva na brýlích...
- část světla se odrazí na prvním rozhraní, část až na druhém
	\eq{
		\Delta l = 2nd
	}
	- $n$ -- index lomu prostředí, $d$ -- tloušťka tenké vrstvy
- výsledné paprsky interferují
- změna fáze
	- dopad na rozhraní řidší-hustší -- fáze se mění
	- dopad na rozhraní hustší-řidší -- fáze se nemění
\fullfig{23-vrstva}[Složení světla na tenké vrstvě]

## Ohyb světla na dvojštěrbině, mřížce
- ohyb světla způsoben malými otvory
- světlo dojde ke štěrbině -- vznik vlnoplochy -- štěrbina se chová jako zdroj
- interference světla
- podmínka maxima: $b\sin\alpha_k = k\lambda, k\in\mathbb{N}$

\fullfig{23-double-slit}[Šíření paprsků světla na dvojštěrbině]

### Dvojštěrbina
- interference světla ze dvou štěrbin
\fullfig{23-double-slit-pattern}[Interference světelných vln na dvojštěrbině]

### Mřížka
- velký počet štěrbin vedle sebe
- úzká interferenční maxima
- rozklad dopadajícího bílého světla v maximech na jednotlivé barevné složky
	- blíže k nultému maximu fialová, dále od něj červená

\fullfig{23-mřížka}[Ohyb světla na mřížce]

## Polarizace světla
- světlo -- elektromagnetické vlnění
	- kmitání vektoru elektromagnetické pole~$\vect E$
	- k němu kolmý vektor magnetického pole~$\vect B$
	- oba kolmé na směr pohybu
- nepolarizované záření -- $\vect E$ má náhodný směr/otočení
- polarizované světlo -- všechny svazky světla~$\vect E$ mají stejný směr/otočení

\fullfig{23-polarized-filter}[Příklad nepolarizovaného a polarizované světla]

### Druhy polarizace
- lineárně polarizované světlo
- kruhové polarizované
- elipticky polarizované

### Zdroje
- odraz -- při odrazu částečná polarizace, ovšem může nastat i úplná při specifickém úhlu
- lom -- pouze částečná polarizace
- dvojlom
	- na anizotropních krystalech -- index lomu závislý na směru paprsku
	- rozdělení paprsku na řádný (podléhá zákonům lomu) a mimořádný (nepodléhá zákonům lomu), oba polarizované
- polaroid
	- dovolí projí pouze jeden směr paprsku, ostatní pohltí
