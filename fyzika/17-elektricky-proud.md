\setcounter{section}{16}
# Vznik elektrického proud, elektrický proud v kovech
## Elektrický proud
- značka~$I$, jednotky~$A$ (ampér)
- proud nabitých částic ze záporného konce (-) ke kladnému (+)
- domluvený směr od + k -

### Podmínky vzniku
- přítomnost volných částic
	- volné elektrony
	- ionty
- přítomnost el.~pole
	- udržení pomocí elektrického zdroje

## Elektrická vodivost kovů
- přítomnost volných elektronů -- nesou el.~proud
- el.~pole (např.~baterie) -- usměrňuje proud pohyb elektronů
- velikost el.~proudu
	\eq{
		I=\der{Q}{t}
	}

## Ohmův zákon
- pojmenován Georgem Ohmem
- vyjádření závislosti proudu na napětí pomocí veličiny odporu
	\eq{
		I = \frac{U}{R}, \qquad U = IR, \qquad R = \frac{U}{I}
	}

## Elektrický odpor
- značka~$R$, $[R]=\jd{\ohm}$ (ohm)
- související veličina -- el.~vodivost
	- značka~$G$, $[R]=\jd{\ohm^{-1}}$
	- $G = 1/R \ztoho I = GU$
- impedance -- el.~odpor v případě střídavého proudu
- výpočet
	- z proudu a napětí
		\eq{
			R = \frac{U}{I}
		}
	- z fyzikálních vlastností vodiče
		\eq{
			R = \rho\frac{l}{S}
		}
		- $\rho$ -- měrný elektrický odpor, závislý na materiálu a teplotě
		\eq{
			\rho=\rho_0(1+\alpha\Delta T)
		}
			- $\alpha$ -- teplotní součinitel odporu
		- $l$ -- délka vodiče
		- $S$ -- průřez vodiče
- rezistor -- el.~součástka pro vytvoření el.~odporu
- rezistor s proměnnou hodnotou odporu -- potenciometr nebo reostat
	- reostat -- měnitelný odpor, má 2 vývody -- jeden konec a jezdec
	- potenciometr -- dělič napětí, 3 vývody -- 2 konce a jezdec

\fullfig[width=16cm]{17-VA-kov}[Voltapérová charakteristika kovů]

### Zapojení rezistorů
#### Sériově
- proud na všech rezistorech stejný
- celkové napětí rovno součtu parciálních napětí
- celkový odpor je součet parciálních odporů
- \eq[m]{
		U = U_1 + U_2 + \dots &= IR_1 + IR_2 + \dots\\\\
		\frac{U}{I} &= R_1 + R_2 + \dots\\\\
		R &= R_1 + R_2 + \dots
	}

#### Paralelně
- napětí na všech rezistorech stejné
- celkový proud roven součtu parciálních proudů
- převrácená hodnota odporu je součet převrácených hodnot parciálních odporů
- \eq[m]{
		I = I_1 + I_2 + \dots &= \frac{U}{R_1} + \frac{U}{R_2} + \dots\\\\
		\frac{I}{U} &= \frac{R_1} + \frac{R_2} + \dots\\\\
		\frac{R} &= \frac{R_1} + \frac{R_2} + \dots\\\\
	}

### Supravodivost
- stav téměř nulového odporu
- při velmi nízké teplotě
- elektrony spojeny do párů, nesrážejí se s krystalickou mřížkou kovu
- využití -- silné magnety, přenos velmi vysoké energie, magnetická levitace

### Termoelektrický jev
- vznik napětí při spojení dvou různých kovů a změně teploty spojů
	\eq{
		U_e=\alpha\Delta T
	}
	- $\alpha$ -- termoelektrický koeficient, závislý na materiálech
- zdroj elektrického napětí -- *termočlánek*
- využití -- měření teplot, zdroj napětí

\fullfig[width=0.5\textwidth]{17-termoclanek}[Zapojení termočlánku]

## Kirchhoffovy zákony
- zákony popisující elektrický obvod
- na principu zachování náboje a energie

### První Kirchhoffův zákon
- \uv{Algebraický součet proudů v uzlu je roven nule.}
	\eq{
		\sum_{k=1}^n I_k = 0
	}
- dohodnutý směr proudu
	- proud proudí do uzlu -- kladný směr
	- proud proudí z uzlu -- záporný směr

\fullfig[width=0.2\textwidth]{17-kirchhoff-1}[Nákres proudů na uzlu]

### Druhý Kirchhoffův zákon
- \uv{Algebraický součet napětí ve smyčce je roven nule.} / \uv{Součet elektromotorických napětí zdrojů ve smyčce je roven součtu úbytků napětí na spotřebičích}
	\eq[m]{
		\sum_{k=1}^n U_k &= 0\\\\
		\sum_{k=1}^n U_{\text{e}_n} &= \sum_{k=1}^m \\Delta U_k
	}
- běžný případ -- obvod se zdroji a rezistory
	\eq{
		\sum_{k=1}^n U_{\text{e}_n} = \sum_{k=1}^m R_kI_k
	}

\fullfig[width=0.35\textwidth]{17-kirchhoff-2}[Aplikace 2. KZ na část obvodu (na smyčku)]

\fullfig[width=0.35\textwidth]{17-kirchhoff-3}[Nákres KZ při řešení el.~obvodů]

## Práce a výkon el.~proudu
### Elektrická práce
- značka $W$, $[W]=J$ (joule)
- práce vykonána elektrickým proudem
- náboj v čase
- \eq{W = Qt = UIt = Pt}

### Elektrický výkon
- značka $P$, $[P]=W$ (watt)
- práce v čase
- okamžitá práce
- \eq{
		P = \der{W}{t} = \der{UIt}{t} = UI
	}

### Účinnost
- značka~$\eta$, $[\eta]=\%$
- podíl skutečně využité energie z dodané energie
- zbytek ztráty -- teplo, zvuk, světlo\dots
- \eq{
		\eta = \frac{P}{P_0} = \frac{W}{W_0}
	}
	- $P, W$ -- vykonaná práce, výkon
	- $P_0, W_0$ -- dodána práce, příkon
