\setcounter{section}{24}
# Základní pojmy kvantové fyziky
- věda mikrosvěta
- malé rozměry ($"10^{-9} m"$, $"10^{-24} s"$)

## Planckova kvantová hypotéza
- záření se šíří nespojitě v **kvantech**
	- nejmenší jednotka energie elmag. záření
- energie kvanta úměrná frekvenci záření $E = hf$
	- Planckova konstanta $h="6.626e-34 J.s"$
- kvantum = **foton** -- částice záření -- Pojmenováno později Albertem Einsteinem
- energie elmag. záření vždy násobek energie kvanta

## Absolutně černé těleso
- ideální těleso pohlcující všechny vlnové délky
- ideální zářič, vyzařuje maximální množství energie
	- celková vyzářená energie závislá pouze na teplotě tělesa

### Wienův posunovací zákon
- \uv{V záření absolutně černého tělesa je maximální energie vyzařovaná na vlnové
	délce, která se s rostoucí termodynamickou teplotou snižuje}
- čím teplejší těleso, tím více vyzařuje záření o vyšších frekvencích / kratších
	vlnových délkách
- \eq{\lambda\\\_{max}=\frac{b}{T}}
	kde $b="2.898 mm.K"$ je Wienova konstanta

\fullfig{25-Wiens_law}[Nákres Wienova posunovacího zákona]

## Fotoelektrický jev
- elektrony emitované z látky (nejčastěji kovu) v důsledku absorpce elmag. záření
- energie kvanta (fotonu) předána elektronu, přeměna na:
	- vykování výstupní práce~$W$
	- kinetickou energie elektronu~$E_k$
- mezní frekvence~$f_0$ - nejmenší frekvence potřebná pro uvolnění elektronu
	- $\Rightarrow W = hf_0$
- \eq{hf=W+E\\\_k \ztoho hf=hf\_0+E\\\_k}

### Druhy fotoefektu
Vnitřní fotoefekt
: uvolněné elektrony zůstávají uvnitř látky, nekonají výstupní energie~$W$, zůstávají v ní jako vodivostní elektrony
Vnější fotoefekt
: jev na povrchu látky, elektrony uvolněny do okolí

## Comptonův jev
- Arthur Holly Compton, 1923
- elektromagnetická vlna interaguje s atomem
- foton předá atomu část své energie -> změna vlnové délky záření

\fullfig{25-compton}[Nákres Comptonova jevu]

## Vlastnosti fotonů
- částice elektromagnetického záření
- pohybují se rychlostí světla~$c\doteq "2.998e8 m.s^{-1}"$
- energie:
	\eq{E = hf=h\frac{c}{f}} 
- hybnost:
	- vztah platící díky relativistickému vztahu pro energii $E=mc^2$
	\eq{p=mc=\frac{E}{c}=\frac{hf}{c}=\frac{h}{\lambda}}

% https://www.gymkren.cz/text_old/Fyzika/f28.pdf

## Korpuskulárně vlnový dualismus
- stejně jako vlna na vlastnosti částice, tak částice má vlastnosti vlny
- De Broglie -- 1924 -- \uv{s každou částicí o hybnosti~$p$ je spjato vlnění} ->
*de Broglieovy vlny (hmotnostní vlny)*
\eq{\lambda=\frac{h}{p}=\frac{h}{mv}}

## Huygensův princip
- *\uv{Každý bod vlnoplochy, do něhož dospělo vlnění v určitém okamžiku, můžeme
	pokládat za zdroj elementárního vlnění, které se z něho šíří
	v~elementárních vlnoplochách. Vlnoplocha v dalším časovém okamžiku je
	vnější obalová plocha všech elementárních vlnoploch}*
- jednotlivé vlnoplochy spolu interferují a vytvářejí vnější vlnoplochu
- jestliže vlna narazí na štěrbinu, bude se štěrbina chovat jako nový zdroj vlny

\fullfig{25-heygens}[Heygensův jev u štěrbiny]

### Dvouštěrbinový experiment
- důkaz dualismu vlna a částic a Huygensova principu
- proud elektronů po průchodu dvěma štěrbinami vykazují interferenci ->
	elektrony se chovají jako vlna

\fullfig{25-double-slit}[Dvouštěrbinový experiment]

## Popis částic v mikrosvětě
### Heinsenbergův princip neurčitosti
- čím přesněji znám jednu vlastnost, s tím menší přesností určím druhou
	\eq[m]{
		\Delta x\Delta p\_x &\geq \frac{\hbar}{2}\\\\
		\Delta y\Delta p\_y &\geq \frac{\hbar}{2}\\\\
		\Delta z\Delta p\_z &\geq \frac{\hbar}{2}
	}
	- $\Delta x$ -- neurčitost polohy
	- $\Delta p\_x$ -- neurčitost hybnosti
	- $\hbar = h/2\pi$ -- redukovaná Planckova konstanta

### Vlnová funkce
- matematický popis kvantového stavu částice v izolovaném kvantovém systému
- \eq{\Psi(x,y,z,t)}
- odvozena ze Schrödingerovy rovnice
- pravděpodobnost naměření částice na daném místě nebo s danou hybností:
	\eq{\abs{\Psi(x,y,z,t)}^2}

## Laser
- *L*ight *A*mplification by *S*timulated *E*mission of *R*adiation
- monochromatický, koherentní, jednoduše ovladatelný a vysoce zaostřitelný
	zdroj světla
- atom absorbuje záření, excituje (elektron jde do vyššího energetického stavu
	/ vyšší hladiny), elektron je vyražen z excitované hladiny fotonem,
	elektron se přesunuje do nižší hladiny a emituje foton
- využití
	- spektroskopie
	- komunikace (optická internetová vlákna, satelity)
	- řezání, sváření, vypalování
	- lidar, zaměřování cílů, navádění střel

\fullfig[width=0.6\textwidth]{25-stimulated-emission}[Princip fungování LASERu]
