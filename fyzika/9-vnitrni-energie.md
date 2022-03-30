\setcounter{section}{8}

# Vnitřní energie, práce, teplo
## Vnitřní energie
- značka~$U$, $[U]=\jd{J}=\jd{kg.m^2.s^{-2}}$
- souhrn energií všech částic tělesa
	- hlavní složky -- kinetická (pohybu a kmitání) a potenciální energie částic
		\eq{
			U = E\\_k + E\\_p
		}
	- další složky -- energie elektrická, chemická, jaderná\dots
- celková kinetická a potenciální energie nezahrnuta

### Změny vnitřní energie
- nekonstantní -- může se měnit

#### Konáním práce
- konání práce působením vnějších sil
	- změna objemu nebo tlaku soustavy
	- tření těles
- obrábění kovů, stlačování plynů, mletí látek, pád meteoru
- tepelné motory -- vnitřní energie paliva $\rightarrow$ mechanická práce

#### Tepelnou výměnou
- přesun energie z teplejšího tělesa do chladnějšího
	- srážky částic na rozhraní -- výměna energie
	- zářením a pohlcováním záření tělesy
- výměna tepla

## Teplo
- značka~$Q$, $[Q]=\jd{J}$
- termodynamická veličina vyjadřující změnu vnitřní energie -- tepelnou výměnou nebo konáním práce

### 1.~termodynamický zákon 
- \emph{\uv{Přírůstek vnitřní energie soustavy se rovná součtu práce $W$ vykonané okolními tělesy působícími na soustavu určitými silami a tepla~$Q$ odevzdaného okolními tělesy soustavě.}}
	\eq{
		\Delta U = W + Q
	}
	- těleso koná práci a předává energie okolí ($W<0$, $Q<0$) $\rightarrow$ snížení vnitřní energie ($\Delta U < 0$)
	- okolí koná práci a předává energii tělesu ($W>0$, $Q>0$) $\rightarrow$ zvýšení vnitřní energie ($\Delta U > 0$)
- formulace zákonu zachování energie
- energie nevzniká, pouze se mění její forma
- adiabatický děj
	- $Q=0 \Rightarrow \Delta U = W$
	- změna vnitřní energie způsobena pouze vykonanou prací
- tepelná výměna
	- $W=0 \Rightarrow \Delta U = Q$
	- změna vnitřní energie způsobena pouze výměnou tepelné energie

### Kalorimetrická rovnice
- popis míry tepla při změně teploty tělesa za stejného skupenství
	\eq{
		Q = mc\Delta t
	}
	- $m$ -- hmotnost tělesa
	- $c$ -- měrná tepelná kapacita
	- $\Delta t$ -- rozdíl počáteční a koncové teploty
- využití při zkoumání výsledné teploty dvou těles s rozdílnou počáteční teplotou (např.~horká kovová kulička ve vodě)
	- ZZE: $Q_\text{přijaté}=Q_\text{odevzdané}$
		\eq[m]{
			Q_1 &= Q_2\\\\
			m_1c_1\Delta t_1 &= m_2c_2\Delta t_2\\\\
			m_1c_1(t-t_1) &= m_2c_2(t_2-t)
		}
		- $t_1,t_2$ -- počáteční teplota studeného a teplého tělesa
		- $t$ -- výsledná teplota
- měření v kalorimetrech

#### Měrná tepelná kapacita
- značka~$c$, $[c]=\jd{J.kg^{-1}.K^{-1}}=\jd{J.kg^{-1}.\C^{-1}}$
- veličina vyjadřující potřebnou energie pro ohřátí~$"1 kg"$ látky o~$"1 K"$
- pro každou látku odlišná
- určována experimentálně

#### Tepelná kapacita
- značka~$C$, $[C]=\jd{J.K^{-1}}=\jd{J.\C^{-1}}$
- veličina vyjadřující potřebnou energie pro ohřátí látky o~$"1 K"$
	\eq{
		Q = C\Delta t
	}
- nezávislá ne hmotnosti, pouze na teplotě
- specifická pro dané těleso
- užitečná např.~při počítání kalorimetrických rovnic bez zanedbání kalorimetru
