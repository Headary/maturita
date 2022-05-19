\setcounter{section}{18}
# Elektrický proud v elektrolytech, plynech a ve vakuu
## Elektrolytický vodič
- Elektrolyt -- roztok/tavenina, která vede elektrický proud
- nosičem proudu ionty -- vodiče II.~řádu
- vodivost nižší než u kovů

### Disociace
- proces *elektrolýza*
- štěpení molekul nebo komplexů
- rozpuštění iontových sloučenin v polárních rozpouštědlech
- opak disociace -- rekombinace -- slučování iontů zpět do molekul
- vznik více molekul, **iontů** (kationtů a aniontů) nebo radikálů
- disociace kyselin, zásad nebo solí

### Faradayovy zákony elektrolýzy
- zákony popisující elektrolýzu

#### První Faradayův zákon
- hmotnost látky vyloučené na elektrodě přímo úměrná el.~proudu~$I$ a čase~$t$
- \eq{
		m = AIt = AQ
	}
	- $A$ -- elektrolytický ekvivalent dané látky
	- $Q$ -- elektrický náboj

#### Druhý Faradayův zákon
- látkové množství vyloučená stejným nábojem pro všechny látky stejné
- elektrolytický ekvivalent~$A$ přímo úměrný molární hmotnosti látky
- \eq{A = \frac{M\\_m}{Fz}}
	- $F="9.6485e4 C.mol^{-1}"$ -- Faradayova konstanta 
	- $z$ - počet elektronů potřeba při vyloučení molekuly ($\ce{Cu^{2+}}\Rightarrow z=2$)

\fullfig[width=0.4\textwidth]{19-elektrolyza}[Elektrolýza vodného roztoku $\ce{CuSO4}$]

### Galvanický článek
- chemický zdroj elektrického napětí
- zdroj stejnosměrného proudu, několik voltů
- využití ionizace
- vznik napětí z rozdílu potenciálů na elektrodách
	- el.~potenciál důsledkem chem. reakce
		- samovolné reakce
		- reakce vyvolané el.~proudem
- typy
	- primární články -- jednorázové, reakce nevratná
	- sekundární články / akumulátory -- znovupoužitelné, reakce vratná
- svorkové napětí nižší než celkové kvůli vnitřnímu odporu: $U = U\\_e-R\\_iI$
	- $U\\_e$ -- elektromotorické napětí

#### Stavba
- záporná elektroda -- anoda
	- Zn, Li, Cd, hybridy kovů
- kladná elektroda -- katoda
	- $\ce{MnO2}$, $\ce{NiO(OH)}$ (oxid-hydroxid hlinitý), $\ce{Ag2O}$
- elektrolyt
	- roztoky alkalických hydroxidů (KOH), silné kyseliny nebo jejich soli

#### Elektrolytická polarizace
- vznik elektrické dvojvrstvy
	- uvolnění iontů z elektrody, ty zbylým nábojem přitahovány
	- vznik elektrického pole, brání vylučování iontů
	- elektroda se polarizovala
- vznik elektrického potenciálu
	- hodnota určena vzhledem k vodíkové elektrodě (u ní $\phi = 0$)

#### Druhy
- existují různé druhy článků podle použitý materiálů
- jiné vlastnosti (náboj, výdrž, životnost\dots)

\begin{table}
\centering
\begin{tabularx}{0.9\textwidth}{CcCC}
\toprule
Název&Elektrody&Elektrolyt&Poznámka\\\\
\midrule
Voltův článek&$\ce{+Cu}, \ce{-Zn}$&$\ce{H2SO4}$&první galvanický článek\\\\
zinko-uhlíkový článek (Leclancheův) článek&$+\ce{MnO2}, -\ce{Zn}$&\ce{NH4Cl}&obyčejné baterie\\\\
alkalický článek&$+\ce{MnO2}, -\ce{Zn}$&\ce{KOH}&nejběžnější\\\\
lithiový článek&$+\ce{MnO2}, -\ce{Li}$&lithiová sůl v organickém rozpouštědle&dlouhá životnost\\\\
\bottomrule
\end{tabularx}
\caption{Různé druhy galvanických článků}
\end{table}

\fullfig[width=16cm]{19-VA-roztok}[Voltampérová charakteristika roztoku]

### Využití
- elektrolýza
	- výroba prvků a sloučenin
	- rozklad chemických látek
	- pokovování / čištění
	- leptání
- galvanický článek
	- baterie (hodinky, senzory, kuchyňská váha\dots)
	- akumulátory (auto, telefony, notebooky, dobíjecí baterie\dots)

## Výboj plynu
- nosičem proudu $e^-$ a ionty
- plyn se stává vodivým *ionizací*
	- vnější zásah, vyražení elektronů z molekul plynu $\rightarrow$ volné elektrony a ionty
- opakem *rekombinace* -- slučování elektronů a iontů
- plynem prochází proud -- elektrický výboj

\fullfig[width=16cm]{19-VA-plyn}[Voltampérová charakteristika plynu]

### Elektrický výboj
- při ionizovaném plynu mezi elektrodami
	- elektrony(-) $\rightarrow$ anoda(\texttt{+})
	- kationty(\texttt{+}) $\rightarrow$ katoda(-)

#### Nesamostatný výboj
- potřeba vnější ionizátor (ionizační komora, elektronky)

#### Samostatný výboj
- vytváří si vlastní ionty a elektrony
- není třeba ionizátor
- dodání zápalného napětí~$U\\_z$ $\rightarrow$ samovolné vyrážení elektronů z atomů $\rightarrow$ řetězová reakce $\rightarrow$ prudké zvýšení napětí
- dosažené dostatečné energie $\rightarrow$ *elektrický průraz*
	- z nesamostatného náboje se stává samostatný

### Náboj podle doby trvání
- jiskrový výboj
	- krátké dosažení $U>U\\_z$, zdroj není schopen udržet, rychlé zhasnutí
	- blesk, zážehový motor
- obloukový výboj
	- dosažení a udržení $U>U\\_z$, vysoká teplota, dlouhé trvání
	- sváření, výbojky veřejného osvětlení
- koróna
	- trsovitý výboj v nehomogenním poli
	- na hranách a hrotech

% TODO doutnavý výboj

### Využití
- sváření, řezání plazmou
- oblouková lampa v projektorech
- oblouková pec

## Proud ve vakuu
- nositele náboje elektrony z elektrod
- použití skleněné trubice se dvěma elektrodami -- *výbojka*
- nepozorujeme světlo, pouze slabé záření u katody
	- emise elektronů $\rightarrow$ katodové záření

### Elektronka
- zařízení pracující na bázi proudu ve vakuu
- katoda, anoda, mřížka
- amplifikace napětí, vytváření záření\dots
