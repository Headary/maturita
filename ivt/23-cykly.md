% Cykly, s definovaným počtem opakování, s podmínkou na začátku a na konci,
% vnořený cyklus, výpis 2D obrazce

\setcounter{section}{22}
# Cykly
- způsob opakování kódu
- \uv{*iterace*} -- jedno spuštění kódu
- 3 typy
	- \inlistc{for} -- opakování kódu $n$-krát
	- \inlistc{while} -- spuštění kódu za platné podmínky
	- \inlistc{do while} -- vykoná kód a za platné podmínky jej spustí znovu
- související keywords
	- \inlistc{break;} -- ukončí cyklus, pokračuje kódem po bloku cyklu
	- \inlistc{continue;} -- ukončí započatou iteraci, skočí na další iteraci cyklu

## For loop
- cyklus používán pro vykonání známého počtu opakování
- použití -- procházení pole, vykreslování, vypisování řádků\dots
- syntaxe -- \inlistc{for(init; statement; increment)\\{...\\}}
	- \inlistc{init} -- výraz vyhodnocen za začátku, většinou zavedení proměnné indexu
	- \inlistc{statement} -- podmínka, za které se iterace spustí
	- \inlistc{increment} -- příkaz po vykonání iterace, většinou přičtení k indexu
	- výrazy nemusí být vůbec uvedeny či mohou být jinde, nicméně uvedený formát je standard

\lstinputlisting[style=c, caption=Použití for cyklu]{../source_codes/23-for.c}

## While cyklus
- syntaxe -- \inlistc{while(condition)}
- iteruje, dokud je podmínka platná
- testování podmínky před cyklem
- použití, pokud je podmínka během cyklu změněna
- možnost zapsat jako \inlistc{for(;condition;)}

\lstinputlisting[style=c, caption=Použití while cyklu]{../source_codes/23-while.c}

## Do while cyklus
- podobný jako while cyklus
- testuje podmínku až na konci
- zaručeno, že proběhne alespoň jednou
- vhodný na vstup několika hodnot (zadání další hodnoty záleží na předchozí)

\lstinputlisting[style=c, caption=Použití while cyklu]{../source_codes/23-do-while.c}

## Vnořený cyklus
- cyklus v cyklu
- způsob opakování kódu v rámci jedné iterace
- vykreslování 2D~obrazců, procházení 2D~pole, určení sumy pro $n$~členů\dots

\lstinputlisting[style=c, caption=Příklad vnořeného cyklu~-- Suma od 1 do $n$]{../source_codes/23-sums.c}

\lstinputlisting[style=c, caption=Vypisování 2D obrazců za pomoci cyklů]{../source_codes/23-2d.c}
