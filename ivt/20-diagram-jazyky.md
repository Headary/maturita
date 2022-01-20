\setcounter{section}{19}
# Vývojový diagram, programovací jazyky
## Vývojový diagram
- grafické vyjádření procesu (algoritmus, postup práce)
- reprezentace kroků pomocí tvarů a šipek
- analýza procesu, návrh, dokumentace
- programy -- MS Visio, Lucid chart, Inkscape

### Start a konec programu
- vyznačeno oválem
- šipky ukazují směr pokračování procesu

### Dílčí krok
- obdélník
- popis dílčí akce, kroku

### Podprogram
- obdélník se svislými čárami
- více kroků označených jedním symbolem
- vyjádření funkce

### Vstup/výstup
- rovnoběžník
- komunikace s uživatelem

### Cykly
- šestiúhelník
- probíhají pouze za platné podmínky, jinak se pokračují dál

### Podmínka
- kosočtverec
- pokud podmínka, splní se kroky

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

% TODO diagram
