% Formátovaný vstup/výstup do/z programu, podmínka, kombinace podmínek,
% rozhodování v algoritmu

\setcounter{section}{21}
# Vstup/výstup, podmínky
## Vstup/výstup do/z programu
- tzv. IO (input output) operace
- způsob komunikace programu se systémem, uživatelem a dalšími programy
- funkce poskytnuty knihovnou \inlistc{stdio.h}

### Uživatelský vstup
- čtení vstupu z \inlistc{stdin}^[standard stream pro vstup v terminálu]
- funkce \inlistc{getchar(<variable>);}, \inlistc{gets(<variable>);}, \inlistc{scanf(<format>, <pointer>);}
	- \inlistc{getchar} -- načtení jednoho znaku
	- \inlistc{gets}
		- načtení stringu s mezerami, nelze číst čísla
		- konec inputu novým řádkem nebo EOF
		- unsafe, chybí ochrana před buffer overflow
	- \inlistc{scanf} -- načtení vstupu v zadaném formátu, konec inputu mezerou, \texttt{\textbackslash n} nebo EOF

\lstinputlisting[style=c, caption=Načtení vstupu od uživatele]{../source_codes/22-inputs.c}

### Výstup programu
- výpis textu do \inlistc{stdout} nebo \inlistc{stderr}
	- \inlistc{stdout} -- standard stream pro output
	- \inlistc{stderr} -- standard stream pro errory
- funkce \inlistc{putchar}, \inlistc{puts}, \inlistc{printf}, \inlistc{fwrite}
	- \inlistc{putchar(<variable>);} -- vypsání jednoho znaku
	- \inlistc{puts(<variable>);}
		- funkce z knihovnyinlistc
		- prostý výpis proměnné do \inlistc{stdout} bez formátování
		- na konci automaticky \texttt{\textbackslash n}
	- \inlistc{printf(<string and format>, <variable>);}
		- interpretace prvního stringu jako formátu
		- následné proměnné specifikují hodnotu dat ve formátu
		- nekončí automaticky novým řádkem
	- \inlistc{fwrite(const void *ptr, size_t size, size_t nmemb, FILE *stream);}
		- \inlistc{*ptr} -- buffer na vypsání, \inlistc{size, nmemb} -- délka a počet dat
		- zápis binárních dat do souboru nebo streamu

### Formát printf/scanf
- využití formátovací značek pro definici formátu outputu -- \inlistc{\%d, \%i, \%u, \%c}\dots
- zápis do stringu
- formátovací značky různé pro každý data typ (viz otázka~21)

\lstinputlisting[style=c, caption=Použíti printf a scanf]{../source_codes/22-sums.c}

## Podmínky
- způsob spouštění kódu za pomocí podmínek
- příkaz \inlistc{if (rule)\\{...\\} else \\{...\\}}
- pokud je podmínka splněna, je spuštěn kód v bloku; pokud není splněna, blok je přeskočen
- \inlistc{else} blok spuštěn pouze za nedodržení podmínky
- podmínka -- boolenový výraz

### Booleovské výrazy
- v~C použit \inlistc{int}, případně \inlistc{bool} ze \inlistc{stdbool.h}
- \inlistc{true} -- nenulová hodnota (nejčastěji 1), \inlistc{false} -- 0

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

\lstinputlisting[style=c, caption=Příklad programu s podmínkou a if]{../source_codes/22-odd-even.c}

\begin{table}[htbp]
\centering
\begin{tabular}{>{\ttfamily}cc}
\toprule
\textnormal{Operátor} & Směr vyhodnocení\\\\
\midrule
! ++ -- - + & $\longleftarrow$\\\\
\* / \% & $\longrightarrow$\\\\
+ - & $\longrightarrow$\\\\
< <= >= > & $\longrightarrow$\\\\
== != & $\longrightarrow$\\\\
\&\& & $\longrightarrow$\\\\
|| & $\longrightarrow$\\\\
? : & $\longleftarrow$\\\\
= += -= *= \dots & $\longrightarrow$\\\\
, & $\longrightarrow$\\\\
\bottomrule
\end{tabular}
\caption{Priorita vyhodnocování logických výrazů}
\label{22operations}
\end{table}

### Kombinace podmínek
- kombinování podmínek za pomocí logických operací \inlistc{\&\&} a \inlistc{||}
- první vyhodnocení podmínek, následně vyhodnocení kombinací (viz~tab.~\ref{22operations})
- vyhodnocení zleva doprava
- logické výrazy možno skládat, závorky pro přednost\dots
- pokud v AND je první argument 0, další hodnoty již nejsou vyhodnoceny

\lstinputlisting[style=c, caption=Příklady boolenových operací]{../source_codes/22-comparision.c}
