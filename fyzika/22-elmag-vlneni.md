% elektromagnetické vlnění - charakteristika
% Maxwellova teorie elmag. pole
% Elmag. oscilátor jako zdroj elmag. vlnění
% popis elmag. vlny - vlastnosti elmag. vlnění
% vlastní a nucené kmitání elmag. vln
% rovnice elmag. vlny
% elmag. dipól
% šíření elmag. vln prostorem + využití

\setcounter{section}{21}
# Elektromagnetické vlnění
- šíření elektrického a magnetického pole prostorem
- oscilující elektrické a magnetické pole
- složka magnetického pole kolmá na elektrické pole
- šíření rychlostí světla~$c="3e8 m.s^{-1}"$
- vlnoplocha z bodového zdroje -- koule
- emitovány částicemi s nábojem při zrychlení

\fullfig[width=0.8\textwidth]{22-vlna}[Šíření elektrického a magnetického pole]

## Maxwellova teorie
- definována Jamesem Clerkem Maxwellem
- zkompletoval a doplnil známe rovnice o elektrickém a magnetickém poli
- došel k závěru, že světlo jsou elmag.~vlny
- obecné vyjádření elektromagnetického pole -- jednoznačné vyjádření z proudu a náboje
- rozšíření informací: \url{https://fykos.cz/_media/rocnik23/ulohy/pdf/serie23_4.pdf}

### První Maxwellova rovnice
- diferenciální tvar \eq{
		\nabla \cdot \vect E = \frac{\varrho}{\epsilon_0}
	}
	- $\nabla \cdot$ -- divergence (skalár vyjadřující tok vektorového pole), kdy
		\eq{
			\nabla = \\(\pder{}{x}, \pder{}{y}, \pder{}{z}\\) \ztoho \nabla\cdot\vect E = \pder{E_x}{x} + \pder{E_y}{y} + \pder{E_z}{z}
		}
	- $\varrho$ -- hustota náboje
	- $\epsilon_0$ -- permitivita vakua
- význam: jestliže se v prostoru nachází náboj ($\varrho \neq 0$), potom je přítomno nenulové elektrické pole
- *\uv{elektrické pole vzniká v nábojích}*

### Druhá Maxwellova rovnice
- diferenciální tvar \eq{
	\nabla\cdot\vect B = 0
	}
- neexistují magnetické náboje
- magnetické pole nemá na rozdíl od elektrického žádná místa v prostoru, kde by vznikalo nebo zanikalo

### Třetí Maxwellova rovnice
- diferenciální tvar \eq{
		\nabla\times\vect E = -\pder{\vect B}{t}
	}
	- $\nabla\times$ -- rotace
- zákon elektromagnetické indukce
- parafráze Faradayova zákona
- *\uv{jestliže se někde mění magnetické pole v čase, vzniká elektrické}*

### Čtvrtá Maxwellova rovnice
- diferenciální tvar \eq{
		\nabla\times\vect B = \mu_0\vect j + \mu_0\epsilon_0\pder{\vect E}{t} %_
	}
	- $j$ -- vektor hustoty proudu
	- $\mu_0$ -- permeabilita vakua
- *\uv{pokud někde teče proud nebo se mění magnetické pole, vznikne kolem něj magnetické pole}*

\fullfig{22-divergence}[Vizualizace divergence]

## Elektromagnetický oscilátor
## Vlastnosti elektrického vlnění
