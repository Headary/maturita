% Čtení a zápis do/ze souboru, struktura, pole, pole struktur, naplnění, čtení

\setcounter{section}{23}
# Práce se soubory, struktury, pole
## Práce se soubory
- typy souborů
	- textové soubory -- soubory obsahující plain text
	- binární soubory -- obsahují binární data nemožné otevřít v obyčejném editoru
- operace
	- vytvoření souboru
	- otevření existujícího souboru
	- zavření souboru
	- čtení a zápis dat do souboru
- proměnná souboru -- pointer na souboru \inlistc{FILE *fptr}

### Otevírání souboru
- syntaxe \inlistc{fptr = fopen("filepath","mode");}
	- \inlistc{"filepath"} -- cesta k souboru
	- \inlistc{"mode"} -- mód otevření souboru
- otevření datového streamu
- file open modes
	- \texttt{r, w, a} -- čtení, zápis a připsání na konec
	- \texttt{r+, w+, a+} -- čtení a zápis (soubor musí existovat), čtení a zápis (přepsání nebo vytvoření) a čtení a připsání (připsání nebo připsání)
	- \texttt{b} -- binární soubor (\texttt{rb, rb+, wb, wb+, ab, ab+})

### Zavření souboru
- \inlistc{fclose(fptr);}
- zavření souboru / streamu po dokončení operací, připsání EOF
- pointer zahozen

### Čtení ze souboru
- \inlistc{fscanf(fptr, "format", &variable)} -- načtení textového souboru
	- \inlistc{fptr} -- file pointer
	- \inlistc{"format"} -- formát textu
	- \inlistc{&variable} -- adresa proměnné pro zapsání dat
- \inlistc{fread(&variable, dataSize, dataCount, fptr)} -- načtení textového souboru
	- \inlistc{dataSize} -- velikost dat v bytech (často \inlistc{sizeof(datatype)} -- \inlistc{sizeof(int)}\dots)
	- \inlistc{dataCount} -- počet dat o velikosti~\inlistc{dataSize}, použito při načítání pole

### Zápis do souboru
- \inlistc{fprintf(fptr, "format", variable)} -- vypsání textu do souboru
- \inlistc{fwrite(&variable, dataSize, dataCount, fptr)} -- zápis binárních dat
- připsání/zapsání/přepsání dat do souboru

\lstinputlisting[style=c, caption=Načítání a zapisování do souboru]{../source_codes/24-files.c}

## Struktury
- keyword \inlistc{struct}
- proměnné/struktury uchovávající více dat/proměnných v sobě
- zjednodušení a seskupení dat
- příklad -- struktura Kniha
	- název
	- autor
	- žánr
	- rok vydání

\lstinputlisting[style=c, caption=Příklad struktury]{../source_codes/24-struct-book.c}

- různé metody definovaní
	- \inlistc{struct StructName \\{...\\};} 
		- definuje \inlistc{struct name}
		- inicializace proměnné -- \inlistc{struct StructName variableName;}
	- \inlistc{struct StructName \\{...\\} variableName;} 
		- definuje \inlistc{variableName} typu \inlistc{struct StructName}
		- zkrácení předchozí definice do jednoho příkazu, nevhodné pro opakované využití v kódu
	- \inlistc{typedef struct \\{..\\} DatatypeName;} /  \inlistc{typedef struct StructName \\{..\\} DatatypeName;}
		- inicializace proměnné -- \inlistc{datatypeName variableName;}
		- definice \uv{vlastního datatypu}
		- obchází potřebu při inicializaci psát \inlistc{struct}
		- optional \inlistc{structName}
- inicializace proměnné s hodnotami -- \inlistc{struct StructName structVar = {insideVar1, insideVar2};}
- přístup k hodnotám -- \inlistc{structVar.insideVar1 = value;}

\lstinputlisting[style=c, caption=Různé způsoby definování struktur]{../source_codes/24-struct-init.c}

## Pole
- jeden dlouhý list podobných hodnot o stejném data typu
- v paměti hodnoty uloženy hned po sobě
- možno udělat pole polí -- 2D pole
- příklad -- \inlistc{int nums[] = \\{1,2,3,4,5\\};}, \inlistc{char name[] = "David";}, \inlistc{float values[10];}
- velikost pole předem daná -- statické pole (v některý prog.~jazycích i dynamická)
- začátek číslování od \inlistc{0}

\begin{table}[htbp]
\centering
\begin{tabular}{ccccc}
\toprule
name[0] & name[1] & name[2] & name[3] & name[4]\\\\
\midrule
'D' & 'a' & 'v' & 'i' & 'd'\\\\
\bottomrule
\end{tabular}
\caption{Obsah \inlistc{char} pole}
\end{table}

### Hodnota položky
- syntax -- \inlistc{arrayName[index]}
- čtení -- \inlistc{foo = arrayName[index];}
- zápis -- \inlistc{arrayName[index] = foo;}

### Pole struktur
- pole složené ze struktur
- hodnota pole \inlistc{arrayName[index].insideVar}

\lstinputlisting[style=c, caption=Vypsání pole struktur]{../source_codes/24-structs-array.c}
