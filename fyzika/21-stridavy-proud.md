\setcounter{section}{20}
# Střídavý elektrický proud
- směr elektrického proudu v čase se mění
- průběhy
	- periodický -- okamžité hodnoty proudu se v čase periodicky mění a opakují, lze popsat jednoduchou funkcí
	- neperiodický -- okamžité hodnoty jsou náhodné, nelze určit následující hodnotu (např.~šum)
- rovnice střídavého el.~proudu
	\eq[m]{
		i(t) = I\\_m \sin(\omega t + \phi_0) 
		u(t) = U\\_m \sin(\omega t + \phi_0 + \phi) 
	}
	- $i, u$ -- okamžitá hodnota proudu a napětí
	- $I\\_m, U\\_m$ -- maximální amplituda proudu a napětí
	- $\omega = 2\pi f = 2\pi/T$ -- úhlová rychlost 
	- $\phi_0$ -- počáteční fáze napětí
	- $\phi$ -- fázový posun mezi proudem a napětím

## Součástky v RLC obvodu
- RLC obvod -- obvod složen z resizoru~$R$, cívky~$L$ a kondenzátoru~$C$

### Rezistor
- odpor rezistoru v obvodu střídavého napětí -- rezistance
- značka~$X_R$, jednotky~$\ohm$ (ohm)
- stejné chování jako při stejnosměrném proudu
- výpočet 
	\eq{
		i = X_Ru \rightarrow X_R = \frac{u}{i} = \frac{U\\_m}{I\\_m}
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
		\phi = -\frac{\pi}{2}
	}
	- proud zpožděn za napětím
- změna energie v magnetické pole

\fullfig[width=0.5\textwidth]{21-civka-posun}[Fázový diagram posunu z důvodu induktance]

### Kondenzátor
- kapacitance, značka~$X_C$, jednotky~$\ohm$ (ohm)
- záporný fázový posun -- napětí se zpožďuje za proudem
### Efektivní hodnoty
