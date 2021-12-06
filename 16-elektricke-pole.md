\setcounter{section}{15}
## Elektrické pole
### Elektrický náboj
- schopnost hmoty působit elektrickou sílou a vytvářet elektromagnetické pole
- skalární veličina
- značka~$Q$, $[Q]=\jd{C}$ (Coulomb), $C=As$ (Ampérsekunda)
	- $Q>0$ -- kladný náboj -- protony
	- $Q=0$ -- neutrální nábor -- neutrony
	- $Q<0$ -- záporný náboj -- elektrony %>
- možnost definovat jako
	\eq{
		\Delta Q = \int i(t)dt
	}
	- $i(t)$ -- okamžitý proud v čase
- platí zákon zachování elektrického náboje
- kvantovaný -- hodnota vždy násobek elementárního náboje~$e="1,602~176~634e−19 C"$
- možnost používat analogii s hmotností v klasické mechanice
- přitahování těles s různým nábojem, odpuzování těles se stejným nábojem

### Coulombův zákon
- zákon kvantitativně určující elektrickou sílu~$F\_{el}$ mezi elektricky nabitými tělesy
- elektrická síla je přímo závislá na nábojích obou těles a nepřímo úměrná kvadrátu jejich vzdálenosti
	\eq{
		\abs{\vect F\\\_{el}} = k\\\_e\frac{\abs{q\_1q\_2}}{r^2} \ztoho \abs{\vect F\\\_{el}} = \frac{4\pi\epsilon\_0\epsilon\\\_r}\frac{\abs{q\_1q\_2}}{r^2}
	}
	- $k\\_e = "8.988e9 N.m^2.C^{-2}"$ -- Coulombova konstanta -- pro vakuum ($\epsilon\\\_r=1$)
	- $q\_1$ a $q\_2$ -- hodnoty nábojů
		- souhlasné znaménko -- síla působí směrem od druhého tělesa
		- opačné znaménko -- síla působí k druhému tělesu
	- $\epsilon\_0="8.854e-12 F.m^{-1}"$ -- permitivita vakua
	- $\epsilon\\\_r$ -- relativní permitivita prostředí, bezrozměrná veličina
- vektorová forma
	\eq{
		\vect F\\\_{el} = k\\\_e\frac{q\_1q\_2\vect r}{\vect r^3}
	}

\fullfig[width=0.4\textwidth]{16-coulombs-law}[Coulombův zákon u nábojů]

### Intenzita el.~pole
- značka~$E$, $[E]=N.C^{-1}=V.m^{-1}$
- vektorová veličina popisující elektrické pole
- síla vztažena na jednotku náboje
- v klasické mechanice lze přirovnat ke gravitačnímu zrychlení
- výpočet
	\eq{
		\vect E = \frac{\vect F}{Q} \text{ nebo } E = \frac{U}{l}
	}
	- $U$ -- napětí zdroje
	- $l$ -- délka vodiče

#### Tvar elektrické pole
- znázorněn pomocí siločar -- spojují stejné $\vect E$
	- směr z kladného do záporného náboje
- speciální případy
	- radiální pole -- okolo jednoho náboje, sbíhání siločar do jednoho bodu
	- homogenní pole -- mezi nabitými deskami, rovné siločáry, pole všude stejné

\begin{figure}[htbp]
\centering
\subfloat[Pole okolo bodových nábojů]{\includegraphics[height=0.18\textheight]{16-pole-naboj}}
\subfloat[Homogenní pole mezi deskami]{\includegraphics[height=0.18\textheight]{16-homogenni-pole}}\\\\
\subfloat[Neuspořádané el.~pole]{\includegraphics[height=0.2\textheight]{16-el-pole}}
\caption{Různé příklady siločar elektrického pole}
\end{figure}

### Elektrický potenciál
- potenciální energie jednotkového náboje v el.~poli
- značka~$\phi$, $[\phi]=V$ (volt)
- možno přirovnat ke gravitačnímu potenciálu
### Práce v el.~poli
### Kapacita vodiče, kondenzátor, zapojení, využití
### Chování vodiče a izolantu v el.~poli
