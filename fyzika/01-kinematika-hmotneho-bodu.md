\setcounter{section}{0}
# Kinematika hmotného bodu
- kinematika -- část fyziky zabývající se pohybem, avšak ne jeho příčinami
- sledování polohy, rychlosti, zrychlení atd.
- veličiny
	- vektor -- veličina o směru a velikosti
	- skalár -- pouze rozměr / jedno číslo
- mechanický pohyb 
	- pohyb, při kterém se mění poloha
	- vyjádřeno vždy v relaci k jinému tělesu -- vztažné soustavy
	- hmotný bod -- bezrozměrný bod v prostoru s určitou hmotností, aproximace těles
- trajektorie -- křivka pohybu tělesa (přímka, parabola, kružnice\dots)
- dráha -- délka trajektorie uražena za určitý čas
- rychlost -- změna dráhy v čase
	\eq{
		v = \der{s}{t}
	}
- zrychlení -- změna rychlosti v čase
	\eq{
		a = \der{v}{t} = \dder{s}{t}
	}

## Druhy pohybů
### Dle trajektorie
#### Přímočarý
- pohyb po přímce, směr vektoru rychlosti se nemění

#### Křivočarý
- pohyb po jakkoli zakřivené trajektorii (kružnice, šroubovice, otáčení\dots)

#### Pohyb po kružnici
- speciální případ křivočarého pohybu
- trajektorií kružnice
- poloha hmotného bodu určena průvodičem
- $r=\const$
- úhlová dráha~$\phi, [\phi]=\jd{rad}$ -- úhel opsaný průvodičem
- délka oblouku $s=r\phi$
- úhlová rychlost~$\omega, [\omega]=\jd{rad.s^{-1}}$ -- změna úhlu~$\Delta \phi$ opsána za čas~$\Delta t$
	\eq{
		\omega = \frac{\Delta \phi}{\Delta t} \ztoho \omega = \der{\phi}{t}
	}
- obvodová rychlost~$v, [v]=\jd{m.s^{-1}}$ -- rychlost tělesa po obvodu
	\eq{
		v = \der{s}{t} = \der{(\phi r)}{t} = \omega r
	}
- perioda~$T, [T]=\jd{s}$ -- čas, za který se bod dostane do původní polohy
	\eq{
		T = \frac{2\pi}{\omega} = \frac{2\pi r}{v}
	}
- frekvence~$f, [f]=\jd{s^{-1}}$ -- počet zopakování periody za jednotku času; převrácená hodnota periody
	\eq{
		f = \frac{T} = \frac{\omega}{2\pi} = \frac{v}{2\pi r}
	}

\fullfig[width=0.6\textwidth]{1-pohyb-kruznice}[Znázornění pohybu po kružnici]

### Dle rychlosti
#### Rovnoměrný pohyb
- těleso za stejné časové úseky urazí stejnou dráhu
- velikost rychlosti je konstantní
- dráha lineárně roste
	\eq{
		s(t) = vt + s_0
	}

#### Nerovnoměrný pohyb
- těleso za stejné časové úseky urazí různou dráhu
- $v\neq \const$
- grafem dráhy libovolná křivka

#### Rovnoměrný zrychlený pohyb
- nerovnoměrný pohyb, ovšem s konstantní změnou rychlosti -- zrychlení~$a$
- rychlost v čase lineární
	\eq{
		v(t) = at + v_0
	}
- grafem dráhy kvadratická funkce
	- počáteční podmínky nulové
		\eq{
			s(t) = \int_0^t v(t)\d t = \int_0^t at\d t = \frac{2}at^2 = \frac{2}vt
		}
	- počáteční podmínky nenulové
		\eq{
			s(t) = s_0 + v_0t + \frac{2}at^2
		}
- zpomalený pohyb -- rychlost tělesa se snižuje, zpomalování

\fullfig[width=16cm]{1-zrychleni}[Graf dráhy, rychlosti a zrychlení rovnoměrně zrychleného pohybu]
