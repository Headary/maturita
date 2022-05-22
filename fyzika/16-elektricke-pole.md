\setcounter{section}{15}
# Elektrické pole
## Elektrický náboj
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
- kvantovaný -- hodnota vždy násobek elementárního náboje~$e="1,602~176~634e-19 C"$
- možnost používat analogii s hmotností v klasické mechanice
- přitahování těles s různým nábojem, odpuzování těles se stejným nábojem

## Coulombův zákon
- zákon kvantitativně určující elektrickou sílu~$F\\_{el}$ mezi elektricky nabitými tělesy
- elektrická síla je přímo závislá na nábojích obou těles a nepřímo úměrná kvadrátu jejich vzdálenosti
	\eq{
		\abs{\vect F\\_{el}} = k\\_e\frac{\abs{q_1q_2}}{r^2} \ztoho \abs{\vect F\\_{el}} = \frac{4\pi\epsilon_0\epsilon\\_r}\frac{\abs{q_1q_2}}{r^2}
	}
	- $k\\_e = "8.988e9 N.m^2.C^{-2}"$ -- Coulombova konstanta -- pro vakuum ($\epsilon\\_r=1$)
	- $q_1$ a $q_2$ -- hodnoty nábojů
		- souhlasné znaménko -- síla působí směrem od druhého tělesa
		- opačné znaménko -- síla působí k druhému tělesu
	- $\epsilon_0="8.854e-12 F.m^{-1}"$ -- permitivita vakua
	- $\epsilon\\_r$ -- relativní permitivita prostředí, bezrozměrná veličina
- vektorová forma
	\eq{
		\vect F\\_{el} = k\\_e\frac{q_1q_2\vect r}{\vect r^3}
	}

\fullfig[width=0.4\textwidth]{16-coulombs-law}[Coulombův zákon u nábojů]

## Intenzita el.~pole
- značka~$E$, $[E]=\jd{N.C^{-1}}=\jd{V.m^{-1}}$
- vektorová veličina popisující elektrické pole
- síla vztažena na jednotku náboje
- v klasické mechanice lze přirovnat ke gravitačnímu zrychlení
- výpočet
	\eq{
		\vect E = \frac{\vect F}{Q} \text{ nebo } E = \frac{U}{l}
	}
	- $U$ -- napětí zdroje
	- $l$ -- délka vodiče

### Tvar elektrické pole
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

## Elektrický potenciál
- potenciální energie jednotkového náboje v el.~poli
	\eq{
		\phi = \frac{E\\_p}{Q} = \frac{W}{Q}
	}
- značka~$\phi$, $[\phi]=V$ (volt)
- zvětšování~$E\\_p$ v protisměru~$F\\_{el}$
- možno přirovnat ke gravitačnímu potenciálu
- místa vodivě spojitá mají stejný potenciál

### Elektrické napětí
- značka~$U$, $[U]=V$
- rozdíl potenciálů mezi dvěma body
- $U=\Delta\phi$

## Práce v el.~poli
- pole působí sílou na náboj -> náboj se pohybuje -> pole koná práci
- výpočet
	\eq{
		\\d W = F * \\d s \rightarrow W= Fs
	}
- změna potenciální energie = práce
	\eq[m]{
		W &= Fs = EQs = UQ\\\\
		W &= \Delta E\_p = \Delta\phi Q = UQ
	}

## Elektrická kapacita
- schopnost vodiče uložit elektrický náboj
- značka~$C$, $[C]=F$ (farad)
	\eq{
		C = \frac{Q}{\phi} = \frac{Q}{U}
	}
- množství náboje na jednotku elektrické potenciálu

### Kondenzátor
- elektrická součástka uchovávající náboj
- tvořen dvěma vodivými nabitými deskami
	- 1.~deska -- $\phi_1$, 2.~deska -- $\phi_2$
	- napětí -- $\phi_2-\phi_1=U$
	- průměrný potenciál v poli -- $\phi=\frac{U}{2}$
- desky odděleny dielektrikem (izolantem)
- energie kondenzátoru
	\eq{
		W = \phi Q, \phi=\frac{U}{2}, Q=CU \ztoho W = \frac{2}QU = \frac{2}CU^2
	}

#### Zapojení
##### Sériové
- různá napětí na kondenzátorech, sčítají se
- nabíjení a vybíjení stejným proudem
- celková kapacity
	\eq{
		\frac{C} = \frac{C_1} + \frac{C_2} + \dots + \frac{C_n}
	}

##### Paralelní
- zvětšení plochy desek
- sčítání kapacit
	\eq{
		C = C_1 + C_2 + ... + C_n
	}
- potenciály na obou stranách stejné $\rightarrow U=\const$ 
- na kondenzátorech dílčí proudy
- dílčí proudy se sčítají -- $I = I_1 + I_2 + ... + I_n$

\fullfig{16-capacitors}[Sériové a paralelní zapojení kondenzátorů]

#### Využití
- uložení energie na rychlé využití -- blesk fotoaparátu, defibrilátor
- stabilizace napětí, vyhlazení napěťových špiček
- odstranění stejnosměrné složky elektrického proudu
- počítačová paměť, časovače

## Látky v elektrickém poli
### Vodiče
- elektrické pole~$E$ přesouvá elektrony ve vodiči
- na koncích se akumulují elektrony $\rightarrow$ **indukuje** se náboj $\rightarrow$ **elektromagnetická indukce**
- vodič součástí uzavřeného obvodu $\rightarrow$ indukuje se elektrický proud

### Izolanty
- nemají volné částice s nábojem, nevedou proud

#### Polarizace dielektrika
- dielektrikum -- izolant se schopností polarizace
- vložení dielektrika do elektrického pole
- polarita opačná polaritě vnějšího el.~pole
- působením el.~sil se náboj atomu/molekuly přesune na jednu stranu (jádra na jednu stranu, elektrony na druhou) -- atomová polarizace
\fullfig{16-atomova-polarizace}[Atomová polarizace dielektrika]
- atomy/molekuly s elektrickými dipóly se natočí ve směru~$E$ -- orientační polarizace
\fullfig{16-polarizace}[Orientační polarizace]
