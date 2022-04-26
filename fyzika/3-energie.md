\setcounter{section}{2}
# Druhy energie a jejich vzájemní přeměny. Zákony zachování

## Mechanická práce
- značka~$W$, $[W]=\jd{J}=\jd{Nm}=\jd{kg.m^2.s^{-2}}$
- skalární veličina
- síla koná práci, pokud se jejím důsledkem pohybuje těleso
- při konstantní síle~$F$ rovnoběžné se směrem pohybu je práce vykonána po dráze~$s$
	\eq{
		W = Fs
	}
- obecný tvar
	\eq{
		W = \int_C \vect F(s) \d s
	}
	- $C$ -- křivka trajektorie

## Mechanická energie
- značka~$E$, $[E]=\jd{J}$
- skalární veličina
- míra schopnosti tělesa konat mechanickou práci
- energie uložena v rámci tělesa v mnoha podobách
	- kinetická energie -- energie pohybu
	- potenciální energie -- těleso v silových polích jiných těles
		- tíhová potenciální energie -- silové pole Země
	- potenciální energie pružnosti -- natažení/stlačení
- (při nulových ztrátách) $\Delta E = W$
- pracovní diagram -- graf závislosti síly na dráze % TODO obrázek
	- integrálem práce

### Kinetická energie
- energie uchována v pohybu tělesa
- nezávislá na směru rychlosti, pouze na velikosti
- rychlost relativní k ostatním tělesům $\rightarrow$ kinetická energie relativní ke vztažné soustavě

#### Odvození
\eq[m]{
	E\\_k &= W = Fs 				& E\\_k &= W = \int_0 F\d s\\\\
	E\\_k &= ma * \frac{2}at^2 	& E\\_k &= \int_0 ma\d s = m \int_0 \der{v}{t}\d s\\\\
	E\\_k &= \frac{2} ma^2t^2 	& E\\_k &= m \int_0 \der{s}{t}\d v = m \int_0 v\d v\\\\
	E\\_k &= \frac{2} mv^2 		& E\\_k &= \frac{2} m v^2\\\\
}

### Potenciální energie
- energie, kterou má těleso v potenciálovém poli
- gravitační/tíhová potenciální energie, PE pružnosti, tlaková PE\dots
- změna PE -- práce vykonána proti silovému poli
	\eq{
		\Delta E\\_p = -W
	}

#### Tíhová potenciální energie
- potenciální energie blízko povrchu země způsobená tíhou těles
- změna potenciální energie
	\eq{
		\Delta E\\_p = -W = -\vect F s = -(-F)*s = mgs = mg\Delta h
	}
- celková potenciální energie
	\eq{
		E\\_p = mgh
	}

#### Potenciální energie pružnosti
- energie uložena v natažení/zkrácení pružiny
	\eq[m]{
		\Delta E\\_p &= W = \vect Fs = \int_0^t \vect F\vect v\d t\\\\
		\Delta E\\_p &= \int_0^t ky v_y\d t\\\\
		\Delta E\\_p &= \int_0^t ky \der{y}{t}\d t = \int_{y(0)}^{y(t)} ky \d y\\\\
		\Delta E\\_p &= \frac{2}ky^2
	}

#### Gravitační potenciální energie
- energie tělesa v radiálním gravitačním poli tělesa
- změna gravitační potenciální energie (kladný směr od tělesa)
	\eq[m]{
		\Delta E\\_p &= -W = -\int_{r_1}^{r_2} -F\\_g \d r\\\\
		\Delta E\\_p &= \int_{r_1}^{r_2} G\frac{mM}{r^2} \d r\\\\
		\Delta E\\_p &= GmM\int_{r_1}^{r_2} \frac{r^2} \d r\\\\
		\Delta E\\_p &= GmM\left[-\frac{r}\right]_{r_1}^{r_2}\\\\
		\Delta E\\_p &= -GmM\left(\frac{r_2}-\frac{r_1}\right)\\\\
	}
- celková potenciální energie -- záporná práce přenesení tělesa z nekonečna do vzdálenosti~$R$
	\eq[m]{
		E\\_p &= -\int_{\infty}^{r} -F\\_g \d r\\\\
		E\\_p &= GmM\left[-\frac{r}\right]_{\infty}^{r}\\\\
		E\\_p &= GmM\left(-\frac{R}+\lim_{r\to\infty}\frac{r}\right)\\\\
		E\\_p &= -\frac{GmM}{R}
	}

## Zákony zachování
### Zákon zachování mechanické energie
- jestliže těleso nepodléhá účinkům okolí, pak mechanická energie (součet mechanické a potenciální) je konstantní
	\eq{
		E\\_p + E\\_k = \const
	}

### Zákon zachování energie
- \emph{\uv{Celková energie izolované soustavy zůstává konstantní při všech dějích, které v ní probíhají.}}
- energie nevzniká ani nezaniká, vždy se pouze přeměňuje na jinou formu
- celková energie izolované soustavy zůstává konstantní
- obecná formulace -- první termodynamická věta
- příklad: přeměna kinetické energie na teplo z důvodu tření

## Perpetuum mobile
- stroj konající práci bez vnější energie
- účinnost dosáhne nebo přesáhne $"100 \%"$
- nerealistické, porušuje termodynamické zákony a zákony zachování

### První typ
- produkuje nejméně tolik energie, kolik samo spotřebuje
- může pracovat neomezeně dlouho
- porušuje první termodynamický zákon

### Druhý typ
- generuje mechanickou energii z tepla
- neporušuje I.~TZ, ale porušuje II.~termodynamický zákon (teplo se přesouvá z teplejšího do studenějšího)
- obvykle pouze jeden zásobník tepla, samovolně chlazen bez přesunu tepla

## Využití přeměny energie
- energetika
	- výroba elektrické energie z mechanické, tepelné nebo jaderné
	- uložení energie -- přečerpávání vody ($E\\_k \leftrightarrow E\\_p$), setrvačník
- průmysl -- motory -- spalování paliva pro mechanickou energii
- hospodářství, obyčejný život\dots
