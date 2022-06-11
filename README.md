# Maturitní témata [GSS Mikulov](https://gssmikulov.cz/)

Repozitář vlastních materiálů k přípravě na maturitní zkoušku z českého jazyka,
fyziky a informatiky. Obsahuje nejen vypracované maturitní otázky, ale i
šablony a systémy pro jejich snazší a vytváření a automatické sázení.

## Materiály
 - [Český jazyk](cj/out) ([kompletní PDF](cj/out/complete.pdf))
 - [Fyzika](fyzika/out) ([kompletní PDF](fyzika/out/complete.pdf))
 - [Informatika](ivt/out) ([kompletní PDF](ivt/out/complete.pdf))

## Formát
Všechny dokumenty jsou napsané ve formátu LaTeX nebo formátu Markdown, který je
převáděn na LaTeX. Soubory jednotlivých otázek obsahují pouze obsah dané
otázky, samotnou strukturu obsahují `.cls` soubory. Ty jsou při kompilaci
použity jako šablona, do kterých je obsah otázky vložen. Samotná kompilace je
automatizována programem `make`.

Všechny výstupní soubory jsou ve formátu `pdf`, které jsou obsaženy ve složkách
`out`. Jsou zde jak soubory jednotlivých otázek, tak soubory `complete.pdf`
obsahující vše v jednom.

Zdrojové obrázky jsou obsaženy ve složkách `graphics` s příponou `*.src.*`. Ty
jsou následně převáděny do validního formátu pro LaTeX.

### Dependencies
- `make`
- `xelatex` (a příslušné balíčky)
- `inkscape`
- `metapost`
- `gnuplot`
