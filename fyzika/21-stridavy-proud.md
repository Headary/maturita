\setcounter{section}{20}
# Střídavý elektrický proud
- směr elektrického proudu v čase se mění
- průběhy
	- periodický -- okamžité hodnoty proudu se v čase periodicky mění a opakují, lze popsat jednoduchou funkcí
	- neperiodický -- okamžité hodnoty jsou náhodné, nelze určit následující hodnotu (např.~šum)
- rovnice střídavého el.~proudu
	\eq[m]{
		i(t) = I\\_m \sin(\omega t + \phi_0)\\\\
		u(t) = U\\_m \sin(\omega t + \phi_0 + \phi) 
	}
	- $i, u$ -- okamžitá hodnota proudu a napětí
	- $I\\_m, U\\_m$ -- maximální amplituda proudu a napětí
	- $\omega = 2\pi f = 2\pi/T$ -- úhlová rychlost 
	- $\phi_0$ -- počáteční fáze napětí
	- $\phi$ -- fázový posun mezi proudem a napětím

## Součástky v obvodu se střídavým napětím
### Rezistor
- odpor rezistoru v obvodu střídavého napětí -- rezistance
- značka~$X_R$, jednotky~$\ohm$ (ohm)
- stejné chování jako při stejnosměrném proudu
- výpočet 
	\eq{
		i = X_Ru \rightarrow X_R = R = \frac{u}{i} = \frac{U\\_m}{I\\_m}
	}
- nevytváří fázový posun
- změna energie na teplo

### Cívka
- induktance, značka~$X_L$, jednotky~$\ohm$ (ohm)
	\eq{
		X_L = \omega L = 2\pi fL
	}
	- $L$ -- indukčnost cívky
- platí Ohmův zákon
	\eq{
		I\\_m = \frac{U\\_m}{X_L}
	}
- při připojení na zdroj cívka vytváří elektromagnetické pole $\rightarrow$ vlastní indukce napětí $u\\_i = -L\Delta i/\Delta t$ s opačnou polaritou než $u$ $\rightarrow$ $u$ v maximu dříve než $i$ $\rightarrow$ fázový posun
	\eq{
		\phi = \frac{\pi}{2}
	}
	- proud zpožděn za napětím
- změna energie v magnetické pole

\fullfig[width=0.5\textwidth]{21-civka-posun}[Fázový diagram posunu z důvodu induktance]

### Kondenzátor
- kapacitance, značka~$X_C$, jednotky~$\ohm$ (ohm)
	\eq{
		X_C = \frac{\omega C}
	}
- platí Ohmův zákon
	\eq{
		I\\_m = \frac{U\\_m}{X_C}
	}
- záporný fázový posun -- napětí zpožděné za proudem
	\eq[m] {
		u &= U\\_m\sin\omega t\\\\
		i &= I\\_m\sin\\(\omega t + \frac{\pi}{2}\\)\\\\
		\phi &= -\frac{\pi}{2}
	}
- v obvodu střídavého proudu se chová jako prvek s odporem
	- lepší propustnost pro velké frekvence; špatná propustnost malých frekvencí
- přeměna energie na elektrické pole

## RLC Obvod
- RLC obvod -- obvod složen z resizoru~$R$, cívky~$L$ a kondenzátoru~$C$
	- zapojeny za sebou -- sériový RLC obvod

### Sériový RLC obvod
- $\avg{U_R}, \avg{U_L}, \avg{U_C}$ -- fázory otáčející se v čase
	- $\avg{U_R}$ -- fázor rezistoru, stejná fáze jako~$\avg{I\\_m}$
	- $\avg{U_L}$ -- fázor cívky, vektor posunut o~$"90\dg"$
	- $\avg{U_C}$ -- fázor kondenzátoru, vektor posunut o~$"-90\dg"$ 
- $U_{R\text{m}}, U_{L\text{m}}, U_{C\text{m}}$ -- amplitudy napětí
- výsledný fázor napětí roven součtu všech fázorů
	\eq[m]{
		U\\_m^2 &= U_{R\text{m}}^2 + (U_{R\text{m}}-U_{R\text{m}})^2 \text{(Pythagorova věta)}\\\\
		U\\_m^2 &= (X_RI\\_m)^2 + (X_LI\\_m-X_CI\\_m)^2\\\\
		U\\_m^2 &= I\\_m^2\\(X_R^2 + (X_L-X_C)^2\\)\\\\
		U\\_m^2 &= I\\_m\sqrt{X_R^2 + (X_L-X_C)^2}
	}

\fullfig[width=0.5\textwidth]{21-fazovy-diagram}

### Impedance
- $Z, [Z]=\jd{\ohm}$
- veličina jednotně popisující RLC obvod
	\eq{
		Z = \frac{U\\_m}{I\\_m} = \sqrt{X_R^2 + \\(X_L-X_C\\)^2} = \sqrt{X_R^2 + \\(\omega L-\frac{\omega C}\\)^2}
	}
- komplexní veličina

### Fázový posun
- značka~$\phi$, úhel
- posun napětí vůči proudu
	\eq[m]{
		\tg\phi&=\frac{X_L-X_C}{X_R}\\\\
		\cos\phi&=\frac{X_R}{Z}
	}

### Resonance sériového RLC obvodu
- nastává při $X_C = X_L$
- impedance je na minimální hodnotě $Z = X_R$
- fázový posun nulový
- proud nabývá maximální hodnoty
- rezonanční frekvence~$f_0$
	\eq{
		f_0 = \frac{2\pi\sqrt{LC}} \Rightarrow \omega = \frac{\sqrt{LC}}
	}

## Hodnoty střídavého proudu
### Efektivní hodnota proudu
- hodnota střídavého proudu odpovídající stejnosměrnému proudu
- *proud, který má v obvodu s rezistorem stejný výkon jako střídavý proud $i=I\\_m\sin\omega t$*
	\eq{
	I = \frac{I\\_m}{\sqrt{2}} = "0.707" I\\_m
	}

### Efektivní hodnota napětí
- hodnota střídavého proudu odpovídající stejnosměrnému napětí
- *napětí, který má v obvodu s rezistorem stejný výkon jako střídavý proud $i=I\\_m\sin\omega t$*
	\eq{
		U = \frac{U\\_m}{\sqrt{2}} = "0.707" I\\_m
	}

### Výkon
#### Efektivní hodnota výkonu
- výpočet z efektivních hodnot proudu a napětí
	\eq{
		P = UI = RI^2 = \frac{U^2}{R}
	}
- bez posunu fáze napětí

#### Střední hodnota
- průměrná hodnota výkonu při průběhu střídavého proudu
	\eq{
		P = \frac{2}U\\_mI\\_m = \frac{2}RI\\_m^2
	}

#### Činný výkon
- elektrická energie dodaná zdrojem změněna v užitečnou práci či teplo
	\eq{
		P = UI\cos\phi
	}
	- $\cos\phi$ -- účiník
- speciální případ pro RLC obvod s posunem fáze napětí

## Zařízení střídavého proudu
### Alternátor
- výroba střídavého napětí
- přeměna mechanické energie na elektrickou
- rotor -- stálý magnet, otáčí se
- stator -- vodič navinut v cívce s jádrem
- měnící se magnetické pole indukuje na statoru el.~proud

\fullfig[width=0.6\textwidth]{21-alternator}[Nákres jednoduchého alternátoru]

### Třífázový generátor (třífázový alternátor)
- výroba střídavého napětí
- stator -- statická vnější část -- 3 cívky
- rotor -- otáčivá část -- elektromagnet
- indukce střídavého napětí na každé cívce, napětí o třetinu fáze navzájem posunuty
	\eq{
		u_1 = U\\_m\sin\omega t
		u_2 = U\\_m\sin\\(\omega t+\frac{2}{3}\pi\\)
		u_3 = U\\_m\sin\\(\omega t+\frac{4}{3}\pi\\)
	}

\fullfig[width=0.6\textwidth]{21-three-phase}[Průběh tří fází generátoru]

### Transformátor
- změna napětí střídavého proudu
- energie zachována -- při zvýšení napětí snížení proudu a naopak
- dvě cívky na společném jádře
	- primární cívka -- přijímá vstupní napětí, vytváří elektromagnetické pole
	- sekundární cívka -- indukování proudu na základě elektromagnetického pole
- napětí na cívkách
	\eq{
		u = N\der{\Phi}{t}
	}
	- $\Phi$ -- magnetický tok
- transformační poměr
	\eq{
		k  = \frac{N_2}{N_1} = \frac{u_2}{u_1} = \frac{i_1}{i_2}
	}
	- $k>1$ -- zvýšení napětí
	- $k=1$ -- napětí se nemění
	- $k<1$ -- napětí se nemění %>

\fullfig{21-transformator}[Nákres transformátoru]

### Třífázová soustava střídavého napětí
- součet okamžitých hodnot napětí fází~$u_1+u_2+u_3=0$
- vodič z každé cívky spojen do uzlu -- nulový potenciál -- nulovací vodič
- druhé konce vyvedeny separátně -- fázové vodiče
- napětí
	- fázové napětí -- mezi fází a nulou -- $230 V$
	- sdružená napětí -- mezi fázemi, efektivní hodnota napětí $\sqrt{3}$krát větší než efektivní hodnota napětí fáze -- $"398 V"$ ($"400 V"$)
- zapojení
	- trojúhelník -- na spotřebičích sdružená (vyšší) napětí, absence nulovacího vodiče
	- hvězda -- na spotřebičích fázová napětí, nulovací vodič

\fullfig[width=0.8\textwidth]{21-trojuhelnik-hvezda}[Zapojení trojúhelník-hvězda]
