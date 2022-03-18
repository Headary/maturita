\setcounter{section}{5}

# Gravitační pole a pohyb těles v tomto poli

## Gravitační pole
- vzájemné přitažlivé silové působení těles
- zdrojem pole všechna tělesa
- gravitace -- nejslabší sila

### Gravitační síla
- značka~$\vect F\_g$, $[\vect F\_g]=\jd{N}$
- přitahování každých dvou těles na sebe (např.~kámen a Země)
- leží na spojnice těžišť 
- poprvé popsána Isaacem Newtonem (17.~stol.) $\rightarrow$ Newtonův gravitační zákon
	\eq[m]{
		F\_g &= G\frac{m_1m_2}{r^2}\\\\
		\vect F\_g &= G\frac{m_1m_2}{\abs{\vect r}^2}\hat{\vect r}
	}
	- $G="6.674e-11 N.m^2.kg^{-2}"$ -- gravitační konstanta
	- $m_1,m_2/m,M$ -- hmotnost prvního a druhého tělesa
	- $\vect r$ -- průvodič vzdálenosti těles; $\hat{\vect r}$ -- normovaný vektor
- stejná síla působí na obě tělesa, ale v opačných směrech

\fullfig[width=0.6\textwidth]{6-Fg}

### Intenzita gravitačního pole
- značka~$\vect K$, $[\vect K]=\jd{N.kg^{-1}}=\jd{m.s^{-2}}$
- veličina popisující gravitační pole
- podíl gravitační síly, která v daném místě působí na hmotný bod, a hmotnosti daného bodu
	\eq[m]{
		K &= \frac{F\_g}{m} = G\frac{M}{r^2}\\\\
		\vect K &= \frac{\vect F\_g}{m} = G\frac{M}{\abs{\vect r}^2}\hat{\vect r}
	}
- gravitační síla normovaná na jednotku hmotnosti
- představuje zrychlení působící na všechna tělesa
- shodný směr s vektorem gravitační síly

### Gravitační zrychlení
- značka~$\vect a\_g$, $[\vect a\_g]=\jd{m.s^{-2}}$
- zrychlení udávané gravitačním polem směrem ke středu pole
- rovno intenzitě gravitačního pole
	\eq{
		\vect a\_g = \vect K
	}
- nezávislé na hmotnosti tělesa

### Tíhová síla a zrychlení
- tíhová síla $\vect F\_G$ -- výslednice sil působících na těleso na povrchu Země
	- započítána gravitační síla, ale i odstředivá či gravitační síla ostatních vesmírných těles
	- působiště v těžišti
- tíha $\vect G$
	- působení tělesa v tíhovém poli Země na jiná tělesa
	- projevení jako tlaková síla $\rightarrow$ působiště v bodě dotyku
- tíhové zrychlení $\vect g$
	- způsobeno tíhovou sílou
	- různé pro pozice na Zemi (hlavní závislost na zeměpisné šířce)
	- experimentálně měřeno

\fullfig[width=0.35\textwidth]{6-FG}[Skládání gravitační a odstředivé síly do tíhové na povrchu Země]

## Typy dle tvaru
### Radiální
- gravitační síla/intenzita mířící do jednoho středu
- středově symetrické do všech směrů
- možnost spojit místa se stejnou intenzitou pomocí kružnic
- intenzita klesá s druhou mocninou vzdálenosti od středu
- gravitační pole Země
	\eq{
		K = G\frac{M\_Z}{(R\_Z+h)^2}
	}
	- $M\_Z$ -- hmotnost Země
	- $R\_Z$ -- poloměr Země

### Homogenní
- trajektorie vzhledem k rozměrům Země velice malá a blízko~$\rightarrow$ pole lze považovat za homogenní
- zjednodušení radiálního pole
- na všech místech stejný gravitační intenzita~$\vect K$

\begin{figure}[htbp]
	\centering
	\subfloat[Radiální pole]{\includegraphics[height=0.2\textheight]{6-pole-radial}}
	\qquad
	\subfloat[Homogenní pole]{\includegraphics[height=0.2\textheight]{6-pole-homog}}
	\caption{Vektorově znázorněno gravitační pole}
\end{figure}

## Pohyb v gravitačním poli
## V homogenní poli
- působení konstantní tíhové síly na těleso $\rightarrow$ změna trajektorie tíhovým zrychlením

### Volný pád
- nejjednodušší pohyb v tíhovém poli Země
- nulová počáteční rychlost i dráha
- zrychlování tělesa směrem k zemi zrychlením~$\vect g$
	\eq{
		s = \frac{2} gt^2
	}

### Svislý vrh vzhůru
- vržení tělesa s počáteční rychlostí~$v_0$ svisle vzhůru
- působení~$\vect g$ proti směru pohybu
- trajektorií přímka
- okamžitá výška~$y$:
	\eq{
		y = v_0t - \frac{2}gt^2
	}
- maximální výška~$h$~-- těleso zpomalí na nulu (zrychlení dorovná počáteční rychlost)
	\eq{
		v_0 = gt_h \ztoho t_h = \frac{v_0}{g}
		h = v_0t_h - \frac{2}gt_h^2 = \frac{v_0}{2g}
	}
- stejné zrychlení nahoru i dolů $\Rightarrow$ stejná dráha a stejná počáteční a konečná rychlost

### Svislý vrh dolů
- vržení tělesa s počáteční rychlostí~$v_0$ svisle dolů z počáteční výšky~$h$
- působení~$\vect g$ ve směru pohybu
- trajektorií přímka
- okamžitá výška~$y$:
	\eq{
		y = h - \\(v_0t + \frac{2}gt^2\\)
	}

### Vodorovný vrh
- vržení tělesa s počáteční rychlostí~$v_0$ ve vodorovném směru z počáteční výšky~$h$
- výsledek složení volného pádu ve svislém směru a rovnoměrného přímočarého pohybu ve vodorovném směru
- trajektorií parabola
- okamžité souřadnice bodu
	\eq[m]{
		x &= v_0t\\\\
		y &= h-\frac{2}gt^2
	}
- doba pádu závislá na dosažení země na $y$-ové ose
	\eq[m]{
		y&=0\\\\
		h&=\frac{2}gt\_d^2\\\\
		t\_d &= \sqrt{\frac{2h}{g}}
	}
- maximální vzdálenost doletu~$d$
	\eq[m]{
		x &= v_0t\\\\
		d &= v_0t\_d = \sqrt{\frac{2h}{g}}
	}

### Šikmý vrh
- vržení tělesa s počáteční rychlostí~$v_0$ pod úhlem~$\alpha$
- skládání přímočarého pohybu a svislého vrhu
- nenulová vodorovná~$v_{x_0}$ a svislá~$v_{y_0}$ rychlost
	\eq[m]{
		v_{x_0} &= v_0\cos\alpha\\\\
		v_{y_0} &= v_0\sin\alpha
	}
- okamžitá rychlost~$v_x$ neměnná a $v_y$ ovlivněna zrychlením~$g$
	\eq[m]{
		v_x &= v_{x_0} = v_0\cos\alpha\\\\
		v_y &= v_{y_0} - gt = v_0\sin\alpha - gt
	}
- okamžité souřadnice bodu -- parametrické vyjádření trajektorie
	\eq[m]{
		x &= v_xt = v_0t\cos\alpha\\\\
		y &= v_{y_0}t - \frac{2}gt^2 = v_0t\sin\alpha - \frac{2}gt^2
	}
- rovnice trajektorie
	\begin{gather\*}
		x = v_0t\cos\alpha \ztoho t = \frac{x}{v_0\cos\alpha}\\\\
		y = v_0t\sin\alpha - \frac{2}gt^2\\\\
		y = v_0\sin\alpha \frac{x}{v_0\cos\alpha} - \frac{2}g\\(\frac{x}{v_0\cos\alpha}\\)^2\\\\
		y = x\tg\alpha - \frac{gx^2}{2v_0^2\cos^2\alpha}
	\end{gather\*}
- doba letu~-- $v_y$ dosáhne hodnoty\footnote{Ze zákonu zachování energie ji při dosažení stejné výškové hladiny, tedy $y=0$, musí mít stejnou.} $v_{y_0}$, ale opačného směru
	\eq[m]{
		v_y &= -v_{y_0}\\\\
		v_0\sin\alpha - gt\_d &= -v_0\sin\alpha\\\\
		gt\_d &= 2v_0\sin\alpha\\\\
		t\_d &= \frac{2v_0\sin\alpha}{g}
	}
- maximální délka doletu~$d$
	\eq[m]{
		d &= v_{x_0}t\_d = v_0\cos\alpha\frac{2v_0\sin\alpha}{g}\\\\
		d &= \frac{v_0\sin 2\alpha}{g}
	}
- maximální výška
	\eq[m]{
		v_y = 0 &= v_0\sin\alpha-gt\_{max}\\\\
		t\_{max} &= \frac{v_0t\sin\alpha}{g}\\\\
		h\_{max} &= v_0t\_{max}\sin\alpha -\frac{2}gt\_{max}^2\\\\
		h\_{max} &= \frac{v_0^2\sin\alpha}{2g}
	}

## V radiálním poli
