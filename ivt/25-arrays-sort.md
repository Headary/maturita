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

\lstinputlisting[language=C, caption=Příklad procházení pole]{../source_codes/25-array-traversing.c}

## Vícerozměrná pole
## Řadící (sorting) algoritmy
