\setcounter{section}{10}

# Struktura a vlastnosti pevných látek
## Mechanické vlastnosti
- pružnost -- schopnost vratné deformace
- tvárnost -- schopnost nevratné deformace
- pevnost -- odolnost vůči trvalému porušení celistvosti -- napětí nutné k porušení
- houževnatost -- odolnost vůči trvalému porušení celistvosti -- práce nutné k porušení

### Struktura látek
#### Krystalické
- částice (atomy, molekuly, ionty) pravidelně uspořádány v mřížce
- pravidelný geometrický tvar -- krystalické mřížky
	- trojklonná, jednoklonná, kosočtverečná, čtverečná, krychlová, šesterečná (hexagonální), klencová
- monokrystal
	- periodický v celém objemu
	- diamant, křemen, kamenná sůl
- polykrystyl
	- mnoho zrn, uspořádání uvnitř zrn pravidelné
	- vzájemná poloha zrn náhodná
	- většina látek, např.~kovy

#### Amorfní
- periodické uspořádání do~$"10^{-8} m"$, na větších vzdálenost pravidelnost porušena
- $\rightarrow$ neperiodické uspořádání
- sklo, pryskyřice, polymery, vosk, asfalt

\fullfig{11-struktura}[Uspořádání částic v pevných látkách]

### Izotropie
- závislost vlastností látek na směru

#### Izotropní látky
- ve všech směr stejné vlastnosti
- polykrystaly a amorfní látky

#### Anizotropní látky
- některé fyzikální vlastnosti závisí na směru
- monokrystaly

### Poruchy mřížky
- odchylky od pravidelného rozložení
- bodové poruchy -- poruch mřížky pouze v jednom bodě
- čárové poruchy -- porucha podél linie
- objemové poruchy -- porucha ve větším objemu

#### Borové poruchy
- vakance -- prázdné místo v mřížce
- intersticiální poloha -- částice navíc mimo mřížku
- substituční porucha -- vyměnění částice za jinou (nečistoty)
- Frekelova porucha -- částice opustí původní polohu (tvoříc vakanci) a přejde na novou (do intersticiální polohy)

\fullfig[width=0.9\textwidth]{11-poruchy}[Poruchy krystalické mřížky]

## Typy vazeb
- vazby -- váží k sobě částice krystalové mřížky

### Iontová
- mezi elektropozitivním a elektronegativním prvkem
- pomocí elektronů
- jeden atom odevzdá elektron ($\rightarrow$ kationt) a druhý atom jej příjme ($\rightarrow$ aniont)
- přitahování elektrostatickou sílou
- tvrdé, vysoká teplota tání
- křehké, štěpné podél rovin kolmých na hrany
- běžně izolanty, při vyšších teplotách vodiče
- pro světlo propustné

### Kovová
- uvolnění valenčních elektronů do prostoru
- volný pohyb mezi kationty kovových atomů
- neprůhledné, dobře vodivé

### Kovalentní
- sdílení valenčních elektronů sousedních atomů
- elektrony patří oběma elektronům
- směrová (pod úhlem) a nasycená
- vazby atomů stejných prvků (\ce{H2,Cl2,O2}, \dots) či jiných sloučenin (\ce{CH4, H2O, HNO3}, \dots)
- tvrdé, vysoká teplota tání, nerozpustné v ředidlech, izolanty nebo polovodiče

### Vodíková (vodíkový můstek)
- nevazebná interakce
- vodík + elektronegativní prvek -- atom s volným elektronovým párem
- voda, nukleonové kyseliny

### Van der Waalsova
- slabá vazby
- elektrické povahy
- typicky krystaly inertních prvků
- při nízkých teplotách, při velkých relativních hmotnostech i pokojová teplota (parafín)
- měkké, nízká teplota tání

## Deformace
- změna rozměrů, tvaru a objemu tělesa z důvodu vnějších vlivů (síla, teplota\dots)
- pružná (elastická)
	- dočasná/vratná deformace
	- přestanou působit vnější vlivy, deformace zmizí
	- prodloužení pružiny, prohnutí desky
- tvárná (plastická)
	- stálá
	- přetrvává i po skončení vnějšího vlivu
	- kování, válcování, přílišné natáhnutí pružiny\dots

### Deformace působením sil
- tahem
	- působení dvou stejně velkých sil v jedné přímce ven z tělesa
	- roztahování tělesa
	- lano jeřábu, kladky\dots
- tlakem
	- působení dvou stejně velkých sil dovnitř tělesa
	- smrštění tělesa
	- pilíře mostu, nosníky domu, nosné sloupy\dots
- ohybem
	- působení síly kolmo k podélné ose
	- dolní vrstvy deformovány tahem, vrchní tlakem, zachování střední vrstvy
	- prohnutí tělesa
	- tyč mezi dvěma podpěrnými body, most mezi sloupy, polička\dots
- smykem
	- působení dvou sil na spodní a horní podstavu tělesa
	- síly v rozdílných rovinách
	- vzájemné posunutí vrstev
	- šroub, nýt
- krutem
	- dvě dvojce sil na podstavách, stejné momenty sil opačného směru
	- vzájemné otáčení vrstev
	- hřídele, šrouby při utahování, vrtání\dots

### Hookův zákon
- zákon pro pružnou deformaci
- pro malá prodloužení a deformace
- prodloužení tělesa při deformaci tahem a tlakem
	\eq{
		\epsilon = \frac{\sigma}{E} \ztoho \sigma = \epsilon E
	}
	- $\epsilon=\Delta l/l$ -- relativní prodloužení/zkrácení tělesa
	- $\sigma$ -- mechanické napětí
	- $E$ -- modul pružnosti v tahu (Youngův modul)
- alternativní tvar
	\eq{
		F = -kx
	}
	- $F$ -- působící síla
	- $k$ -- konstanta pružnosti
	- $x$ -- prodloužení
- relativní prodloužení
	- značka $\epsilon$, $[\epsilon]=1$ (bezrozměrné)
	- popisuje relativní prodloužení tělesa při působení síly
- mechanické napětí
	- značka $\sigma$, $[\sigma] = \jd{Pa}$
	- míra vnitřní síly na jednotku plochy
		\eq{
			\sigma = \frac{F}{S}
		}
	- popis stavu silového namáhání tělsa
- modul pružnosti v tahu (Youngův modul)
	- značka~$E$, $[E] = \jd{Pa}$
	- míra prodloužení v závislosti na mechanickém napětí
	- vlastnost tělesa -- konstantní, pro každý materiál rozdílná hodnota
	- konstrukční ocel ($"210 GPa"$), beton ($"35 GPa"$), monokrystalický diamant ($"820 GPa" - "1~250 GPa"$)
	
### Teplotní roztažnost
- změny rozměrů tělesa z důvodu změny teploty
- natahování drátů, zvětšení pístu v motoru

#### Délková roztažnost
- tepelné roztáhnutí do délky
- převážně u dlouhých těles -- tyče, dráty, trubice\dots
- popis změny délky v závislosti na změně teplotě
	\eq{
		\Delta l = l\alpha\Delta t
	}
	- $l$ -- původní délka
	- $\alpha, [\alpha=\jd{K^{-1}}]$ -- teplotní součinitel délkové roztažnosti
		- závislý na teplotě, pro malé~$\Delta t$ aproximace na konstantní
- nová délka po změně teploty
	\eq{
		l' = l + \Delta l = l + l\alpha\Delta t = l(1+\alpha\Delta t)
	}
- využití -- měření teploty -- bimetalové teploměry, termostaty, požární hlásiče\dots

#### Objemová roztažnost
- způsobeno délkovou roztažností do všech směrů
	\eq{
		V' \approx V(1+\beta\Delta t)
	}
	- $\beta=3\alpha, [\beta=\jd{K^{-1}}]$ -- teplotní součinitel objemové roztažnosti
	- platí jako aproximace (zanedbání členů vyšších mocnin $\beta$)
