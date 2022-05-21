% Obrazové informace, programy na zpracování obrázků, typy, ukázka práce
% grafickém editoru, bitmapová a vektorová grafika, fotoeditory, základní operace
% s fotografií, export a import dat v editoru

\setcounter{section}{13}
# Obrazová informace
- informace obrazu v počítači
- záznam bitmapou nebo vektorem

## Digitální obraz
- reprezentace obrazové informace
- 2D čtvercová síť -- pixely

### Pixely
- svítící bod na monitoru / bod obrazu
- tvořen subpixely
	- červený, zelený a modrý subpixel -- RGB

### Barevné modely
- způsoby reprezentace barvy
- různé modely mají různé využití

#### RGB
- Red, Green, Blue
- adititivní způsob míchání barev -- všechny hodnoty na maximum dají bílou
- zápis v hodnotách 0--1 nebo 0--255, možné i hexadecimálně
- trojice čísel -- $(0, 49, 255)$, \texttt{\\#0039FF}
- použití
	- zobrazování barev displeji
	- reprezentace barev v grafický programech

#### CMYK
- Cyan, Magenta, Yellow, Key (azurová, purpurová, žlutá, černá)
- subtraktivní míchání barev -- barvy na maximum znamenají černou
- zápis většinou v procentech
- čtveřice číslic -- $("0 \\\%", "56 \\\%", "99 \\\%", "2 \\\%")$
- použití -- tisk

\begin{figure}
\centering
\subfloat[RGB]{\includegraphics[height=0.2\textheight]{14-rgb}}
\qquad
\subfloat[CMYK]{\includegraphics[height=0.2\textheight]{14-CMYK}}
\caption{Porovnání RGB a CMYK modelu}
\end{figure}

#### HSV
- Hue, Saturation, Value
- reprezentace barvy jako odstínu, sytosti a světlosti / hodnoty
- odstín
	- reprezentace jako úhel
	- udává odstín barvy
- sytost
	- sytost barvy
	- sytost 0 -- šedá, sytost 255 -- plná barva
- světlost / hodnota
	- tmavost barvy
	- analogie ke svícení na barvu světlem
	- minimum -- černá, maximum -- plná barva
- použití -- grafické programy (jednodušší vybírání barev pro uživatele)

#### HSL
- Hue, Saturation, Lightness
- podobná HSV, ale světlost značí polohu mezi černou a bílou, nejsytější barvy v~$L=1/2$

\fullfig{14-hsl-hsv}[Porovnání HSL a HSV módu]

### Barevná hloubka (Color depth)
- vyjádření, kolik bitů je použito pro záznam barvy
- 1~bit -- 2 barvy
- 8~bitů -- 256 barev
	- retro konzole
- 24~bitů -- $16~777~216$ barev (True color)

\fullfig{14-color-depth}[Porovnání různých barevných hloubek]

### Rozlišení
- udává počet pixelů na obrazovce
- udáváno v poměru $x\times y$
- standardní rozlišení (16:9)
	- HD / 720p -- $1280\times 720$
	- FullHD / 1080p / 2k -- $1920\times 1080$
	- 4k -- $3830\times 2160$
- poměr stran
	- poměr šířky a výšky, důležitý při zvětšování počtu pixelů
	- dnešní standard~16:9, také 16:10, dříve 4:3 displeje
	- formáty fotek také 1:1 nebo 3:2

### DPI
- dots per inch
- hustota pixelů na jeden palec ($"2.54 cm"$)
- fyzické rozlišení obrazu
- moje používaný taky např.~u~citlivosti myší
- standard -- $"72 DPI"$, $"96 DPI"$, $"120 DPI"$, $"300 DPI"$\dots

\fullfig{14-dpi}[Porovnání různých hodnot DPI a stejně velkém obrazu]

## Rastrová/bitmapová grafika
- obraz tvořen pixely v mřížce
- závislá na rozlišení
- u některých možnost pomocí algoritmů převést na vektor
- více běžná než vektorová
- fotografie, obrázky, kresby, scan\dots
- výhody
	- snadná tvorba
	- více detailů
- nevýhody
	- ztráta kvality při změně velikosti
	- velká velikost souborů při vysokém rozlišení
- různé editory
	- Adobe Photoshop, GIMP, Krita, Affinity Photo\dots
- různé formáty
	- jpg/jpeg, png, gif, raw, tiff\dots

### Komprese
- zmenšování velikosti souborů
- ztrátová a bezztrátová
	- ztrátová -- vynechání malých detailů, nevratná, jpg
	- bezztrátová -- zanechává všechna data, png, gif, raw

#### Příklady metod komprese
- run-length encoding -- optimalizace opakujících se dat
- huffman coding -- převod patternů na bitové symboly s délkou v závislosti na frekvenci, využití binárního stromu
- diskrétní kosinová transformace -- potlačení rozdílů v blízkých barvách

## Vektorová grafika
- obraz tvořen matematicky definovanými tvary a křivkami
- nezávislé na rozlišení, rendering do konečného obrazu
- loga, ilustrace, technické nákresy\dots
- výhody
	- libovolná velikost
	- bezztrátovost dat
	- jednoduchý převod do rastru
	- paměť nezávislá na velikosti
- nevýhody
	- složitější výroba
	- méně detailů
- editory
	- Adobe Illustrator, Inkscape, Corel draw\dots
- formáty
	- eps, pdf, svg, ai (Adobe Illustrator), cdr (Corel draw)
