% Textové editory, druhy, formáty dokumentů, vzhled dokumentu, formátování
% textu, písmo, odstavec, styly, sloupce, hromadná korespondence, záhlaví a
% zápatí, číslování stránek, oddíly, automatické číslování obrázků a tabulek,
% generování obsahu, rejstříku, seznamy obr.~a~tab.

\setcounter{section}{8}
# Textové editory
- programy pro vytváření a úpravu textu

## Druhy
- Základní
	- čistý text
	- notepad, vi, nano
- Programátorské
	- čistý text, rich text, code highlighting
	- notepad++, vim (s konfiguracemi), VS Code
- Publikační
	- formátování textu, vkládání obrázků a tabulek, hromadná korespondence\dots
	- Microsoft Word, LibreOffice Writer
- Profesionální
	- k tisku časopisů a dalších
	- Adobe InDesign
- Online
	- možnost pracovat s nimi na internetu, ukládání na cloud
	- Google docs

## Formáty dokumentů
- .txt -- plain text
- .htm, .html -- webové stránky
- .doc, .docs -- dokumenty Word
- .tex -- \LaTeX dokument
- .md -- Markdown syntax

## Vzhled dokumentu
- určen několika elementy
- určuje charakter práce

### Obsah dokumentu
- různé prvky nutné
- závislé na typu dokumentu
- úvodní strana
	- název práce, autor, druh, rok vytvoření, název instituce
- anotace
	- stručná obsah v několika větách
	- v jazyce práce i anglicky
- klíčová slova
	- slova charakterizující práci, zhruba 4--6
- obsah práce
- seznamy
	- tabulek
	- obrázků
	- grafů
	- zkratek a značek\dots
- vlastní text
- přílohy
	- obrázky, tabulky, grafy
	- další externí zdroje

### Formát textu
- různé změny vzhledu
- **bold**/*italic*/\underline{underline}
- barva textu, pozadí
- zarovnání textu
	- vlevo/vpravo (na levý a pravý praporek)
	- doprostřed
	- do bloku

### Font (písmo)
- různé druhy písma, různě vhodné
- patkové
	- obsahuje \uv{patky} a různé dekorace
	- vhodnější na tisk
	- Times New Roman, Computer Modern
- bezpatkové
	- neobsahuje ozdoby, čisté písmo
	- vhodnější pro konzumaci z obrazovky
	- Arial, Helvetica, Roboto\dots
- ozdobné
	- písmo s velice ozdobnými elementy
	- napodobování rukopisu, kaligrafie
	- papyrus, hello
- symbolické
	- font tvořen symboly
	- wingdings

### Odstavce
- řazení textu do odstavců
- mezi odstavci není mezera
- první slovo odsazeno
- první odstavec po nadpisu neodsazen

### Seznamy
- odrážkový seznam
	- jako odrážka nějaký znak
	- úrovně od sebe odlišeny odsazením a odrážkou
- číslovaný
	- automatické číslování
	- různé styly počítaní -- numerické, abecední, římské číslice\dots

### Nadpisy
- dělení textu
- několik úrovní -- nadpis, podnadpis, podpodnadpis\dots
- udržování stejného stylu pro všechny nadpisy

### Sloupce
- dokument nebo část dokumentu možno rozložit do sloupců
- zlepšení čitelnosti v některých případech
- věděcké publikace

## Hromadná korespondence
- způsob vygenerování souborů podle záznamů konkrétních osob
- využití importované tabulky
- automatické vyplnění dat

## Záhlaví, zápatí (header a footer)
- přenášení informace mezi stránkami
- většinou číslo strany, autor, název práce, název instituce, rok vydání, název momentální kapitoly\dots
- word -- 2x kliknutí na záhlaví/zápatí; vložení různých elementů
- \LaTeX -- fancyhdr package

### Číslování stránek
- samostatné; číslo stránky / celkový počet stránek
- důležité pro orientaci
- většinou vlevo dole nebo dole na vnější straně dokumentu

## Oddíly
- způsob Wordu na to, jak oddělit sekce dokumentu od sebe
- lepší pro práci s textem, kdy se můžeme oddílu věnovat individuálně
- Karta rozložení -- vzhled stránky -- konce

## Automatické číslování
- Karta Reference $\rightarrow$ Titulky $\rightarrow$ Vložit titulek $\rightarrow$ Automatický titulek $\rightarrow$
	- bitmap image (obrázek)
	- tabulka aplikace MS Word (tabulka)

## Generování seznamů
### Obsah
- k lepší přehlednosti dokumentu
- automatická generace z označených nadpisů
- Reference $\rightarrow$ Obsah

### Rejstřík
- výtah důležitých slov, kde je lze nalézt
- Reference $\rightarrow$ Rejstřík $\rightarrow$ vložit rejstřík
- slova musí být označena (Reference $\rightarrow$ Rejstřík $\rightarrow$ označit položku)

### Seznam obrázků a tabulek
- obrázky a tabulky musí mít tituly
- Reference $\rightarrow$ Titulky $\rightarrow$ Vložit seznam
