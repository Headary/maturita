% Kompilace, linkování a spuštění programu, překladač, proměnné, definice
% proměnné, způsob uchování informace v programu

# Kompilace, linkování, proměnné
## Překlad zdrojového kódu na stroj
- není možné zdrojový kód přímo spustit $\rightarrow$ potřeba převést na strojový kód
- kompilace a linkování

## Kompilace
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

## Linkování
- seskupení objektových souborů a vytvoření jednoho spustitelného souboru, knihovny nebo objektu
- prováděno linkerem
