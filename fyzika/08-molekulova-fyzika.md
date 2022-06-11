\setcounter{section}{7}

# Základní poznatky molekulové fyziky a termodynamiky
- metody molekulové fyziky a termodynamiky
	- makroskopický pohled
		- pozorování těles a dějů
		- neuvážení jednotlivých částicích, uvážení jen rozměrů těles
	- termodynamická metoda
		- pozorování tepelných jevů
		- založeno na zákonu zachování a přeměny energie
		- neuvažujeme částicové složení látky z molekul, atomů
	- statická metoda
		- zabývá se strukturou látek
		- odvětví molekulové fyziky

## Kinetická teorie stavby látek
- látka složena z částic
- částice v neustálém a neuspořádaném pohybu
	- posuvný pohyb (plyny)
	- otáčivý pohyb (molekuly plynů)
	- kmitavý pohyb (pevné a kapalné látky)
- vzájemné působení částic silami
	- malé vzdálenosti -- odpudivé
	- velké vzdálenosti -- přitažlivé
- částice v pohybu $\rightarrow$ kinetická energie
- plyn -- narážení částic do stěn nádoby $\rightarrow$ tlak / tlaková síla

### Důkazy neuspořádaného pohybu
#### Difúze
- samovolné pronikání částic jedné látky mezi částice druhé látky
- vyšší teplota $\rightarrow$ rychlejší difúze $\rightarrow$ vyšší rychlost částic

#### Osmóza
- samovolný pohyb částic roztoku přes polopropustnou membránu
- přesun média z místa malé koncentrace do místa velké koncentrace $\rightarrow$ vyrovnání koncentrací
- důležitá v biologických systémech

#### Brownův pohyb
- náhodný pohyb mikroskopických částic v plynu nebo kapalině
- částice náhodně posouvána nárazy částicemi látky
- rozptyl částic z jednoho místa náhodnými směry -- zvyšování entropie

\fullfig[width=0.6\textwidth]{8-brown}[Znázornění Brownova pohybu]

## Síly mezi částicemi
- vzájemná interakce elektronových obalů a atomových jader
- tzv.~**vazebné sily**
- malá vzdálenost ($r<r_0$) -- prudké zvyšování odpudivé síly částic
- rovnovážná poloha ($r_0\approx"0.01 nm"$ -- $r_0\approx"0.1 nm"$)-- místo vyrovnání odpudivé a přitažlivé síly
- velká vzdálenost ($r>r_0$) -- přitažlivá síla, se vzdáleností klesá, projevení do vzdálenosti asi  $\approx "1 nm"$

\fullfig[width=0.4\textwidth]{8-sila}[Graf závislosti síly na vzdálenosti]

## Energie částic
### Vazebná energie
- rovno práci potřebné pro rozdělení částic ve vazbě
- potenciální energie vazby
- způsobena vazebnými silami

### Kinetická energie
- kinetická energie pohybující se částice
- při pohybu či kmitání
- rostoucí s rostoucí teplotou

## Vzájemné působení částic
### Pevné látky
- pevné uspořádání částic pomocí vazeb
	- pravidelné -- krystalické látky
	- nepravidelné -- amorfní látky
- střední vzdálenosti částic velmi malé
- kmitání částic okolo rovnovážných poloh -- s teplotou roste amplituda
- potenciální energie částic větší než kinetická energie

#### Typy vazeb
- iontová
	- způsobena elektrostatickou silou částic
	- mezi elektropozitivním a elektronegativním prvkem
- vodíková -- vodíkové můstky, např. mezi krystaly ledu
- kovová -- způsobeno uvolněnými valenčními elektrony
- kovalentní -- sdílení valenčních elektronů
- van der Waalsova
	- slabá vazba elektrické povahy
	- převážně při nízkých teplotách
	- I, Cl, O, H, organické sloučeniny, krystaly s velkou relativní hmotností

### Kapalné látky
- částic více pohyblivé jak u pevných látek, ale méně než u plynů
- kmitání kolem časově proměnných rovnovážných poloh
- vnější síla $\rightarrow$ přesun částic ve směru síly $\rightarrow$ tekutost
- potenciální energie srovnatelná s kinetickou energií

### Plynné látky
- volný pohyb částic
- zanedbatelné přitažlivé síly
- nemají rovnovážné polohy
- vykonávání tepelného pohybu -- posuvný pohyb různými rychlostmi a různých velikostech a směrech
- změna rychlosti částic srážkou
- růst střední rychlosti molekul s teplotou
- potenciální energie mnohem menší, než kinetická

#### Rychlosti částic
- velikost rychlosti částice může dosahovat hodnot od~$0$ do nekonečna $\rightarrow$ nelze určit kinetickou energii jedné částice
- popis pomocí rychlostí vycházejících z Maxwellovy rozdělovací funkce
	- určení pravděpodobnosti dané rychlosti pro danou částici
	
##### Nejpravděpodobnější rychlost
- hodnota rychlosti s největší pravděpodobností
- v bodě~$\der{f}{v}=0$
	\eq{
		v\\_p = \sqrt{\frac{2kT}{m}}
	}
	- $k="1.380~649e−23 J.K^{-1}"$ -- Boltzmannova konstanta
	- $T$ -- termodynamická teplota
	- $m$ -- hmotnost jedné částice/molekuly

##### Střední rychlost
- průměr rychlostí všech molekul
	\eq{
		\avg{v} = \sqrt{\frac{8kT}{\pi m}}
	}

##### Střední kvadratická rychlost
- aritmetický průměr kvadrátu rychlostí všech částic
	\eq{
		\avg{v^2} = \frac{3kT}{m}
	}
- používáno při určení střední energie molekuly nebo tlaku plynu

##### Efektivní rychlost
- odmocnina střední kvadratické rychlosti
	\eq{
		v\\_{ef} = \sqrt{\frac{3kT}{m}}
	}

#### Vnitřní energie plynu
- celková kinetická energie všech částic
	\eq{
		E\\_k = \frac{2}m\avg{v^2}\*N=\frac{2}m\*\frac{3kT}{m}\*N = \frac{3}{2}kTN
	}
	- $N$ -- počet částic
- střední hodnota kinetické energie jedné částice
	\eq{
		\avg{\epsilon} = \frac{3}{2}kT
	}
- celková vnitřní energie
	\eq{
		U = E\\_k = \frac{3}{2}kTN = \frac{3}{2}kT*nN\\_A = \frac{3}{2}nRt
	}
	- $n$ -- látkové množství
	- $R \doteq "8,314 J.K^{-1}.mol^{-1}"$ -- plynová konstanta

### Plazma
- soustava elektricky nabitých částic (iontů, volných elektronů, a neutrálních částic)
- při vysokých teplotách možnost složení pouze z elektronů a jader
- vysoká energie částic

## Stav soustavy
- popsán stavovými veličinami -- teplota, objem, tlak, hmotnost\dots
- další popis stavu -- chemické složení, skupenství, uspořádání částic\dots
- termodynamická soustava -- zkoumaná skupina těles (plyn ve válci s pístem, voda a pára\dots)
- stavová změna soustavy -- při interakci s okolím; přechod mezi stavy $\rightarrow$ změna stavových veličin

### Soustavy
#### Izolovaná soustava
- nedochází k výměně energie ani částic s okolím
- děje probíhají pouze v rámci soustavy
- idealizovaný případ, reálně nedosažitelný
- termoska s čajem, kalorimetr\dots

#### Uzavřená a otevřená soustava
- uzavřená -- dochází k výměně energie, nedochází k výměně částic; hrnec s poklicí
- otevřená -- výměna energie i částic s okolím; hrnek s čajem

#### Adiabaticky izolovaná soustava
- nedochází k tepelné výměně
- sifonová láhev

### Rovnovážný stav soustavy
- neměnný stav soustavy
- setrvávající stav při neměnných vnějších vlivech
- konstantní stavové veličiny
- rovnovážný děj -- procházení soustavy mezi řadou na sebe navazujících rovnovážných stavů

## Termodynamická teplota
- veličina vyjadřující energii systému
- vnímaní člověkem jako studené/teplé

### Teploměr
- zařízení měřící teplotu
- nepřímé měření -- měření objemu kapaliny, tlak plynu\dots
- měření teploty v různých stupnicích
	- Celsiova stupnice
		- jednotka stupeň Celsia ($\jd{\C}$)
		- $"0 \C"$ -- bod tání ledu; $"100 \C"$ -- bod vypařování vody
		- obvyklé značení~$t$
	- Kelvinova stupnice
		- rozestupy stupňů stejné jako u Celsiovy
		- $"0 K"$ -- částice bez pohybu, nekmitají, nulová kinetická energie
		- $"0 K"="273.15 \C"$
		- značení~$T$

#### Typy
- kapalinové
	- roztahování kapaliny
	- použitelné pouze při určitých intervalech teplot
	- rtuť, líh
- plynové
	- změna tlaku/objemu plynu při zahřívání
	- široký interval teplot
- bimetalové
	- rozdílná tepelná roztažnost dvou kovových plátků
	- orientační měření teploty
- odporové
	- měření elektrického odporu polovodiče
	- měření pomocí Wheatstonova můstku či děliče napětí
- termoelektrické
	- měření termoelektrického jevu na termočlánku
- radiační
	- založeny na zákonu o tepelném záření
	- měření vysokých teplot
