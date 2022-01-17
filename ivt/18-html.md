% Tvorba WWW stránek, základy jazyka HTML, HTML editory a jejich náhražky, HTML
% dokumenty, rámy, iframe-vkládání prvků, tabulky, obrázky, formátování textu,
% prohlížeče HTML dokumentů

\newcommand\htmlsingle[1]{\texttt{<#1>}}
\newcommand\htmlpair[1]{\texttt{<#1>}\dots\texttt{</#1>}}

\setcounter{section}{17}
# WWW stránky / HTML
- stránky na WWW obsahující hyperlinky na sebe navzájem
- vytvářeny jednotlivci, firmami, vzdělávacími institucemi, státem\dots

## HTML
- HyperText markup language
- základní jazyk pro vytváření webových stránek
- používáno společně s CSS a JS
- interpretace a rozložení textu, obrázků a dalších resources
- rendering webovým prohlížečem
- založeno na SGML (Standard General Markup Language), podobné XML
	- využití párových a nepárových tagů
- dnes HTML5

### Historie
- 1989 -- Tim Bernes-Lee navrhl v CERNu internet-based hypertext system; 1990 -- první webový prohlížeč a webový server
	- s Robertem Cailliau žádali, ale nedostali, funding
- 1991 -- první veřejná specifikace HTML

## Editory
- programy pro vytvoření webových stránek
- 2 typy
	- WYSIWYG
	- editory zdrojového kódu

### WYSIWYG
- What You See Is What You Get
- editory, kdy uživatel přímo vidí a edituje konečný výsledek
- využití GUI
- obchází nutnost editovat kód
- \url{webnode.cz}, \url{wix.com}, \url{estranky.cz}
- Content Management Systems (CMS)
	- systémy pro management obsahu stránek
	- WordPress, Joomla, Drupal

### Editory zdrojového kódu
- obyčejné textové editory, většinou s přídavnými funkcemi
- editace přímo zdrojového kódu (\texttt{.html} soubory)
- pro výsledek nutno otevřít web v prohlížeči
	- otevření HTML dokumentu v prohlížeči
	- vytvoření lokálního serveru
- Notepad++, VS Code, Atom, (Neo)vim, Emacs\dots

\fullfig{18-neovim}[Příklad textového editoru pro zdrojový kód (Neovim)]

## HTML dokument
- vždy nutnost základních tagů
- pokud chybí, prohlížeč si je doplní
- \texttt{<\!DOCTYPE html>} -- specifikace HTML formátu
- \htmlpair{html} -- začátek a konec HTML dokumentu
- \htmlpair{head}
	- hlavička dokumentu
	- specifikace obsahu, který uživatel nevidí; metadata
- \htmlpair{body}
	- tělo dokumentu
	- obsah prezentován uživateli

\lstinputlisting[language=HTML]{../source_codes/18-hello-world.html}

### Tagy v \htmlpair{head}
- \htmlpair{title} -- Titulek stránky zobrazený v liště
- \htmlpair{style} -- CSS styl stránky přímo v HTML
- \htmlsingle{link} -- link k externí resource (CSS, JS\dots)
- \htmlsingle{meta} -- specifikace metadat stránky
	- \texttt{charset} -- HTML encoding
	- \texttt{name} -- jméno specifikovaných metadat
	- \texttt{content} -- specifikace hodnoty v name atributu
	- \texttt{http-equiv} -- HTTP header pro informace/hodnotu v content atributu

\lstinputlisting[language=HTML]{../source_codes/18-head.html}

### Tagy v \htmlpair{body}
#### Sekce
- \htmlpair{h1}, \htmlpair{h2}, \htmlpair{h3},\dots -- úrovně nadpisů
- \htmlpair{p} -- oddělení odstavce
- \htmlpair{div} -- neviditelné rozdělení obsahu
- \htmlsingle{br} -- break line

#### Formátování
- \htmlpair{b} -- tučný text
- \htmlpair{i} -- italic text
- \htmlpair{u} -- podtržený text
- \htmlpair{tt} -- strojní styl
- \htmlpair{del} -- smazaný text
- \htmlpair{font} -- specifikace fontu
	- atributy \texttt{size}, \texttt{color}, \texttt{face}\dots

#### Logické formátování
- \htmlpair{strong} -- důležitý text
- \htmlpair{blockquote} -- citace
- \htmlpair{cite} -- citace
- \htmlpair{q} -- text s uvozovkami
- \htmlpair{em} -- kurzíva
- \htmlpair{a} -- odkaz
	- \texttt{src} -- cesta odkazu
	- \texttt{target} -- místo otevření odkazu

\lstinputlisting[language=HTML]{../source_codes/18-body.html}

#### Obrázky
- \htmlsingle{img} -- tag pro vložení obrázku
	- \texttt{src} -- zdroj obrázku
	- \texttt{width}, \texttt{height} -- rozměry
	- \texttt{alt} -- alternativní text
	- \texttt{loading}, \texttt{longdesc}, \dots

#### Tabulky
- \htmlpair{table} -- specifikuje tabulku
- \htmlpair{caption} -- popis tabulky
- \htmlpair{tr} -- řádek tabulky
- \htmlpair{th} -- buňka nadpisu
- \htmlpair{td} -- buňka tabulky
	\texttt{colspan} -- šířka buňky ve sloupcích
	\texttt{align} -- zarovnání

\lstinputlisting[language=HTML]{../source_codes/18-table.html}

#### Seznamy
- \htmlpair{ul} -- block seznamu
- \htmlpair{il} -- item seznamu

#### Iframe
- \htmlpair{iframe} -- zobrazení obsahu jiné stránky
	- \texttt{width}, \texttt{height} -- velikost
	- \texttt{src} -- URL zdroje
	- \texttt{allow} -- povolení funkcí
	- \texttt{loading}, \texttt{name}\dots
- sociální sítě (Youtube, Facebook, Instagram), embedded mapy\dots

## Prohlížeče HTML dokumentů
- prohlížení webových stránek ve webových prohlížečích
- stáhnutí všech potřebných dokumentů a scriptů a vyrenderování stránky
- Chromium based -- Google Chrome, Edge, Brave, Vivaldi; ostatní -- Firefox, Safari
- převaha chromium based prohlížečů
- kvůli cache a renderování dnes vyšší nároky na výpočetní výkon, hlavně při více webových oknech
