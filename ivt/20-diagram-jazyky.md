\setcounter{section}{19}
# Vývojový diagram, programovací jazyky
## Vývojový diagram
- grafické vyjádření procesu (algoritmus, postup práce)
- reprezentace kroků pomocí tvarů a šipek
- analýza procesu, návrh, dokumentace
- programy -- MS Visio, Lucid chart, Inkscape
- preferovaný směr shora dolů, zleva doprava

### Start a konec programu
- vyznačeno oválem
- šipky ukazují směr pokračování procesu

### Dílčí krok
- obdélník
- popis dílčí akce, kroku

\fullfig{20-diagram1}[Diagram jednoho kroku]

### Podprogram
- obdélník se svislými čárami
- více kroků označených jedním symbolem
- vyjádření funkce

### Vstup/výstup
- rovnoběžník
- komunikace s uživatelem

\fullfig{20-diagram2}[Diagram se vstupem a výstupem]

### Cykly
- šestiúhelník
- probíhají pouze za platné podmínky, jinak se pokračují dál

\fullfig[width=0.4\textwidth]{20-diagram3}[Diagram cyklu]

### Podmínka
- kosočtverec
- pokud podmínka, splní se kroky

\fullfig[width=0.4\textwidth]{20-diagram4}[Diagram podmínky]

### Spojovací značka
- kruh
- spojení více toků procesu do jednoho

\begin{figure}[htbp]
\centering
\subfloat[Začátek/konec]{\includegraphics[height=0.05\textheight]{20-terminal}}\qquad
\subfloat[Proces/krok]{\includegraphics[height=0.05\textheight]{20-proces}}\qquad
\subfloat[Rozhodnutí (if)]{\includegraphics[height=0.05\textheight]{20-if}}\qquad
\subfloat[Vstup/výstup]{\includegraphics[height=0.05\textheight]{20-io}}\qquad
\subfloat[Cyklus]{\includegraphics[height=0.05\textheight]{20-loop}}\\\\
\subfloat[Komentář]{\includegraphics[height=0.05\textheight]{20-comment}}\qquad
\subfloat[Podproces/funkce]{\includegraphics[height=0.05\textheight]{20-function}}\qquad
\subfloat[Spojení]{\includegraphics[height=0.05\textheight]{20-connector}}\qquad
\subfloat[Databáze]{\includegraphics[height=0.05\textheight]{20-database}}\qquad
\subfloat[Soubour]{\includegraphics[height=0.05\textheight]{20-file}}\qquad
\subfloat[Skupina souborů]{\includegraphics[height=0.05\textheight]{20-multifile}}
\end{figure}

## Programovací jazyky
- způsob zapsání kódu a jeho následné použití v počítači
- rozdělení na vyšší a nižší

### Nižší programovací jazyky
- strojový kód či mu velice blízko
- jednoduché na převod do binárního záznamu
- strojový kód, assembly, občas za něj považované i~C
- základ vyšších jazyků
- přímá kontrola nad registry, pamětí, pointery\dots

### Vyšší programovací jazyky
- použití přirozeného jazyku
- velké použití abstrakcí
- překládány do nižších jazyků
- velký počet předdefinovaných funkcí
- menší kontrola nad samotným hardwarem

### Procedurální vs neprocedurální
- procedurální/imperativní -- popis výpočtu pomocí příkazů, určení přesného postupu
- neprocedurální -- specifikace cíle namísto postupu získání cíle

### Strukturované vs objektově orientované
- strukturované -- jeden vstup a výstup, vytvoření algoritmu z řídíc struktur a funkcí
	- C, Pascal
- objektově orientované -- využití objektů, jejich funkcí, dědičnosti\dots
	- Java, C$\\#$
- kombinované -- strukturované programování s podporou objektů
	- Python, JavaScript, C$++$

### Funkcionální vs logický
- funkcionální
	- vyhodnocování matematických funkcí
	- využití lambda funkcí
- logický -- použití matematické logiky k programování

### Kompilované vs interpretované
- kompilované -- jazyky přeloženy do binárního souboru, který je následně spuštěn
- interpretované
	- interpreter interpretuje jazyk v reálném čase
	- flexibilnější, ale pomalejší
	- chyby jsou zachyceny až při spuštění kódu
