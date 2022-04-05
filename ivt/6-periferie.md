% Periferní zařízení počítačů, rozdělení z hlediska vstupu a výstupu informace, popis funkce
\setcounter{section}{5}
# Periferní zařízení počítačů
- zařízení mimo počítač, komunikace s ním
- vstup/výstup informací
	- vstupní jednotky -- klávesnice, myš/touchpad, grafický tablet, skener, mikrofon, dotyková obrazovka, joystick, gamepad, trackball, čtečka karet\dots
	- výstupní jednotky -- monitor, tiskárna, reproduktory, sluchátka, RGB osvícení

## Vstupní zařízení
- pořízení informace a předání počítači
- změna vstupu počítače

### Klávesnice
- základní vstup
- vstup textu, znaků či funkcí
	- písmena, čísla, znaky, šipky, F1--F12, ctrl, alt, shift, změna hlasitosti\dots
- různé rozložení klávesnice
	- ČR -- QWERTZ
	- US -- QWERTY
	- další -- ASERTY, Dvorak\dots
- připojení -- PS/2, USB, bluetooth, bezdrátové 2,4GHz
- kódování jazyků -- ASCII, UNICODE (UTF-8, UTF-16, UTF-32) -- univerzální sada
- typy -- membránové, mechanické (red, brown, blue\dots{} switches), optické

### Myš
- vstup polohy na obrazovce + 2 tlačítka a kolečko (+ macro klávesy)
- myš senzory -- kuličkový, optický, laserový
- připojení -- PS/2, USB, bluetooth, bezdrátové 2,4GHz
- parametry -- DPI, odezva

#### Touchpad
- u notebooků
- \uv{malá dotyková obrazovka}
- kapacitní technologie
- gesta

#### Dotyková obrazovka
- rezistivní
	- starší, pouze jeden dotek, špatná citlivost a rozlišení
	- 2 kovové vrstvy separované vzduchem, spojení vrstev při stlačení -- obvod
- kapacitní
	- vodivá vrstva na povrchu, prst přeruší proud, multitouch, gesta

### Grafický tablet
- podobný myši
- tablet a pero
- malování, retuše, manipulace obrázků
- manipulace jak s tužkou, citlivost na tlak, absolutní polohování
- parametry -- DPI, odezva, kvalita, citlivost, příjemnost psaní

### Skener
- převod 2D nebo 3D snímku do počítače -- 2D a 3D skenery
- parametry -- DPI, rozlišení, barevná kvalita, rychlost

#### 2D skenery
- převod obrázku do počítače, skenování dokumentů
- neviditelné záření nebo LED technologie
- parametr DPI -- 600--10~000 DPI

#### 3D skenery
- převod objektu do 3D modelu
- snímání odraženého světla
- optické, laserové, kontaktní sonda
- archeologie, lékařství, vývoj technologií, 3D tisk

### Mikrofon
- záznam zvuku
- převod změny tlaku vzduchu na elektrický signál
- dynamické
	- membrána s elektromagnetem $\rightarrow$ elektrický signál
	- potřeba zesilovač
- kondenzační
	- uvnitř kondenzátor, změna vzdálenosti mezi pláty

#### Parametry
- směrové charakteristiky -- všesměrová, kardioidní, superkardioidní, hyperkardioidní, osmičková/bidirekcionální, úzce směrová
- frekvenční rozsah
- napájení -- tonaderspeisung, fantomové napájení, 5V přes konektor
- citlivost; impedance
- poměr signál a šumu

### Fotoaparát / Kamery
- záznam fotografií / videí / vstup videa
- světlocitlivý detektor, objektiv, uzávěrka
- záznam v pixelech
- snímače
	- CCD
		- kvalitnější, dražší
	- CMOS
		- menší, levnější, horší citlivost

#### Parametry
- rozlišení
- velikost senzoru
- poměr stran senzoru
- typ kamery -- DSLR, Mirrorless

## Výstupní zařízení
- výstup informace z počítače
- předání informace uživateli

### Monitor
- základní výstup obrazu, textu a grafiky
- připojen na grafickou kartu
- připojení
	- analog -- analog, VGA
	- digitální -- DVI, HDMI, DisplayPort

#### Technologie
- CRT -- stará, katody emitující elektrony, a cívky -- \uv{střílení obrazu}
- LCD
	- tekuté krystaly, rozsvícení/zhasnutí pixelu, barva zajištěna filtry
	- backlight, blokace světla pixely $\rightarrow$ nedokonalá černá
	- TN -- levný, rychlý update, možnost~$"144 Hz"$, malý zorný úhel, nepřesné barvy
	- VA -- vertical alignment, lepší tmavé barvy než LCD
	- IPS -- rozšířené barvy, dnes nejrozšířenější, nejlepší z LCD technologie, dobrý zorný úhel
- Plazmová obrazovka -- elektrický výboj v plynu
- OLED, QuantumDot OLED
	- dokonalá černá -- pixel vytváření vlastní světlo

#### Parametry
- velikost ($"20 ''"--"40 ''"$)
- připojení
	- analog -- analog, VGA
	- digitální -- DVI, HDMI, DisplayPort
- poměr stran -- $16:9, 16:10, 4:3, 21:9$
- rozlišení -- Full HD ($1~920\times 1~080$), QHD ($2~560\times 1~440$), 4K
- frekvence -- $"50 Hz" -- "320 Hz"$

### Tiskárna
- vynesení obrazu na papír
- plotr
	- velkoformátová tiskárna
	- pero / inkoustová hlava, i řezací hlava
	- převážně vektorová grafika -- definice cest pro hlavu
- 3D tiskárny
	- tisk 3D modelů
	- možnost mnoha filamentů

#### Typy tisku
- jehličková
	- otisknutí jehliček přes barvicí pásku na papír
	- klady -- spolehlivé, malé náklady, použití traktorového papíru
	- zápory -- pomalé při tisku grafiky, grafika s omezenou paletou barev, malá kvalita tisku, hluk,
- inkoustová
	- vymršťování kapek ($\pm "35 pl"="35e-12 l"$) vysokou rychlostí na papír
	- systém CMYK
	- typy
		- termální -- zahřátí inkoustu, vznik bubliny, vymrštění inkoustu
		- piezoelektrický -- piezoelektrické krystaly (mění objem vlivem el.~napětí) -- stažení komor, výstřik inkoustu
		- voskové -- princip termální tiskárny, místo inkoustu vosk, kvalitnější a pestřejší tisk,
	- klady -- klidnější provoz, kvalitnější tisk, barevný tisk, relativně nízká pořizovací cena
	- zápory -- drahý inkoust, ucpávání trysek, pomalý proti laseru/LED, rozpustný ve vodě, omezena životnost inkoustu
- laserová
	- toner -- jemný prášek 
	- vykreslení obrázku laserem na světlocitlivý válec, nanesení toneru -- uchycení na osvětlených místech, obtisk na papír, tepelná fixace
	- vybití náboje válce na místech ozářené laserem -- přilnutí toneru pouze na tyto místa; na jiných místech odpuzován (stejná polarita, jako válec)
	- možnost nahradit laser LED diodami
	- klady -- vysoká kvalita tisku, rychlý tisk, nízké provozní náklady, nízká hlučnost
	- zápory -- vyšší pořizovací cena, potřeba zahřát, nevhodné pro kvalitní fotografie
	
\begin{figure}[htbp]
	\centering
	\subfloat[Schéma]{\includegraphics[height=0.28\textwidth]{6-tiskarna-laser-schema}}
	\qquad
	\subfloat[Vybíjení válce]{\includegraphics[height=0.28\textwidth]{6-tiskarna-laser-valec}}
	\caption{Funkce laserové tiskárny}
\end{figure}

#### Parametry
- rozlišení -- DPI (dots per inch) -- $"150 dpi"$ -- $"1~200 dpi"$
- připojení -- USB, Ethernet, WiFi
- rychlost tisku
	- ppm (pages per minute) -- tisk stránek textu
	- ipm (images per minute) -- tisk komplexních stránek s obrázky a grafikou
	- většinou rychlost okolo~$"15 ppm"$ pro černobílý tisk

### Zvukový výstup
- sluchátka, reproduktory
- výstup ze zvukové karty
- možnost zesilovače, mixážního pultu\dots
- připojení
	- analog -- $"3.5 mm"$ jack, $"6.35 mm"$ jack
	- digitální -- bluetooth
- parametry -- hlasitost, přesnost, frekvenční rozsah, impedance, napětí\dots
