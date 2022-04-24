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
- obecný případ ($\omega_1 \neq \omega_2$)
	- nejedná se o harmonické vlnění
	- výsledné kmitání získáno jako součet jednotlivých kmitání~$y=y_1+y_2$
- speciální případ -- kmitání o stejné rychlost ($\omega_1=\omega_2$)
	- výsledný fázor vektorových součtem všech fázorů
	- v souladu s principem superpozice (výslednice sil je rovna vektorovému součtu všech působící sil)
	- obecný případ -- amplituda a fáze závisí na amplitudách, fázovém rozdílu a fázích jednotlivých kmitání
	- $\Delta \phi = 0$ -- vlny přesně na sobě -- $y\\_m=y_{\text{m}_1}+y_{\text{m}_2}$
	- $\Delta \phi = "180\dg"$ -- vlny přesně od sebe -- $y\\_m=y_{\text{m}_1}-y_{\text{m}_2}$
\fullfig[width=0.95\textwidth]{14-superpozice}[Skládání vln stejné úhlové frekvence]

## Dynamika kmitavého pohybu
- příčinou kmitavého pohybu sílu
	- kyvadlo -- tíhová síla
	- pružina -- síla pružnosti
- z II.~Newtonova zákona -- pohybová rovnice harmonického oscilátoru
	\eq{
		F = ma = -m\omega^2 y = -m\omega^2 y\\_m \sin\(\omega t\)
	}

### Pružina
- síla pružnosti 
	\eq{
		F\\_p = k\Delta l
	}
	- $k$ -- tuhost pružiny
- rovnovážná poloha -- vyrovnání tíhové síly a síly pružnosti
	\eq[m]{
		F\\_G &= F\\_p\\\\
		mg &= k\Delta l
	}
- pohyb oscilátoru -- výsledná síla rovna součtu tíhové a pružné síly (kladný směr vzhůru)
	\eq[m]{
		F &= F\\_G - F\\_p\\\\
		F &= -mg + k(\Delta l - y)\\\\
		F &= -mg + k\Delta l - ky \\\\
		F &= -ky
	}
	- směr síly opačný směru protažení -- směr vždy k rovnovážné poloze
- perioda a frekvence -- z pohybové rovnice harmonického oscilátoru
	\eq[m]{
		-ky &= -m\omega^2 y\\\\
		\omega &= \sqrt{\frac{k}{m}}\\\\
		T &= \frac{2\pi}{\omega}\\\\
		T &= 2\pi \sqrt{\frac{m}{k}}\\\\
		f &= \frac{2\pi}\sqrt{\frac{k}{m}}
	}

\fullfig[width=0.65\textwidth]{14-pruzina}[Zavěšení závaží na pružinu]

### Kyvadlo
- několik typů kyvadel
	- matematické kyvadlo -- hmotných bod na dlouhém závěsu, malá výchylka ($\alpha \approx \sin\alpha$)
	- fyzické kyvadlo -- nutno započítat moment setrvačnosti, nelze aproximovat úhel
	- kónické kyvadlo -- při pohybu opisuje tvar kužele, trajektorií kružnice
	- torzní kyvadlo -- kmitání deformací kroucením vlákna nebo tyče 
	- \hspace{0cm}\vdots
- dále aproximace matematického kyvadla -- horizontální výchylka rovna délce oblouku
	\eq{
		\sin\alpha = \frac{y'}{l} \approx \frac{y}{l}
	}
- zrychlení způsobeno složkou tíhové síly kolmé k závěsu
	\eq{
		F = -F\\_G\sin\alpha = -mg\frac{y}{l}
	}
	- záporný směr -- síla orientována opačným směrem než vektor polohy~$y$ (či hodnota sinu)
- perioda a frekvence -- z pohybové rovnice harmonického oscilátoru
	\eq[m]{
		-mg\frac{y}{l} &= -m\omega^2 y\\\\
		\frac{g}{l} &= \omega^2\\\\
		\omega &= \sqrt{\frac{g}{l}}\\\\
		T &= \frac{2\pi}{\omega} = 2\pi\sqrt{\frac{l}{g}}\\\\
		f &= \frac{2\pi}\sqrt{\frac{g}{l}}
	}

\fullfig[width=0.65\textwidth]{14-kyvadlo}[Působení sil na kyvadlo]

## Rezonance
## Energie kmitání
