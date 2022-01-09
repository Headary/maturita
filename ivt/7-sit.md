% Lokální počítačové sítě, druhy sítí, RM OSI a TCP/IP model, síťové prvky a
% protokoly, paket, tok informací v síti, bezdrátové sítě.

\setcounter{section}{6}
# Počítačové sítě
- set počítačů sdílející informace nalezeny na nebo poskytující síťovými zařízeními
- komunikace mezi počítači díky digitálním protokolům
- osobní počítače, servery, síťové komponenty\dots

## Rozdělení

### Podle typu připojení
- více možností připojení k síti

#### Drátové sítě
- připojení k síti pomocí fyzického kabelu
- více možností kabelů
	- koaxial -- hlavně televize, kanceláře, pracoviště; dnes již méně rozšířen
	- již existující vedení (coaxial, telefon, rozvod elektřiny)
	- twisted pair -- 4 páry měděných drátů, až $"20 Gb/s"$, využíván pro Ethernet, shielded varianta, různé kategorie (CAT 5, CAT 5E, CAT 6, CAT 7)
	- optický kabel -- kabel vede světlo místo elektřiny, vysoká rychlost rychlost, možnost přenosu na velké vzdálenosti (oceány)

### Podle velikosti
- nanoscale
- NFC (near-field)
- BAN (Body Area Network)
- PAN (Personal Area Network)
- LAN (Local Area Network)
- CAN (Campus Area Network)
- MAN (Metropolitan Area Network)
- WAN (Wide Area Network)

#### LAN
- propojení malé sítě (domácnost, škola, firma\dots)
- Ethernet a WiFi (WLAN -- wireless wide area network)
- propojení počítačů, připojení k NAS, tiskárny\dots
- dříve protokol IPX/SPX, dnes TCP/IP

##### VLAN
- virtuální LAN uvnitř sítě
- tvořena softwarem
- izolování částí sítě

#### WAN
- síť největšího pokrytí
- spojení pouze největších uzlů, dále již podsítě
- nejznámější příkladem internet

#### PAN
- síť krátkého dosahu
- Bluetooth, IrDA, USB, FireWire
- možno využít pro sdílení internetu

#### MAN
- spojení města do sítě

## Síťové modely
- rozdělení sítě do vrstev
- komunikace v menších, jednodušších krocích
- standardizace komunikace mezi zařízeními

### RM OSI
- *reference model Open Systems Interconnection*
- také nazýváno RM ISO/OSI (ISO -- model mezinárodně standardizován)
- protokol o 7 vrstvách, $n$-tá vrstva využívá funkcí vrstvy~$n-1$
- výměna protokolových datových jednotek (PDU -- protokol data unit) na každé vrstvě mezi dvěma entitami
	- PDU obsahuje SDU (service data unit) společně s headers a footers

#### Posílání dat
1. data pro přenos zkompletována na vrstvě~$n$ do PDU
1. PDU posláno do vrstvy~$n-1$, kde je přijímáno SDU
1. na vrstvě~$n-1$ se k SDU přidají headers a footers $\rightarrow$ PDU vrstvy~$n-1$
1. opakování procesu do vrstvy~$1$, kde jsou data přenesena
1. při přijímání jsou data přeneseny vrstvami jako série SDUs a přitom zbavována dat jednotlivých vrstev až do nejvrchnější vrstvy

\begin{table}
\renewcommand{\arraystretch}{1.35}
\centering
\begin{tabularx}{0.9\textwidth}{c|c>{\centering}m{2cm}|>{\centering}m{1.8cm}|X}
\toprule
\multicolumn{3}{c|}{Layer} & Protocol data unit (PDU) & Function\\\\
\midrule
\multirow{4}{\*}[-1.5cm]{\rotatebox{90}{Host layers}} & 7 & Application & \multirow{3}{\*}[-1cm]{Data} & High-level APIs, including resource sharing, remote file access\\\\
& 6 & Presentation && Translation of data between a networking service and an application; including character encoding, data compression and encryption/decryption\\\\
& 5 & Session (Relační) && Managing communication sessions, i.e., continuous exchange of information in the form of multiple back-and-forth transmissions between two nodes\\\\\cline{2-5}
& 4 & Transport & Segment, Datagram & Reliable transmission of data segments between points on a network, including segmentation, acknowledgement and multiplexing\\\\
\midrule
\multirow{3}{\*}[-0.3cm]{\rotatebox{90}{Media layers}} & 3 & Network & Packet & Structuring and managing a multi-node network, including addressing, routing and traffic control\\\\
& 2 & Data link&Frame&Reliable transmission of data frames between two nodes connected by a physical layer\\\\
& 1 & Physical&Bit, Symbol&Transmission and reception of raw bit streams over a physical medium\\\\
\bottomrule
\end{tabularx}
\caption{Vrstvy tvořící OSI model}
\end{table}

### TCP/IP
- *transmission control protocol* / *internet protocol*
- specifikace end-to-end komunikace
- specifikace paketizace dat, adresování, přenos, routování, a přijímání
- zjednodušený RM OSI model
- funkce rozdělena do 4 vrstev
	- vrstva síťového rozhraní
	- síťová vrstva
	- transportní vrstva
	- aplikační vrstva

% TODO

\fullfig{7-tcp}[Zabalení TCP dat]
