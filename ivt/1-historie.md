# Počítače, přehled historie, generace. Reprezentace dat v PC.

## Počítač
- zařízení a stroje zpracovávající data pomocí vytvořeného programu
- hardware (fyzické součásti) a software (program)
- získávání dat vstupním zařízením, zpracování a uchování dat, reprezentace výsledku výstupním
- notebooky, desktopy, mikrocontroller (ledničky, chytrá zařízení...), auta, ...

## Historie
- *"počítač"* -- člověk, co počítá, později počítací zařízení
- předchůdci počítače
	- Abacus
	- mechanické kalkulátory
	- děrnostítková zařízení
	- analytický stroj

### Abacus
- korálkové počítadlo
- 3~000 př.~n.~l., Malá Asie

### Mechanický kalkulátor
- Wilhelm Schickard, 17.~stol
- ozubená kolečka z hodin
- sčítání a odčítání šesticiferných čísel

### Děrné štítky
- 1801 -- Joseph Marie Jacquard -- využití v tkalcovském stavu
- milník v počítačích -- možné vytvářet a uchovávat a znovu použít instrukce
- 1890 -- Herman Hollerith, USA -- zjednodušení administrativy (sčítání lidu), základ~**IBM**

### Analytický stroj
- 1833 -- Charles Baggage -- první návrh
- 50 místní čísla, fixní desetinná čárka, parní pohon
- nikdy nesestaven

## Generace
### Nultá generace
- elektromechanické stroje, využití relé
- posun vývoje za druhé světové války

#### Z1
- 1938 -- první počítač
- dvojková soustava, děrné pásky

#### Colossus
- 1943, Thomas H. Flowers
- použit na rozluštění německých kódů za druhé světové války (Enigma)
- vakuové elektronky

#### Mark I. -- ASCC
- první IBM počítač
- děrné pásky, 24 stop ve skupinách po třech (2 adresy + instrukce)
- desítková soustava, pevná desetinná čárka

### První generace (1945 -- 1950)
- použití elektronek
- počítače drahé, neefektivní, vysoký příkon

#### ENIAC
- 1944, Pensylvánie
- smyčky a podmíněné skoky, Turing complete
- 5000 součtů za minutu
- energeticky náročný, poruchový, drahý provoz

#### MANIAC
- inspirace ENIACem
- matematické výpočty fyzikálních dějů, vývoj jaderné bomby

### Druhý generace (1951 -- 1964)
- využití tranzistorů $\rightarrow$ vylepšení počítačů
	- zmenšení, větší výkon, efektivita a spolehlivost
- pronikání počítačů do běžného života
	- obchody, administrativa, skladování dat\dots
- děrné pásky, štítky, magnetické pásky
- první operační systémy
- jazyky symbolických adres
- "vyšší" programovací jazyky -- COBOL, FORTRAN, ALGOL\dots

### Třetí generace (1965 -- 1980)
- integrované obvody
- výkon počítače zhruba druhá mocnina jeho ceny
- vykonávání více procesů najednou (jeden program čeká na I/O, druhý používá procesor)

#### IBM System 360
- pevná i proměnná délka dat
- průlom v praktickém a komerčním využití, tisícové série

### Čtvrtá generace (od 1980)
- mikroprocesory a osobní počítače
- snížení počtu obvodů na základní desce, zvýšená efektivita, menší rozměry, vyšší rychlost
- ústup střediskových počítačů (mainframe)
- IBM, éra DOS, GUI
- exponenciální růst ceny -- není nejlepší koupit nejvýkonnější počítač
- vznik clusterů
- vznik internetu, distribuovaných systémů
- multiprocesory

## Data v počítači
- reprezentace pomocí 1 a 0 (zapnuto/vypnuto) -- bity [b] (kb, Mb, Gb,...)
- seskupovány po 8 -- byty [B] (kB, MB, GB,...)
- data uchovány podle různých řádů a systémů -- formáty souborů, kódování jazyků (ASCII vs UTF8) atd.
- metadata
	- data o dalších datech / o souboru
	- specifikace MIME typu, čas, permissions, creator, ...
- konverze dat -- převod mezi formáty
	- komprese dat -- konverze s cílem zmenšit velikost souborů, lossy/lossless compression
- ukládání -- RAM, disky (HDD, SSD, USB disky, paměťové karty), disk array (RAID), cloud
