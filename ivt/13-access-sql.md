% Databáze MS Access, SQL příkazy, struktura databázového souboru, formát dat,
% návrh jednoduché databáze, práce s daty v databázi, aktualizace dat,
% formulář-pohled na data, ukázka tvorby formuláře, třídění a vyhledávání
% informací v databázi, popis tvorby dotazů, ukázka práce s databází

\setcounter{section}{12}
# Databáze MS Access, SQL
## Databáze
- organizovaná kolekce dat
- uložení a přístup elektronicky
- uloženy jako soubor (malé DB), nebo hostovány na počítačových clusterech či v cloudu (velké DB)
- různé designy, query jazyky, bezpečnost, způsob reprezentace\dots
- typy
	- Hierarchická databáze
	- Síťová databáze
	- Relační databáze
	- Objektová databáze
	- Objektově relační databáze
- MySQL, MongoDB, MariaDB, MS Access\dots

### MS Access
- database management system (DBMS)
- kombinace relační databáze s GUI
- součástí MS Office
- uložení databáze ve vlastním formátu
- podpora VBA

## Struktura
- databáze -- systém uchovávající všechna data a tables
- table
	- objekt databáze
	- uchovává samotná data ve specifikovaných sloupcích (fields)
	- každý řádek jeden záznam (entry)
	- primary key
		- sloupec udávající primární klíč / id záznamu
		- unikátní pro každý záznam
		- specifikován v jiných tables při propojování dat
	- foreign key
		- klíč ukazující na entry dat v jiném tablu
		- např.: objednávka 1 patří zákazníkovy 2
- relace
	- specifikace souvislostí mezi tably
	- foreign key v table1 ukazuje na primary key v table2
	- použití slučování -- \inlists{INNER JOIN}, \inlists{LEFT JOIN}, \inlists{RIGHT JOIN}, \inlists{FULL JOIN}
- view
	- virtuální table
	- výsledek \inlists{SELECT} příkazu na reálných datech

\lstinputlisting[style=sql, caption=Vytvoření tablu]{../source_codes/13-create-table.sql}

### Formáty dat/datatypy
- pro každé field potřeba specifikovat data typ
- typy textu, čísel, binárních dat, času a dat\dots
- SQL (MySQL) data typy -- \inlists{CHAR(size), VARCHAR(size), BINARY(size), TEXT(size), BLOB(size), MEDIUMTEXT, MEDIUMBLOB, LONGTEXT, ENUM(val1, val2...), BIT, BOOL, SMALLINT(size), INT(size), FLOAT(p), DATE, TIMESTAMP}\dots
- MS Access data typy -- text (MySQL -- \inlists{TINYTEXT}), memo (MySQL -- \inlists{TEXT}), byte, integer (MySQL -- \inlists{TINYINT}), long, single, double, currency, date/time, yes/no, ole object (obrázky, audio, binární data\dots), hyperlink, lookup wizard (MySQL -- \inlists{ENUM})\dots
- computed column/field -- sloupec počítán z jiných sloupců
	- SQL -- \inlists{ALTER TABLE orders ADD final_price AS item_count * item_prize}
	- MS Access -- vytvoření vzorce pomocí expression builderu

## SQL
- standardizovaný programovací jazyk pro používání (hlavně relačních) databází
- původně vytvořeno roku 1970
- vytváření databází, zápis dat, čtení (query) dat, mazání dat, vytváření souvislostí\dots
- specifikace úkonu pomocí speciálních klíčových slov, pevná syntaxe

### Příkazy
- \inlists{SELECT} -- čtení dat z tablu
- \inlists{UPDATE} -- změna uložených dat
- \inlists{DELETE} -- smazání řádku
- \inlists{INSERT INTO <tableName>} -- přidání řádku
- \inlists{CREATE DATABASE <dbName>} -- vytvoření nové databáze
- \inlists{ALTER DATABASE <dbName>} -- modifikace databáze
- \inlists{CREATE TABLE <tableName>} -- vytvoření nového tablu
- \inlists{ALTER TABLE <tableName>} -- změna tablu
- \inlists{DROP TABLE <tableName>} -- smazání tablu
- \inlists{CREATE INDEX <indexName> ON <tableName> (column1, column2...)} -- vytvoření indexu tablu (sloupce tablu)
- \inlists{DROP INDEX <indexName>} -- smazání indexování tablu (sloupce tablu)

### \inlists{SELECT}
- použito pro čtení dat z tabulky
- syntax
	- \inlists{SELECT column1, column2, ... FROM tableName;} -- export specified columns
	- \inlists{SELECT * FROM tableName} -- select all columns

#### \inlists{WHERE}
- specifikace podmínky, pro které se má příkaz aplikovat
- \inlists{SELECT * FROM persons WHERE firstName = 'Karel'}
- možno pomocí \inlists{AND} a \inlists{OR} použít více podmínek
- používáno i při \inlists{UPDATE} a \inlists{DELETE}

#### \inlists{ORDER BY}
- řazení dat
- \inlists{SELECT * FROM persons ORDER BY firstName}

## Práce s MS Access
### Návrh databáze
- vytvoření tables s příslušným obsahem dat a fields
- vytvoření příslušných relací mezi tables
	- Database Tools $\rightarrow$ Relationships

### Formuláře
- způsob vnější integrace s daty
- více user-friendly způsob zapisování/aktualizace/mazání dat
- Create $\rightarrow$ Form
- změna vzhledu ve form designeru

### Třídění a vyhledávání dat
- řešeno pomocí querries
- možnost zobrazit data, listovat různá data z více tabulek
- specifikace zobrazených sloupců, jejich podmínek a řazení
- možno vytvářet přímo SQL query
