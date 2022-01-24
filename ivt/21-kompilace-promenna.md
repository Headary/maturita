% Kompilace, linkování a spuštění programu, překladač, proměnné, definice
% proměnné, způsob uchování informace v programu

\setcounter{section}{20}
# Kompilace, linkování, proměnné
## Překlad zdrojového kódu na stroj
- není možné zdrojový kód přímo spustit $\rightarrow$ potřeba převést na strojový kód
- kompilace a linkování

\begin{table}[htbp]
\centering
\def\arraystretch{1.5}
\begin{tabularx}{0.95\textwidth}{>{\centering\arraybackslash}m{0.35\textwidth}>{\centering\arraybackslash}m{0.15\textwidth}C}
\toprule
Zdrojový kód $\rightarrow$ cílový kód & Překladový nástroj & Poznámka\\\\
\midrule
jednotka1.c $\rightarrow$ jednotka1.asm, jednotka2.c $\rightarrow$ jednotka2.asm, \dots & kompilátor jazyka~C & překlad do assembly či dnes přímo do objektového kódu\\\\
jednotka1.asm $\rightarrow$ jednotka1.obj, jednotka2.asm $\rightarrow$ jednotka2.obj, \dots & assembler & vytvoření objektového kódu\\\\
jednotka1.obj + jednotka2.obj + \dots{} + knihovna1.lib + knihovna2.lib + \dots{} $\rightarrow$ output & linker & spojení objektových kódů a kódu z knihoven do spustitelného kódu \\\\
\bottomrule
\end{tabularx}
\caption{Průběh kompilace}
\end{table}

### Kompilace
- vytváření objektových souborů z zdrojových souborů
- prováděno překladačem (kompilátor)
	- gcc, clang, intel c++ compiler, mono, Gc, javac OpenJDK\dots
- několik kroků, např
	- line reconstruction
	- preprocessing
	- lexikální analýza
	- syntaktická analýza / parsování
	- sématická analýza
	- další -- optimalizace, analýza, vytváření kódu\dots
- typy
	- source-to-source -- překlad high-level jazyka do high-level jazyka
	- bytecode -- kompilace do assembly teoretického stroje
	- just-in-time compilers -- kompilace během spuštění; Python, JavaScript, Java, .NET\dots
	- hardware compilers
	- assembler -- převod assembly do strojového kódu
	- \dots
- spuštění
	- z IDE
	- ruční spuštění příkazů -- cmd, bash
	- automatické systémy -- make, cmake

### Linkování
- seskupení objektových souborů a vytvoření jednoho spustitelného souboru, knihovny nebo objektu
- prováděno linkerem
- hledání dependencies, importování libraries, nastavení entry pointu\dots
- statické a dynamické linkování
	- statické -- všechen potřebný kód v rámci executable, větší velikost souboru
	- dynamické -- některé symboly nalezeny až při spuštění programu v operačním systému, menší velikost, potřeba nainstalovat externí knihovny

## Proměnné
- způsob uložení dat v programu
- na hodnotu ukazuje symbolické jméno
- specifikace typu dat -- int, string, float, char, bool, double\dots
- konstanty -- keyword \inlistc{const} -- nelze měnit v průběhu programu
- \inlistc{signed}, \inlistc{unsigned} -- specifikace čísel s/bez znamének, keyword před data typem
- další data typy, než ty zmíněny v~tabulce~\ref{21datatypes}, definovány ve standardních C knihovnách

\begin{table}[htbp]
\centering
\def\arraystretch{1.25}
\begin{tabularx}{0.95\textwidth}{>{\centering\arraybackslash}m{0.2\textwidth}C>{\centering\arraybackslash}m{0.1\textwidth}>{\centering\arraybackslash}m{0.15\textwidth}}
\toprule
Typ & Vysvětlení & Min. velikost (bity) & Formátování\\\\
\midrule
\inlistc{char} & nejmenší adresovatelná jednotka uchovávající znak; vnitřně číslo & 8 & \inlistc{\%c}\\\\
\inlistc{signed char} & stejné jako char, garance znaménka, hodnoty $\cintc{-127}{+127}$ & 8 & \inlistc{\%c}\\\\
\inlistc{unsigned char} & stejné jako char, garance bez znaménka, hodnoty $\cintc{0}{255}$ & 8 & \inlistc{\%c}\\\\
\inlistc{short}, \inlistc{short int} & krátký integer typ & 16 & \inlistc{\%hi}, \inlistc{\%hd}\\\\
\inlistc{int}, \inlistc{signed}, \inlistc{signed int} & uchování čísla, rozšíření počtu bitů v operačních systémem se širším busem & 16 & \inlistc{\%i}, \inlistc{\%d}\\\\
\inlistc{unsigned}, \inlistc{unsigned int} & uchování čísla bez znaménka & 16 & \inlistc{\%u}\\\\
\inlistc{long}, \inlistc{long int} & delší \inlistc{int}, v moderních systémech shodné s \inlistc{int} & 32 & \inlistc{\%li} (signed), \inlistc{\%lu} (unsigned)\\\\
\inlistc{long long}, \inlistc{long long int} & delší \inlistc{long} & 64 & \inlistc{\%lli}, \inlistc{\%llu}\\\\
\inlistc{float} & reálné číslo s desetinnými čísly, na většině systémech 32~bitů & & \inlistc{\%f}\\\\
\inlistc{double} & větší reálné číslo s desetinnými čísly, na většině systémech 64~bitů & & \inlistc{\%lf}\\\\
\inlistc{long double} & velké reálné číslo s desetinnými čísly; 80, 96 nebo 128~bitů & & \inlistc{\%Lf}\\\\
\bottomrule
\end{tabularx}
\caption{Data typy v~C~standartu}
\label{21datatypes}
\end{table}

### Specifikování proměnné v~C
- formát \uv{\inlistc{<datytype> <variable name>;}}
	- \inlistc{int i;}
	- \inlistc{char c, ch;}
	- \inlistc{float f=0.5f, ch;}

### Uchování dat v programu
- při specifikování proměnné se alokuje místo v paměti
- čtení/zápis dat následně z paměti na místě adresy
- pointer -- adresa proměnné
