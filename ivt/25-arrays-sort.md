% Práce s pole, řadící algoritmy, vícerozměrná pole

\setcounter{section}{24}
# Práce s polem, řadící algoritmy
## Práce s polem
### Inicializace pole
- v~C vždy nutno specifikovat délku
	- specifikováním počtu -- \inlistc{int nums[5];}
	- specifikace listu dat -- \inlistc{int nums[] = \\{1,2,3,4,5\\};}
	- specifikace obou -- \inlistc{int nums[5] = \\{1,2,3,4,5\\};}

### Získání hodnoty z pole
- specifikace jména pole a indexu
	- indexování pole začíná na~0
- \inlistc{int value = nums[3];}
- \inlistc{int i = 0; int value = nums[i];}

### Zápis do pole
- hodnota buňky rovna zapisované hodnotě
- \inlistc{nums[4] = 6;}
- \inlistc{int value = 7; int index = 2; nums[index]=value}

### Procházení pole
- využití \inlistc{for} smyčky

\lstinputlisting[style=c, caption=Příklad procházení pole]{../source_codes/25-array-traversing.c}

## Vícerozměrná pole
- pole o více rozměrech, pole polí
- každý prvek pole je další pole
- \inlistc{int matrix[height][width];}
- stejné čtení a zápis dat jako při jedné dimenzi

\lstinputlisting[style=c, caption=Inicializace vícerozměrného pole]{../source_codes/25-matrix-init.c}

\begin{table}[htbp]
\renewcommand{\arraystretch}{1.25}
\centering
\begin{tabular}{c|*{4}{c}}
 & \multicolumn{4}{c}{Druhý index~$j$}\\\\
\midrule
\multirow{4}{\*}{\rotatebox[origin=c]{90}{První index~$i$}} & \inlistc{matrix[0][0]} & \inlistc{matrix[0][1]} & \inlistc{matrix[0][2]} & \inlistc{matrix[0][3]}\\\\
& \inlistc{matrix[1][0]} & \inlistc{matrix[1][1]} & \inlistc{matrix[1][2]} & \inlistc{matrix[1][3]}\\\\
& \inlistc{matrix[2][0]} & \inlistc{matrix[2][1]} & \inlistc{matrix[2][2]} & \inlistc{matrix[2][3]}\\\\
& \inlistc{matrix[3][0]} & \inlistc{matrix[3][1]} & \inlistc{matrix[3][2]} & \inlistc{matrix[3][3]}\\\\
\end{tabular}
\caption{Zobrazení 2D~pole}
\end{table}

## Řadící (sorting) algoritmy
- algoritmy zajištující uspořádání dané sady (pole, seznam\dots)
- nejčastější numerické a abecední řazení
- v dnešní době důležitá efektivnost řadících algoritmů na velkých datech
- podmínky výstupu
	- výstup je monotónní -- každý prvek není větší/menší než den předešlý (dle zadaných pravidel)
	- výstup je permutace -- jsou zachovány všechny původní prvky
- pro optimální rychlost data uložena ve strukturách s random přístupem, ne sekvenčním

### Klasifikace algoritmů
- výpočetní složitost
	- nejlepší, nejhorší, průměrné
	- typicky dobrá složitost $O(n\log n)$, parallel sort $O(\log^2 n)$, špatný~$O(n^2)$
	- optimální paralelní složitost~$O(\log n)$
- využití paměti
	- některé algoritmy řadí v místě -- $O(1)$
- rekurzivita -- rekurzivní vs iterativní algoritmy, některé obojí (merge sort)
- stabilita -- při souhlasných hodnotách je zachováno vzájemné pořadí udané vstupem
- metoda -- vkládání, výměna, selekce, spojování\dots
	- výměnné -- bubble sort, quick sort
	- selekce -- cycle sort, heap sort
- sériový vs paralelní
- adaptivní -- zda-li předtřídění ovlivní rychlost algoritmu
- online -- sort schopný třídit stálý tok dat, např.~insertion sort

\begin{table}[htbp]
\centering
\begin{tabular}{llcccccc}
\toprule
Jméno & Český název & Nejlepší & Průměrné & Nejhorší & Paměť & Stabilní & Metoda\\\\
\midrule
Quicksort 		& rychlé řazení & $n\log n$ & $n\log n$ & $n^2$     & $\log n$ & Ne & záměna\\\\
Merge sort 		& řazení slučováním & $n\log n$ & $n\log n$ & $n\log n$ & $n$ & Ano & slučování\\\\
Heapsort 		& řazení haldou & $n\log n$ & $n\log n$ & $n\log n$ & $1$ & Ne & výběr\\\\
Insertion sort 	& řazení vkládáním & $n$   & $n^2$ & $n^2$ & $1$ & Ano & vkládání\\\\
Selection sort 	& řazení výběrem & $n^2$ & $n^2$ & $n^2$ & $1$ & Ne  & výběr\\\\
Bubble sort 	& bublinkové řazení & $n$   & $n^2$ & $n^2$ & $1$ & Ano & záměna\\\\
\bottomrule
\end{tabular}
\caption{Porovnání řadících algoritmů}
\end{table}

\lstinputlisting[style=c, caption=Implementace bubble sortu v C]{../source_codes/25-sort-bubble.c}
