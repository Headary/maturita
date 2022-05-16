% Základní části počítače, jejich funkce a parametry, záznamová média, programové vybavení počítačů, operační systémy, typy operačních systémů a jejich rozšíření

\setcounter{section}{4}
# Základní části počítače, operační systémy

## Základní části počítače
- hardware -- fyzické části počítače
- PC case -- počítačová skříň
	- skříň pro uchování, ochranu a namontování jednotlivých počítačových komponentů
- základová deska
	- deska propojující všechny komponenty
	- uchovává v sobě BIOS -- první spuštěný program, boot OS
		- uložení na ROM (read only memory)
	- chipset
		- north bridge -- komunikace CPU a ostatních komponentů systému
		- south bridge -- připojen na north bridge, pomocná rozhraní
		- Super I/O čip -- připojen na south bridge, pomalé a legacy komponenty
	- sběrnice (bus)
		- propojení komponentů na základní desce, \uv{dálnice dat}
		- interface pro zapojení přídavných karet
	- CMOS, CMOS baterie -- vždy běžící hodiny
- procesor (CPU -- central processing unit)
	- \uv{mozek počítače}
	- provádí výpočetní úkony, spouští programy, komunikuje s ostatními zařízeními
- operační paměť (RAM -- random access memory)
	- uchování dat během spuštění programu
	- pomalejší než L3 či jiná cache, ale mnohem rychlejší než disk
	- při zpracovávání se zde načtou data z disku pro rychlejší přístup
	- funkční pouze s energií, po vypnutí počítače smazání
- disk
	- \uv{persistent memory}
	- velkokapacitní dlouhodobé uchování dat
	- data zachována i po vypnutí počítače
	- HDD, SDD, CD, DVD
- zdroj
	- zdroj elektrické energie pro komponenty
	- modulace $"230 V"$ střídavého napětí na různá nižší stejnosměrná napětí ($"3.3 V", "5 V", "12 V"$ atd.)
- rozšiřující karty
	- většinou na PCI(E) buse
	- grafická karta
		- specializace na rendering
		- velký počet cores o menším výkonu
		- paralelizace
	- zvuková karta
		- zvukový interface a porty
		- dnes většinou integrovaná do motherboardy
	- síťová karta atd.
		- spojení s LAN, případně WLAN


## Záznamová média
- viz sekce~\ref{2-zaznamova-media}

## Programové vybavení počítače
- software -- programová část počítače

### Možnosti programování / programovací jazyky
- nejnižší úroveň -- executable code / strojový kód / machine code
	- interpretace CPU nebo GPU
	- čistá binární data měnící stav procesoru
- první úroveň abstrakce -- programovací jazyk assembly
	- pro lidi již srozumitelné
	- velká kontrola nad systémem
	- možné měnit velmi low-level věci
- vyšší programovací jazyky
	- kompilované/interpretované na strojový kód a následně na binární kód
	- pro člověka srozumitelné
	- velká řada funkcí, u vyšších garbage collection, arrays, classes atd.

### Typy softwaru
- systémový software
	- firmware -- software v hardwaru, ovládání hardwaru, low-level operace
	- microcode -- specifikace pro CPU jak spouštět strojový kód
	- operační systém
		- správa počítače, spuštění programů
		- ovladače -- způsob komunikace se zařízeními
- aplikace / aplikační software
	- desktop aplikace -- prohlížeč, office, další programy, příp.~aplikace v~telefonu
	- webové aplikace -- využití JavaScriptu, aplikace spuštěna v prohlížeči
	- server software -- většinou bez GUI, hostování webových aplikací, provádění výpočetních úkonů atd.
	- plugin/extension -- rozšíření/modifikace jiné aplikace

## Operační systémy
- hlavní software
- řízení hardwaru, management aplikací, IO operace, alokace paměti atd.

### Příklady
#### Unix
- původně v assembly, později v C
- používán na mainframech
- multitasking OS
- *Unix filozofie*
	- jeden program dělá jednu věc a dělá ji dobře
	- předpoklad, že output jednoho programu může být input dalšího; programy jsou schopny spolu komunikovat
	- programy by měly být schopné využívat text streams -- univerzální komunikace
	- všechno je soubor
- základ několika dnešních operačních systémů

#### Unix-like systémy
- systémy pokračující v Unix filozofii a rozšiřující Unix
- Linux, BSD, macOS / OS X a další

##### Linux
- 1991, Linus Torvalds, původně vytvořen jako vedlejší projekt
- Unix-like systém bez Unix kódu
- open-source
- univerzální, podpora mnoha systémů
- servery, embedded systems, superpočítače
- různé distribuce -- Debian, Fedora, Arch, Ubuntu, Linux Mint, OpenSUSE
- základ Androidu či Chrome OS
	
##### BSD
- různé varianty -- FreeBSD, OpenBSD, NetBSD\dots
- využívá původní UNIX kód, jeho modifikace a rozšíření
- využití jako webserver, první server fungoval na BSD
- původ mnoha dnešních internetových protokolů

##### macOS / OS X
- proprietary operační systém firmy Apple
- používán na všech jejich počítačích
- postaven na technologii vyvinuté v NeXT
- prolínání programů s linuxem
- větší zastoupení uživatelů -- větší hardwarová kompatibilita

#### MS-DOS a Microsoft Windows
- proprietary OS od Microsoftu
- nejrozšířenější OS mezi stolními počítači a notebooky
	- většinou již předinstalován
- založen na MS-DOS
- velký důraz pro zpětnou kompatibilitu
- design hlavně pro x86-64 procesory, verze i pro ARM a IA-32 (x86)
- verze i pro servery

### Komponenty
#### Kernel
- základní operace a kontrola hardwaru
- přístup k RAM / memory management, správa hardwaru pro programy, interrupts
- multitasking, správa CPU, program extension
- disk access a file systémy
- ovladače/drivers
	- kód pro ovládání a komunikaci s hardwarem

#### Networking
- umožnění připojení k síti
- síťové protokoly, hardware, aplikace využívající síť
- TCP/IP, SSH, DHCP, DNS\dots

#### User interface
- komunikace uživatele se systémem
- pomocí vstupních a výstupních zařízení

##### Command-line interface (CLI)
- interfacing pomocí příkazové řádky
- ve své podstatě pouze text
- přímé psaní příkazů s argumenty
- velké možnosti
- SH, Bash, ZSH, FISH...

##### Graphical user interface (GUI)
- grafická část systémů
- využití moderními systémy
- mnohé operační systémy dovolují nainstalovat a vytvořit jakékoliv GUI, hlavně Linux
	- desktop environments -- GNOME, KDE Plasma, Cinnamon, XFCE, LXDE\dots
	- window managers -- i3, xmonad, dwm, bspwm, awesome
- Windows -- windows shell
