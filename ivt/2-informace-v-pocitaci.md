\setcounter{section}{1}
# Informace v počítači, číselné soustavy, jednotky informace, záznamová média
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

## Číselné soustavy
- soustavy specifikující reprezentaci čísel
- báze~$r$ -- číslo specifikující počet znaků soustavy (desítková soustava -- $r=10$)
- řád~$n$ -- hodnota řádů je $r^n$ (stovky -- $10^2$)
- hodnota čísla
	
\eq{
	N = \sum\_{i=-l}^{k-1}n\_i\cdot r^i= n\_{k-1}r^{k-1}+n\_{k-2}r^{k-2}+...+n\_0r^0+n\_{-1}r^{-1}+...+n\_{-l+1}r^{-l+1}+n\_{-l}r^{-l}
}

### Dvojková (binární) soustava
- báze 2 -- čísla 0, 1
	- každá cifra odpovídá mocnině dvou

#### Převody
##### Dvojková $\rightarrow$ Desítková
- každou cifru vynásobíme danou mocninou základu a hodnoty sečteme
	\eq{
		(11010)\_2 = 1\cdot2^4 + 1\cdot2^3 + 0\cdot2^2 + 1\cdot2^1 + 0\cdot2^0 = 1\cdot16 + 1\cdot8 + 0\cdot4 + 1\cdot2 + 0\cdot1 = (26)\_{10}
	}

##### Desítková $\rightarrow$ Dvojková
- číslo vydělíme 2, zapíšeme zbytek po dělení a dělíme dál, dokud nedělíme nulu

pořadí dělení | 7.|	6. | 5. | 4. | 3. | 2. | 1. | číslo
:--: | :--: | :--:| :--:| :--:| :--:| :--:| :--:| :--:
výsledky dělení | 1 | 3	| 6 | 13 | 26 | 53 | 107 | 214
rozklad na součin 2 | $2*0+1$ | $2*1+1$ | $2*3$ | $2*6+1$ | $2*13$ | $2*26+1$ | $2*53+1$ | $2*107$
zbytky dělení | 1 | 1 | 0 | 1 | 0 | 1 | 1 | 0

#### Záporná čísla
##### Přímý kód
- první bit je znaménkový
	- $(00000001)\_2$ = $(1)\_{10}$
	- $(10000001)\_2$ = $(-1)\_{10}$
- potřebné odlišné algoritmy pro sčítání a odčítání
- dvě reprezentace nuly

##### Inverzní kód
- záporné číslo zaznamenáno jako binární negace
- dvě nuly
- různé algoritmy pro sčítání a odčítání

##### Doplňkový kód
- záporné číslo zaznamenáno jako binární negace (výměna 0 a 1) + 1
- podle úvodního bitu lze rozeznat kladná/záporná čísla
- využití přetečení
	- 00000000 - 00000001 = 11111111
- jediná reprezentace nuly
- stejné algoritmy pro sčítání a odčítání
- zachována komutativnost
- používané v počítačích
- příklad: pokud 00001101 je binární vyjádření čísla 13, pak −13 se vypočte jako NOT(00001101) + 1 = 11110010 + 1 = 11110011
\eq[m]{
	20\_{10} - 13\_{10} = 20\_{10} + (-13)\_{10} = 00010100\_{2} + 11110011\_{2} =\\\\
	= 1~00000111\_{2} =  7\_{10} \\text{(po odříznutí přeteklého devátého bitu)}
}

### Šestnáctková (hexadecimální) soustava
- báze 16 -- čísla 1, 2, 3, 4, 5, 6, 7, 8, 9, A(10), B(11), C(12), D(13), E(14), F(15)
- jednoduchý převod mezi binární a hexadecimální soustavou
- častý zápis v programování~-- $\mathrm{0xE1}$

#### Převody
##### Šestnáctková $\rightarrow$ Desítková
- stejné jako u dvojkové soustavy, pouze násobíme mocninou~$16$

##### Desítková $\rightarrow$ Šestnáctková 
- stejné jako u dvojkové soustavy, pouze dělíme~$16$

##### Šestnáctková $\rightarrow$ Dvojková
- každé 4~bity (nibble = $"4 bíty"$ = polovina bytu) odpovídají jednomu řádu hex-soustavy ($2^4 = 16$)
	- 1 = 0001
	- 2 = 0010
	- 3 = 0011
	- \dots
	- E = 14 = 1110
	- F = 15 = 1111
- z každé jedné cifry určíme dané 4 bity
- 2 cifry hex odpovídají bytu
- příklad: $\mathrm{0xE1} = 1110~0001$	

##### Dvojková $\rightarrow$ Šestnáctková 
- opačný způsob -- z každých 4 bitů určíme odpovídající cifru hex
- příklad: $1011~0101 = \mathrm{0xB5}$

## Jednotky informace
- základní jednotka -- bit -- $"1 b"$
	- uložení jednoho on-off/true-false/1-0 stavu
- shromažďovány do skupiny po~8~-- byte -- $"1 B"="8 b"$
- násobky
	- desítková soustava
		- kilobyty -- $"1 kB" = "10^3 B" = "1~000 B"$
		- megabyty -- $"1 MB" = "10^6 B"$
		- gigabyty -- $"1 GB" = "10^9 B"$
		- terabyty -- $"1 TB" = "10^{12} B"$
	- dvojková soustava
		- kibibyte -- $"1 KiB" = "2^{10} B" = "1~024 B"$
		- mebibyte -- $"1 MiB" = "2^{10} KiB" = "2^{20} B"$
		- gibibyte -- $"1 GiB" = "2^{10} MiB" = "2^{30} B"$
		- tebibyte -- $"1 GiB" = "2^{10} GiB" = "2^{40} B"$

## Záznamová média
- historicky
	- děrné pásky -- záznam dat pomocí děr
	- diskety (floppy disk) -- magnetické úložiště
- CD/DVD -- optické disky / malá zrcadla, čtení/zápis pomocí disku
- HDD -- Hard drive disk (pevný disk)
	- elektromagnetické úložiště
	- uvnitř točící se disky se čtecí hlavou
	- SATA protokol
	- na dnešní poměry pomalé
	- nízká cena za velkou kapacitu
	- využití -- archivace, uchování velkých dat (např. NAS)
- SSD -- Solid state drive
	- uchování dat pomocí integrovaného obvodu (flash memory)
	- chybí mechanické části
	- SATA protokol
	- rychlý přístup k datům
	- vyšší cena na jednotku objemu
	- využití -- instalace OS, programů, data potřebná rychlé čtení/zápis
- M.2 SSD
	- podobné SATA SSD
	- využívá M.2 slot
	- možné využití NVMe (na PCIe) protokolu -- vyšší přenosová rychlost
- USB flash drive
	- flash memory přes USB protokol
	- přenositelná zařízení
	- fyzický přenos dat
- Magnetické pásky
	- uchování dat pomocí magnetismu
	- nízká cena
	- dnešní využití pro archivaci, zálohy
