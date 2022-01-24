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
- módy
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
- zapsání/přepsání dat do souboru
