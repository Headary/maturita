% Formátovaný vstup/výstup do/z programu, podmínka, kombinace podmínek,
% rozhodování v algoritmu

\setcounter{section}{21}
# Vstup/výstup, podmínky
## Vstup/výstup do/z programu
- tzv. IO (input output) operace
- způsob komunikace programu se systémem, uživatelem a dalšími programy
- funkce poskytnuty knihovnou \texttt{stdio.h}

### Uživatelský vstup
- čtení vstupu z \texttt{stdin}^[standard stream pro vstup v terminálu]
- funkce \texttt{getchar(<variable>);}, \texttt{gets(<variable>);}, \texttt{scanf(<format>, <pointer>);}
	- \texttt{getchar} -- načtení jednoho znaku
	- \texttt{gets}
		- načtení stringu s mezerami, nelze číst čísla
		- konec inputu novým řádkem nebo EOF
		- unsafe, chybí ochrana před buffer overflow
	- \texttt{scanf} -- načtení vstupu v zadaném formátu, konec inputu mezerou, \texttt{\textbackslash n} nebo EOF

\lstinputlisting[language=C, caption=Načtení vstupu od uživatele]{../source_codes/22-inputs.c}

### Výstup programu
- výpis textu do \texttt{stdout} nebo \texttt{stderr}
	- \texttt{stdout} -- standard stream pro output
	- \texttt{stderr} -- standard stream pro errory
- funkce \texttt{putchar}, \texttt{puts}, \texttt{printf}, \texttt{fwrite}
	- \texttt{putchar(<variable>);} -- vypsání jednoho znaku
	- \texttt{puts(<variable>);}
		- funkce z knihovny
		- prostý výpis proměnné do \texttt{stdout} bez formátování
		- na konci automaticky \texttt{\textbackslash n}
	- \texttt{printf(<string and format>, <variable>);}
		- interpretace prvního stringu jako formátu
		- následné proměnné specifikují hodnotu dat ve formátu
		- nekončí automaticky novým řádkem
	- \texttt{fwrite(const void *ptr, size\textunderscore t size, size\textunderscore t nmemb, FILE *stream);}
		- \texttt{*ptr} -- buffer na vypsání, \texttt{size, nmemb} -- délka a počet da
		- zápis binárních dat do souboru nebo streamu

### Formát printf/scanf
- využití formátovací značek pro definici formátu outputu -- \texttt{\%d, \%i, \%u, \%c}\dots
- zápis do stringu
- formátovací značky různé pro každý data typ (viz otázka~21)

\lstinputlisting[language=C, caption=Použíti printf a scanf]{../source_codes/22-sums.c}

## Podmínky
- způsob spouštění kódu za pomocí podmínek
- příkaz \texttt{if(rule)\\\{\dots\\\} else \\\{\dots\\\}}
- pokud je podmínka splněna, je spuštěn kód v bloku; pokud není splněna, blok je přeskočen
- \texttt{else} blok spuštěn pouze za nedodržení podmínky
- podmínka -- boolenový výraz

### Booleovské výrazy
- v~C použit \texttt{int}, případně \texttt{bool} ze \texttt{stdbool.h}
- \texttt{True} -- nenulová hodnota (nejčastěji 1), \texttt{False} -- 0

\begin{table}[htbp]
\centering
\begin{tabular}{>{\ttfamily}cc}
\toprule
\textnormal{Znak} & Význam\\\\
\midrule
== & rovnost\\\\
\!= & nerovnost\\\\
\< & menší než\\\\
\<= & menší rovno\\\\
\> & větší než\\\\
\>= & větší rovno\\\\
\&\& & AND\\\\
|| & OR\\\\
! & negace\\\\
\bottomrule
\end{tabular}
\caption{Logické operátory v~C}
\end{table}

\begin{minipage}{\linewidth}
\lstinputlisting[language=C, caption=Příklad programu s podmínkou a if]{../source_codes/22-odd-even.c}
\end{minipage}

\begin{table}[htbp]
\centering
\begin{tabular}{>{\ttfamily}cc}
\toprule
\textnormal{Operátor} & Směr vyhodnocení\\\\
\midrule
! ++ -- - + & $\leftarrow$\\\\
\* / \% & $\rightarrow$\\\\
+ - & $\rightarrow$\\\\
< <= >= > & $\rightarrow$\\\\
== != & $\rightarrow$\\\\
\&\& & $\rightarrow$\\\\
|| & $\rightarrow$\\\\
? : & $\leftarrow$\\\\
= += -= *= \dots & $\rightarrow$\\\\
, & $\rightarrow$\\\\
\bottomrule
\end{tabular}
\caption{Priorita vyhodnocování logických výrazů}
\label{22operations}
\end{table}

### Kombinace podmínek
- kombinování podmínek za pomocí logických operací \texttt{\&\&} a \texttt{||}
- první vyhodnocení podmínek, následně vyhodnocení kombinací (viz~tab.~\ref{22operations})
- vyhodnocení zleva doprava
- logické výrazy možno skládat, závorky pro přednost\dots
- pokud v AND je první argument 0, další hodnoty již nejsou vyhodnoceny

\lstinputlisting[language=C, caption=Příklady boolenových operací]{../source_codes/22-comparision.c}
