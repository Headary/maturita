\setcounter{section}{11}

# Struktura a vlastnosti kapalin
## Mechanické vlastnosti
- přechod mezi kapalinami a plyny
- ideální kapalina nestlačitelná, reálná velice málo stlačitelná
- tekuté
- zaujetí tvaru nádoby, vyrovnání hladiny do roviny
- kmitání částic okolo proměnných rovnovážných poloh

### Ideální kapalina
- nestlačitelná
- dokonale tekutá
- nulová viskozita -- bez vnitřního tření

## Povrchová vrstva
- vzájemné působení částic přitažlivými silami
	- sféra molekulového působení -- sféra působení molekul ($\sim "1 nm"$), vliv molekul mimo lze zanedbat
- molekula uvnitř kapaliny -- působení sil všemi směry, nulová výslednice
- molekula u povrchu (vzdálenost k povrchu menší než sféra působení) -- výslednice sil směrem do kapaliny
	- zanedbávání přitahování molekul plynu
	- $\rightarrow$ **povrchová vrstva kapalin**
- povrchová energie~$E$
	- potenciální energie molekuly v povrchová vrstvě
	- práce potřebná pro přes molekuly do povrchové vrstvy
		\eq{
			E = S\sigma
		}
		- $S$ -- plocha volného povrchu kapaliny
		- $\sigma$ -- povrchové napětí
- snaha minimalizovat povrch a maximalizovat objem -- minimalizace povrchové energie
	- nejlepší tvar koule $\rightarrow$ kapky mlhy, rosy\dots

### Povrchová síla
- síla povrchu kapaliny
- tečná na povrch směřující do kapaliny
- síla tvarující kapky do koule

### Povrchové napětí
- značka~$\sigma$, $[\sigma] = N.m^{-1}$
- vlastnost povrchu kapaliny držet při sobě a zmenšovat povrch
- míra síly na jednotku délky obvodu
	\eq[m]{
		\sigma &= \der{F}{l}\\\\
		\sigma &= \frac{F}{2l}
	}
	- po obvodu dvě blány $\rightarrow 1/2$

## Jevy na rozhraní prostředí
- jevy na rozhraní kapaliny, pevné látky a plynu u stěn nádoby
	- dutý povrch (voda, líh\dots) -- smáčení stěn
	- vypuklý povrch (rtuť) -- nesmáčení stěn

### Síly působící na molekuly
- přitažlivá síla molekul stěny~$F\\_N$ 
	- kolmá na stěnu nádoby
- přitažlivá síla molekul kapaliny~$F\\_k$
- přitažlivá síla molekul plynu~$F\\_p$
- tíhová síla~$F\\_G$
- $F\\_k, F\\_N \gg F\\_G, F\\_p \Rightarrow$ zanedbání $F\\_G$ a $F\\_p$
- výslednice $F\\_k$ a $F\\_N$ tvoří tvar kapaliny u stěny

\begin{figure}[htbp]
	\centering
	\subfloat[smáčení stěn]{\includegraphics[height=0.2\textheight]{12-sily-1}}
	\qquad
	\subfloat[nesmáčení stěn]{\includegraphics[height=0.2\textheight]{12-sily-2}}
	\caption{Skládání sil na molekulách}
\end{figure}

### Stykový úhel
- úhel stěny a kapaliny
- $\theta = 0$ -- kapalina dokonale smáčí stěny nádoby
- $\theta = \pi$ -- kapalina dokonale nesmáčí stěny nádoby
- $\theta \in \ointo{0}{\pi/2}\cup\ointo{\pi/2}{\pi}$ -- skutečná (reálná) kapalina
- $\theta = \pi/2$ -- povrch kapaliny nezakřivený %>

\begin{figure}[htbp]
	\centering
	\subfloat[smáčení stěn]{\includegraphics[height=0.2\textheight]{12-uhel-1}}
	\qquad
	\subfloat[nesmáčení stěn]{\includegraphics[height=0.2\textheight]{12-uhel-2}}
	\caption{Stykový úhel kapaliny se stěnou}
\end{figure}

### Kapilární tlak
- tlak výslednice sil molekuly
	\eq{
		p\\_k = \frac{F\cos \theta}{S}
	}
	- $F$ -- výslednice sil
	- $S$ -- kolmý průmět povrchu kapaliny (vždy kruh)
	- $\cos\theta$ -- vertikální složka~$F$
- závislý na zakřivení
	\eq{
		p\\_k = \frac{\sigma l\cos\theta}{\pi r^2} = \frac{2\sigma\pi r\cos\theta}{\pi r^2} = \frac{2\sigma\cos\theta}{r}
	}
	- $r$ poloměr zakřivené plochy

## Kapilární jevy (Kapilarita)
- jevy kapaliny při rozhraní s úzkou trubicí
- kapilární elevace -- u smáčivých kapalin, vrchol na hladinou kapaliny
- kapilární deprese -- u nesmáčivých kapalin, vrchol pod hladinou kapaliny
- změna výška hladiny způsobena tlakem -- vyrovnání hydrostatického a kapilárního tlaku
	\eq[m]{
		p\\_h &= p\\_k\\\\
		h\rho g &= \frac{2\sigma\cos\theta}{r}\\\\
		h &= \frac{2\sigma\cos\theta}{r\rho g}
	}

\fullfig[width=0.35\textwidth]{12-kapilarita}[Kapilární elevace a deprese]

### Praxe
- vzlínání vody
- pohyb vody na povrch půdy
- rostliny -- nasávání a rozvod vody
- pájení
- savé utěrky

## Objemová roztažnost
- změna objemu objemu v závislosti na změně teploty
	\eq[m]{
		\Delta V &= \beta \Delta T\\\\
		V &= V_0(1+\beta\Delta T)
	}
	- platí pouze pro nízké rozdíly teplot
	- $\beta$ -- teplotní součinitel objemové roztažnosti
- změna hustoty
	\eq{
		\rho = \rho_0 (1-\beta\Delta T)
	}
	- zvětšení objemu, zachování hmotnosti $\Rightarrow$ snížení hustoty
- využití -- kapalinové teploměry (rtuť, líh, voda)

### Anomálie vody
- podle vzorce -- při zahřívání od~$"0 \C"$ do $"100 \C"$ lineární klesání hustoty 
- ve skutečnosti -- maximální hustota okolo $"4 \C"$ ($"3.98 \C"$)
	- při zahřívání od $"0 \C"$ do $"4 \C"$ -- zmenšování objemu
	- při zahřívání od $"4 \C"$ do $"100 \C"$ -- zvětšování objemu
- výskyt -- dna rybníků v zimě, směrem k hladině chladnější voda

