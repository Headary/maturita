\setcounter{section}{13}

# Mechanické kmitání
% charakteristika
- změna veličiny s opakováním nebo její tendencí
- srdce, ušní bubínek, kyvadlo, rádiové vlny, zvuk\dots
- **mechanický oscilátor** -- volně kmitající zařízení, bez vlivu okolí
	1. kmitání tělesa na pružině -- kmitání způsobeno pružností
	1. kyvadlo -- kmitání způsobeno tíhovou silou
- rovnovážná poloha -- poloha, ve které jsou působící síly v rovnováze; minimální energie oscilátoru
- trajektorie -- úsečka, část křivky
	- ve stejných časových intervalech různá dráha -- nerovnoměrný pohyb
	- periodické opakování pohybu -- rovnoměrný pohyb
- kmit~$T$ -- část pohybu, kdy se těleso dostane do stejného stavu (polohy, rychlosti, zrychlení\dots)
- kyv~$\tau$ -- polovina doby kmitu, navrácení do rovnovážné polohy ale s opačnou rychlostí

## Kinematika kmitavého pohybu
- popis kmitání tělesa na pružině

### Veličiny
- perioda~$T, [T]=\jd{s}$
	- čas navrácení do původního stavu
	- délka kmitu
- frekvence~$f, [f]=\jd{s^{-1}}$
	- počet zopakování periody za jednotku času
	- počet kmitů za jednotku času
	- převrácená hodnota periody
- okamžitá výchylka~$y, [y]=\jd{m}$
	- poloha mechanického oscilátoru na ose~$y$
- amplituda kmitu (maximální výchylka)~$y\\_m$ -- největší hodnota~$y$
- fáze kmitavého pohybu~$\phi, [\phi] = \jd{rad}$
	- úhel, korelace s úhlovou dráhou při pohybu po kružnici
	- určuje ve které fázi pohybu se právě nachází
- úhlová frekvence~$\omega, [\omega] = \jd{rad.s^{-1}}$
	- rychlost kmitání

\fullfig[width=16cm]{14-vlna}[Graf výchylky v závislosti na čase]

### Poloha tělesa při kmitavém pohybu
- $y$-ovou složku pohybu možnost popsat pomocí funkce sinus
	\eq{
		y = y\\_m \sin\phi
	}
	- sinus -- hodnoty mezi $0$ a~$1$ $\Rightarrow$ nutno vynásobit~$y\\_m$ pro dosažení celého rozsahu hodnot
	- $\phi$ -- fáze kmitu vyjádřena jako úhel v kruhu
- rychlost kmitání~$\omega$ -- úhel za čas ($\omega = \phi/t$) $\Rightarrow$ $\phi = \omega t$
	\eq{
		y = y\\_m \sin \(\omega t\)
	}
- 1~kmit -- úhel~$\phi = 2\pi$ a čas~$T$
	\eq{
		\omega = \frac{2\pi}{T} = 2\pi f \ztoho y = y\\_m \sin \\(\frac{2\pi}{T}t\\) = y\\_m \sin \\(2\pi ft\\)
	}

### Rychlost kmitavého pohybu
- maximální při průchodu rovnovážnou polohou ($y = 0$), minimální v amplitudě ($y=\pm y\\_m$)
- odvození
	\eq[m]{
		v &= \dot{y}\\\\
		v &= \der{}{t}y\\_m \sin \(\omega t\)\\\\
		v &= \omega y\\_m \cos\(\omega t\)
	}
	- alternativní odvození z pohybu po kružnici
- maximální rychlost~$v\\_m = \omega y\\_m$

### Zrychlení kmitavého pohybu
- směr vždy k rovnovážné poloze -- opačné znaménko než okamžitá poloha~$y$
- shodný se směrem působící síly
- maximální hodnota v maximální výchylce
- odvození
	\eq[m]{
		a &= \dot{v}\\\\
		a &= \der{}{t}\omega y\\_m \cos\(\omega t\)\\\\
		a &= -\omega^2 y\\_m \sin\(\omega t\) = -\omega^2 y
	}

### Skládání kmitů
- možno skládat několik kmitů do jednoho
- výsledný fázor vektorových součtem všech fázorů
	- v souladu s principem superpozice (výslednice sil je rovna vektorovému součtu všech působící sil)

## Dynamika kmitavého pohybu
## Rezonance
## Energie kmitání
