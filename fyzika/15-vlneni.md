\setcounter{section}{14}

# Mechanické vlnění
- přenos kmitání pružným prostředím -- přenos kmitání jedné částice na druhou vazebnými silami
- nepřenáší se látka, přenáší se energie
- zvuk, světlo, vlny na vodě\dots
- zdrojem vlnění mechanický oscilátor
- druhy vlnění
	- příčné vlnění
		- kmitání v kolmém směru šíření vlnění (nahoru a dolů)
		- např.~struna hudebního nástroje, vlna na vodě\dots
	- podélné vlnění
		- kmitání ve směru šíření vlnění (dopředu a dozadu)
		- typicky stlačování a rozpínání (stlačování vzduchu)
		- např.~zvuk
- druhy dle přenosu energie
	- postupné vlnění -- přenos energie prostředím
	- stojaté vlnění -- nepřenos energie
- šíření vlny prostorem rychlostí~$v$
- vlnová délka~$\lambda, [\lambda]=\jd{m}$ -- délka jedné periody v prostoru
	\eq{
		\lambda = vT = \frac{v}{f}
	}

## Rovnice postupného vlnění
- výchylka~$y$ v daném bodě závislá na čase~$t$ a vzdálenosti od zdroje~$x$
- kmitání zdroje v bodě~$x=0$ (žádné opoždění)
	\eq{
		y = y\\_m\sin(\omega t)
	}
- bod ve vzdálenosti~$x$ opožděn oproti zdroji o čas~$t'$, který bylo potřeba na to, aby se vlna do daného bodu rychlostí~$v$ dostala
	\eq[m]{
		t' &= \frac{x}{v}\\\\
		y(x,t) &= y\\_m\sin \omega \\(t-t'\\)\\\\
		y(x,t) &= y\\_m\sin \frac{2\pi}{T} \\(t-\frac{x}{v}\\)\\\\
		y(x,t) &= y\\_m\sin 2\pi \\(\frac{T}\*t-\frac{T}*\frac{x}{v}\\)\\\\
		y(x,t) &= y\\_m\sin 2\pi \\(\frac{t}{T}-\frac{x}{\lambda}\\)\\\\
		\phi_0 \neq 0: y(x,t) &= y\\_m\sin\\(2\pi \\(\frac{t}{T}-\frac{x}{\lambda}\\)+\phi_0\\)
	}
- fáze vlnění
	\eq[m]{
		2\pi &\\(\frac{t}{T}-\frac{x}{\lambda}\\)\\\\
		\phi_0 \neq 0: 2\pi &\\(\frac{t}{T}-\frac{x}{\lambda}\\)+\phi_0
	}

## Interference
- skládání dvou a více vlnění
- výsledná hodnota výchylky dána součtem výchylek jednotlivých vlnění
	\eq{
		y(x,t) = \sum_{i=1}^n y_{\text{m}_n}\sin \\(2\pi \\(\frac{t}{T_n}-\frac{x}{\lambda_n}\\)+\phi_{0_n}\\)
	}
- speciální případ -- vlnění mají stejnou vlnovou délku (frekvenci)
	- možno určit výsledný kmitavý pohyb jako superpozici kmitání dílčích vln
	- v obecných případech superpozice také platí, ale výsledný průvodič kmitání/vlnění se v čase mění
- fázový rozdíl vln
	\eq[m]{
		\Delta\phi &= 2\pi \\(\frac{t}{T}-\frac{x_1}{\lambda}\\)+\phi_{0_1} - 2\pi \\(\frac{t}{T}-\frac{x_2}{\lambda}\\)+\phi_{0_2}\\\\
		\Delta\phi &= 2\pi \\(\frac{t}{T}-\frac{x_1}{\lambda}-\frac{t}{T}+\frac{x_2}{\lambda}\\)+\phi_{0_1}+\phi_{0_2}\\\\
		\Delta\phi &= 2\pi \frac{\lambda}\\(x_2-x_1\\)+\phi_{0_1}+\phi_{0_2}\\\\
		\Delta\phi &= \frac{2\pi}{\lambda}d+\phi_{0_1}+\phi_{0_2}\\\\
		\phi_{0_1}+\phi_{0_2} = 0 : \Delta\phi &= \frac{2\pi}{\lambda}d
	}
	- $x_1, x_2$ -- vzdálenost bodu vzhledem k prvnímu a druhému zdroji
	- $\phi_{0_1},\phi_{0_2}$ -- počáteční fázové posuny vln
	- $d$ -- vzájemná vzdálenost zdrojů
- speciální případ -- fázový posun roven celému počtu půlvln
	- interferenční maximum
		- každou druhá půlvlna
		- $d = 2k\lambda/2 = k\lambda; k\in \mathbb{N}_0$
		- vlny mají stejnou fázi~($\Delta \phi=0$)
		- přesné sčítání vln a maxim ($y\\_m=y_{\text{m}_1}+y_{\text{m}_2}$)
	- interferenční minimum
		- každá druhá půlvlna + 1~půlvlna
		- $d=(2k+1)\lambda/2; k\in \mathbb{N}_0$
		- vlny mají přesně opačnou fázi
		- vzájemné odečítání vln a maxim ($y\\_m=y_{\text{m}_1}-y_{\text{m}_2}$)

\fullfig[width=16cm]{15-interference}[Interferenční maximum a minimum vlnění]

## Odraz
- odraz vlnění od konce řady bodů
- pevný konec
	- opačná fáze
- volný konec
	- stejná fáze

\fullfig[width=16cm]{15-odraz-pevne}[Odraz vlny od pevného závěsu]
\fullfig[width=16cm]{15-odraz-volne}[Odraz vlny od volného závěsu]

% source: https://www.walter-fendt.de/html5/phcz/standingwavereflection_cz.htm

## Stojaté vlnění
- vlnění nepostupuje prostorem, \uv{stojí na místě}
- kmitání všech bodů se stejnou fází
- rozdílná maximální výchylka pro každý bod
- vznik interferencí postupného přímého vlnění a vlnění odraženého od pevného konce
- pouze mezi pevnými konci
- nekmitající místo -- uzel; kmitající maximum -- kmitna
- vzdálenost dvou uzlů nebo dvou kmiten rovna~$\lambda/2$
- příklad -- strunové nástroje

\fullfig[width=16cm]{15-stojate}[Stojaté vlnění (pohyb červené vlny doprava a modré doleva)][][Stojaté vlnění]

## Huygensův princip \label{15-huygens}
- při šíření vlny prostorem (po rovině namísto přímky)
- *\uv{Každý bod vlnoplochy, do něhož dospělo vlnění v určitém okamžiku, můžeme
	pokládat za zdroj elementárního vlnění, které se z něho šíří
	v~elementárních vlnoplochách. Vlnoplocha v dalším časovém okamžiku je
	vnější obalová plocha všech elementárních vlnoploch}*
- vlnoplocha -- plocha kmitajících bodů se stejnou fází
- směr šíření vlny kolmý na vlnoplochu
- jednotlivé vlnoplochy spolu interferují a vytvářejí vnější vlnoplochu
- jestliže vlna narazí na štěrbinu, bude se štěrbina chovat jako nový zdroj vlny
- viz~otázka~\ref{25-huygens}

\fullfig[width=0.6\textwidth]{15-huygens}[Nákres Huygensova principu]

## Zvuk
- podélné vlnění šířící se (většinou) vzduchem
- vytvořen kmitáním jiných těles
- rozkmitání ušního bubínku -- recepce zvuku
- amplituda vyjadřuje sílu/hlasitost zvuku, frekvence \uv{výšku} tónu
- rychlost šíření zvuku ve vzduchu~$v\approx "340 m.s^{-1}"$
- ultrazvuk
	- zvukové vlnění nad hranicí slyšitelnosti ($\approx "20 kHz"$)
	- využití -- echolokace u zvířat, sonografie, stomatologie, zvlhčování vzduchu
- infrazvuk
	- zvuk pod hranicí slyšitelnosti ($\approx "20 Hz"$)
	- tlak v uších, bolestivé vnímání tělem, závratě
- ozvěna 
	- odražení zvukové vlny od rozlehlé překážky a návrat k posluchači
	- vnímaní zvuku opožděně
	- možno slyšet vlnu a rozeznat i několikrát za sebou
	- využití -- sonar, ultrasonografie
- dozvuk
	- doznívání zvuku ztrátami energie
	- na rozdíl od ozvěny nelze rozeznat jednotlivé vlny, splynutí v jedno
	- doba dozvuku -- čas poklesnutí amplitudy zvuku o $"60 dB"$
	- velký dozvuk -- kostely, staré mohutné sály\dots
