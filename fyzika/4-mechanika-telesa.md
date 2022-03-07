\setcounter{section}{3}
# Mechanika tuhého tělesa
## Tuhé těleso
- ideální těleso
- model použit v případech nemožnosti nahrazení hmotným bodem
	- nezle zanedbat rozměry tělesa
- objem a tvar neměnné -- zanedbání deformace
	- neměnné vzdálenosti mezi částicemi
- síla má pouze rotační a translační účinky
- možno aproximovat soustavou hmotných bodů

## Moment síly
- značka~$\vect M$, $[\vect M]=\jd{Nm}$
- míra otáčivého účinku síly
- součin síly~$\vect F$ a jejího průvodiče (ramene síly)~$\vect r$
	\eq[m]{
		\vect M &= \vect r\times \vect F\\\\
		M &= rF
	}
- směr určen pomocí pravidla pravé ruky
- momentový bod -- bod vůči kterému určujeme moment síly
	- nemusí ležet na ose otáčení, ale je to výhodné

\fullfig[width=0.35\textwidth]{4-moment-sily}[Moment síly v ose otáčení]

### Dvojice sil
- značení~$\vect D$
- současné působení stejně velkých sil opačného směru v různých místech ($F=F_1=F_2$)
- vektory neleží na jedné přímce
- výsledný moment síly roven součtu jednotlivých momentů sil
	\eq[m]{
		D &= M_1 + M_2\\\\
		D &= F_1r_1 + F_2r_2\\\\
		D &= F(r_1+r_2)\\\\
		D &= Fd
	}
	- $d$ -- vzdálenost působišť sil~$F_1$ a~$F_2$

### Momentová věta
- \emph{\uv{Algebraický součet statických momentů všech sil v soustavě k libovolně zvolenému momentovému středu je roven statickému momentu výslednice této soustavy a k témuž středu.}}
	\eq[m]{
		\sum_{i=1}^n M_i &= M\_R\\\\
		\sum_{i=1}^n F_ir_i &= F\_Rr\_R
	}
- specifikace skládání sil a jejich momentů

## Skládání sil
- sčítání vektorů sil

### Rovnoběžné síly na společné vektorové přímce
- výsledná hodnota rovna součtu hodnot sil, opačné síly mají zápornou velikost

\fullfig[width=0.3\textwidth]{4-f-rovnobezne}[Skládání sil na sobě, z důvodu přehlednosti uvedeny pod sebou]

### Různoběžné síly
- síly nemají stejný směr
- nutno vektorově sečíst $\rightarrow$ výsledný vektor síly

#### Stejné působiště
- výslednice má stejné působiště, jako ostatní síly
- výslednice vektorový součet ostatních sil
- graficky -- doplnění na lichoběžních
- numericky
	- sinova v cosinova věta
		\eq[m]{
			F &= \sqrt{F_1^2+F_2^2-2F_1F_2\cos(180\dg-\alpha)} = \sqrt{F_1^2+F_2^2+2F_1F_2\cos(\alpha)}\\\\
			\sin a_F &= \frac{F_2}{F_1}\sin\alpha
		}
	- rozložení na $x$ a $y$ složku
		\eq[m]{
			F_{x_n} &= F_n\cos\alpha_n &
			F_{y_n} &= F_n\sin\alpha_n\\\\
			F_x &= \sum_{i=1}^n F_{x_i} &
			F_y &= \sum_{i=1}^n F_{x_i}
		}

\fullfig[width=0.4\textwidth]{4-f-ruznobezne}[Skládání sil ve stejném působišti]

#### Různá působiště
- skládání podobné jako při stejném působišti
- nutno nejdříve převést síly do společného působiště

\fullfig[width=0.7\textwidth]{4-f-ruznobezne2}[Skládání sil v různých působištích]

### Rovnoběžné síly ležící na různých vektorových přímkách
## Otáčivý pohyb
- typ pohybu tuhého tělesa
- otáčení všech bodů okolo společné osy otáčení stejnou úhlovou rychlostí
- trajektoriemi kružnice
- kinetická energie otáčení
	\eq{
		E\_k = \sum_{i=1}^n\frac{2}m_iv_i^2
		= \sum_{i=1}^n\frac{2}m_ir_i^2\omega^2
		= \frac{2}\omega^2\sum_{i=1}^nm_ir_i^2
		= \frac{2}J\omega^2
	}
	- $J$ -- moment setrvačnosti
- úhlové zrychlení vyvoláno momentem síly -- druhá impulzová věta
	\eq[m]{
		J\epsilon &= \sum M\\\\
		\epsilon &= \frac{\sum M}{J}
	}

### Moment setrvačnosti
- značka~$J$, $[J] = \jd{kg.m^2}$
- míra setrvačnosti tělesa
- pro každý tvar tělesa odlišné $\rightarrow$ určeno pouze pro základní, pro ostatní potřeba integrace
	- tyč $ml^2/12$
	- koule $2mr^2/5$
	- válec $mr^2/2$
	- tenká obruč $mr^2$

## Jednoduché stroje
- využití otáčivých účinků
- přenášení síly a mechanického pohybu z jednoho tělesa na druhé
- zmenšení potřebné fyzické námahy pro vykonání práce
- principy
	- rovnováha momentů sil (otáčení okolo pevné osy) -- páka, kladka, kolo na hřídeli
	- rovnováha sil -- nakloněná rovina, klín, šroub

### Páka
- princip rovnováhy momentů sil
	- dále od osy otáčení menší síla, ale delší rameno -- stejná práce a moment síly
- jednozvratná páka -- osa otáčení na konci páky, síly působí na jedné straně
- dvojzvratná páka -- osa otáčení mezi působícími sílami
- využití -- zmenšení potřebné síly pro úkon

### Kladka
- pevná kladka -- \uv{dvojzvratná páka}, která pouze mění směr síly
	- pevně upevněná, během práce se nepohybuje
- volná kladka -- \uv{jednozvratná páka}
	- ramena $r$ a $2r$
		\eq[m]{
			M_1&=M_2\\\\
			F_1r&=F_22r\\\\
			F_2&=\frac{2}F_1
		}
	- dělí působící sílu na dvě stejně velké složky $\rightarrow$ při tuhnutí za pouze jeden konec působíme pouze poloviční sílou
	- pohybuje se při práci
- více kladek -- kladkostroj

### Nakloněná rovina
- rozklad tíhové síly~$F\_G$ na normálovou~$F\_n$ a tečnou složku~$F\_t$
- zrychlování tělesa směrem po nakloněné rovině silou~$F\_t$
- zmenšení potřebné síly pro vykonání práce
