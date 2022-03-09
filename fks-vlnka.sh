#!/bin/bash

# seznam zkratek, za kterými má být vlnka
ZKRATCZ="
	tj. tzn. tzv. pozn. pozn.: např. např.: popř. př. kupř. č. obr. resp.
"
ZKRATSK="
	tj. tzn. tzv. pozn. pozn.: napr. napr.: popr. pr. kupr. č. obr. resp.
"

# seznam slov před a za matematikou
PZMATCZ="
	bod bodu bode bodě bodem body bodů bodům body bodech
	čas času čase časem časy časů časům časech
	číslo čísla číslu čísle číslem čísel číslům číslech čísly
	definovat definujeme definujme definovali definice definicí
	délka délky délce délku délko délkou délek délkám délkách délkami dlouhý dlouhá dlouhé
	doba doby době dobu dobo době dobou dob dobám dobách dobami
	energie energii energií energiím energiích energiemi
	existuje
	exponent exponentu exponente exponentem exponenty exponentům exponentech
	frekvence  frekvenci frekvencí frekvencím frekvencích frekvencemi
	hloubka hloubky hloubce hloubku hloubko hloubce hloubkou hloubek hloubkám hloubkách hloubkami hluboký hluboká hluboké
	hmotnost hmotnosti hmotností hmotnostem hmotnostech hmotnostmi
	hodnota hodnoty hodnotě hodnotu hodnoto hodnotou hodnot hodnotám hodnotách hodnotami
	hrana hrany hraně hranu hrano hranou hran hranám hranách hranami
	hustota hustoty hustotě hustotu hustoto hustotou hustot hustotám hustotách hustotami
	hybnost hybnosti hybností hybnostem hybnostech hybnostmi
	index indexu indexe indexem indexy indexům indexech
	interval intervalu intervale intervalem intervaly intervalů intervalům intervalech
	je bude
	jej ho
	jsou
	kladný kladná kladné kladnému kladným kladných
	konstanta konstanty konstantě konstantu konstanto konstantou konstant konstantám konstantách konstantami
	moment momentu momente momentě momentem momenty momentů momentům momentech
	náboj náboje náboji nábojem nábojům nábojích náboji
	napětí napětím napětích napětími
	neplatí
	neznámá neznámé neznámou neznámými neznámým
	objem objemu objeme objemem objemy objemů objemům objemech
	parametr parametru parametre parametrem parametry parametrům parametrech
	platí platit
	podíl podílu podíle podílem podíly podílů podílům podílech
	pole polí poli polem polím polích
	poloha polohy poloze polohu poloho polohou poloh polohám polohách polohami
	poloměr poloměru poloměre poloměrem poloměry poloměrů poloměrům poloměrech
	proměnná proměnné proměnnou proměnných proměnným proměnnými
	proud proudu proude proudem proudy proudů proudům proudech
	průměr průměru průměre průměrem průměry průměrů průměrům průměrech
	průmět průmětu průměte průmětem průměty průmětům průmětech
	přepočet přepočtu přepočte přepočtem přepočty přepočtů přepočtům přepočtech
	rovnice rovnici rovnicí rovnic rovnicích rovnicemi
	rovnost rovnosti rovností rovnostem rovnostech rovnostmi
	rozdíl rozdílu rozdíle rozdílem rozdíly rozdílů rozdílům rozdílech
	rozměr rozměru rozměre rozměrem rozměry rozměrů rozměrům rozměrech
	rychlost rychlosti rychlostí rychlostem rychlostech rychlostmi
	síla síly síle sílu sílo silou sílou síly sil silám sílám silách sílách silami sílami
	sklon sklonu sklone sklonem sklony sklonů sklonům sklonech
	složka složky složce složku složko složkou složek složkách složkami
	směr směru směre směrem směry směrů směrům směrech
	součet součtu součte součtem součty součtů součtům součtech
	součin součinu součine součinem součiny součinů součinům součinech vynásobení vynásobené vynásobená vynásobena
	souřadnice souřadnici souřadnicí souřadnic souřadnicím souřadnicích souřadnicemi
	strana strany straně stranu strano stranou stran stranám stranách stranami
	střed středu střede středem středy středů středům středech
	substituce substituci substitucí substitucím substitucích substitucemi
	šířka šířky šířce šířku šířko šířkou šířek šířkám šířkách šířkami široký široká široké
	teplota teploty teplotě teplotu teploto teplotou teplot teplotám teplotách teplotami
	tlak tlaku tlalem tlaky tlaků tlakům tlacích
	tloušťka tloušťky tloušťce tloušťku tloušťko tloušťkou tlouštěk tloušťkám tloušťkách tloušťkami
	trvat trvá trvalo trvala
	úhel úhlu úhel úhle úhlem úhlů úhlům úhly úhlech
	veličina veličiny veličině veličinu veličino veličinou veličin veličinám veličinách veličinami
	velikost velikosti velikostí velikostem velikostech velikostmi
	vychází
	vyjde
	výraz výrazu výraze výrazem výrazy výrazů výrazům výrazech
	výška výšky výšce výšku výško výškou výšky výšek výškám výškách výškami vysoký vysoká vysoké
	vzdálenost vzdálenosti vzdáleností vzdálenostem vzdálenostech vzdálenostmi
	vzorec vzorce vzorci vzorcem vzorců vzorcům vzorcích
	vztah vztahu vztahem vztahy vztahů vztahům vztazích
	záporný záporná záporné zápornému záporným záporných
	zrychlení zrychlením zrychleních zrychleními
"
PZMATSK="
	bod bodu bode bode bodom body bodov bodom body bodoch
	čas času čase časom časy časov časom časoch
	číslo čísla číslu čísle číslom čísel číslam číslach číslami
	definovať definujeme definujme definovali definície definíciou
	dĺžka dĺžky dĺžke dľžka dľžka dľžka dĺžok dĺžkam dĺžkach dĺžkami dlhý dlhá dlhé
	čas doby dobe dobu dobo dobe dobou čias dobám dobách dobami
	energie energiu energiou energiám energiách energiami
	existuje
	exponent exponentu exponente exponentom exponentov exponentom exponentoch
	frekvencia frekvenciu frekvenciou frekvenciám frekvenciách frekvenciami
	hĺbka hĺbky hĺbke hĺbku hĺbko hĺbke hĺbkou hĺbok hĺbkam hĺbkach hĺbkami hlboký hlboká hlboké
	hmotnosť hmotnosti hmotnosťou hmotnosť hmotnosť hmotnosťami
	hodnota hodnoty hodnote hodnota Hodnota hodnotou hodnôt hodnotám hodnotách hodnotami
	hrana hrany hrane hranu hrano hranou hrán hranám hranách hranami
	hustota hustoty hustote hustotu hustoty hustotou hustôt hustoty hustotách hustotami
	hybnosť hybnosti hybnosťou hybnosť hybnosť hybnosť
	index Index Index indexom indexy indexom indexoch
	interval intervalu intervale intervalom intervaly intervalov intervalom intervaloch
	ich bude
	ho ho
	sú
	kladný kladná kladné kladnému kladným kladných
	konštanta konštanty konštante konštantu konštanty konštantou konštánt konštantám konštantách konštantami
	moment momentu momente momente momentom momenty momentov momentom momentoch
	náboj náboja náboji nábojom nábojom nábojoch nábojmi
	napätie napätím napätiach napätiami
	neplatí
	neznáma neznáme neznámu neznámymi neznámym
	objem objemu objem objemom objemy objemov objemom objemoch
	parameter parametra parametre parametrom parametrami parametrom parametroch
	platí platiť
	podiel podielu Podiel Podiel podiely podielov podielom podieloch
	pole polí poli poľom poliam poliach
	poloha polohy polohe polohu Position Umiestnenie polôh polohám polohách polohami
	polomer polomeru polomer polomerom polomery polomerov polomerom polomeroch
	premenná premenné premennou premenných premenným premennými
	prúd prúdu Prúd prúdom prúdy prúdov prúdom prúdoch
	priemer priemeru Rozmer Rozmer priemery priemerov priemerov priemeroch
	priemet priemetu priem priemetom priemety priemetom Priemet
	prepočet prepočte prepočíta prepočtom prepočty prepočtov prepočtom prepočtoch
	rovnice rovnicu rovnicou rovníc rovniciach rovnicami
	rovnosť rovnosti rovnosťou rovnosť rovnosť rovnosť
	rozdiel rozdielu Rozdiel Rozdiel rozdiely rozdielov rozdielom rozdieloch
	rozmer rozmeru rozmery Rozmery rozmery rozmerov rozmerom rozmeroch
	rýchlosť rýchlosti rýchlosťou rýchlostiam rýchlostiach rýchlosťami
	sila sily sile silu sila silou silou sily síl silám silám silách hrúbkach silami silami
	sklon sklonu sklon sklonom sklony sklonov sklonom sklonoch
	zložka zložky zložke zložku zložku zložkou zložiek zložkách zložkami
	smer smeru smere smerom smermi smerov líniám smeroch
	súčet súčtu Souci súčtom súčty súčtov súčtov súčtoch
	súčin súčinu súčin súčinom súčiny súčinov součinům kombináciách vynásobení vynásobenej vynásobená vynásobená
	súradnice súradnicu súradnicou súradníc súradniciam súradniciach súradnicami
	strana strany strane strana Strana stranou strán stranám stranách stranami
	stred stredu strede stredom stredy stredov stredom stredoch
	substitúcia substitúciu substitúciou substitucím substitúciou substitúciami
	šírka šírky šírke šírku šírka šírka šírok šírkam šírkach šírkami široký široká široké
	teplota teploty teplote teplotu Teplota Teplota teplôt teplotám teplotách teplotami
	tlak tlaku tlalem tlaky tlakov tlakom tlakoch
	hrúbka hrúbky hrúbke hrúbku hrúbku hrúbkou hrúbok hrúbkam hrúbkach hrúbkami
	trvať trvá trvalo trvala
	uhol uhla uhol uhla uhlom uhlov uhlom uhly uhloch
	veličina veličiny veličine veličinu veličiny veličinou veličín veličinám veličinách veličinami
	veľkosť veľkosti veľkostí veľkostiam veľkostiach veľkosťami
	vychádza
	vyjde
	výraz výrazu výrazoch výrazom výrazy výrazov výrazom výrazoch
	výška výšky výške výška výška výška výška výšok výškam výškach výškami vysoký vysoká vysoké
	vzdialenosť vzdialenosti vzdialenosťou vzdialenostiam vzdialenostiach vzdialenosťami
	vzorec vzorca vzorci vzorcom vzorcov vzorcom vzorkách
	vzťah vzťahu vzťahom vzťahy vzťahov vzťahom vzťahoch
	záporný záporná záporné zápornému záporným záporných
	zrýchlenie zrýchlením zrýchleniach zrýchleniami
"

# seznam slov před matematikou
PRMATCZ="
	asi
	být
	cca
	číselně
	do
	dosadíme dosadili
	dosazení
	dosazení dosazením
	jako
	na
	než
	od
	označíme označili značí značíme označme
	pak
	podělíme podělili
	položíme položili
	pomocí
	porovnáme porovnali
	pro
	průměrně
	předpoklad
	přesně přesněji nejpřesněji přesnější nejpřesnější
	přibližně
	přičteme přičetli
	psát
	rok roku roce rokem roky roků rokům rocích
	rovno rovna rovná rovny rovnají
	různý
	skoro
	tedy
	téměř
	uvažovat uvažujeme uvažujme
	volíme zvolíme zvolili zvolme
	vydělíme vydělili
	výsledek výsledku výsledkem výsledky výsledků výsledkům výsledcích
	za
	zároveň
	zhruba
	že
"
PRMATSK="
	asi
	byť
	cca
	číselne
	do
	dosadíme dosadili
	dosadení
	dosadení dosadením
	ako
	na
	než
	od
	označíme označili značí značíme označme
	potom
	podelíme podelili
	položíme položili
	pomocou
	porovnáme porovnali
	pre
	priemerne
	predpoklad
	presne presnejšie najpresnejšie presnejšie najpresnejší
	približne
	prirátame pripočítali
	písať
	rok roka roku rokom roky rokov rokom rokoch
	presne rovná rovná rovny rovnajú
	rôzny
	skoro
	teda
	takmer
	uvažovať uvažujeme uvažujme
	volíme zvolíme zvolili zvoľme
	vydelíme vydelili
	výsledok výsledku výsledkom výsledky výsledkov výsledkom výsledkoch
	za
	zároveň
	zhruba
	že
"

# seznam slov za matematikou
ZAMATCZ="
	je jsou
	jeho její
"
ZAMATSK="
	je sú
	jeho jej
"

# seznam názvů odkazů, za kterými má být vlnka
PRODKCZ="
	dle
	podle
	rovnice rovnici rovnicí rovnic rovnicích rovnicemi
	tabulka tabulce tabulky tabulkách tabulkám
	viz
	výraz výrazu výraze výrazem výrazy výrazů výrazům výrazech
	výraz výrazu výraze výrazem výrazy výrazů výrazům výrazech
	vzorec vzorce vzorci vzorcem vzorců vzorcům vzorcích
	vztah vztahu vztahem vztahy vztahů vztahům vztazích
	obrázek obrázku obrázky obrázkům
"
PRODKSK="
	podľa
	podľa
	rovnice rovnicu rovnicou rovníc rovniciach rovnicami
	tabuľka tabuľke tabuľky tabuľkách tabuľkám
	pozri
	výraz výrazu výrazoch výrazom výrazy výrazov výrazom výrazoch
	výraz výrazu výrazoch výrazom výrazy výrazov výrazom výrazoch
	vzorec vzorca vzorci vzorcom vzorcov vzorcom vzorkách
	vzťah vzťahu vzťahom vzťahy vzťahov vzťahom vzťahoch
	obrázok obrázku obrázky obrázkom
"

# seznam slov před čísly
PRCISCZ="
	rok roku roka roce rokem roky roků rokům rocích
	den dne dni dnu dnem dny dnů dnům dnech
	do
	od
	po
	před
"
PRCISSK="
	rok roka roka roku rokom roky rokov rokom rokoch
	deň dňa dňu dnu dňom dni dní dňom dňoch
	do
	od
	po
	pred
"

# názvy měsíců
MESICCZ="
	leden ledna lednu ledne lednem ledny lednů lednům lednech
	únor února únoru únore únorem únory únorů únorům únory únorech
	březen března březnu březne březnem březny březnům březnech březny
	duben dubna dubnu dubne dubnem dubnů dubnům dubnech dubny
	květen května květnu květne květnem květny květnů květnům květnech
	červen června červnu červne červnem červny červnů červnům červnech
	červenec července červenci červencem červenců červencům červencích červenci
	srpen srpna srpnu srpne srpnem srpny srpnů srpnům srpnech
	září zářím
	říjen října říjnu říjne říjnem říjny říjnů říjnům říjnech
	listopad listopadu listopade listopedem listopady listopadů listopadům listopadech
	prosinec prosince prosinci prosincem prosince prosinců prosincům prosincích prosinci
"
MESICSK="
	január januára januári januára januárom januára januára lednům januára
	február februára februári februára februárom Február Február únorům Február Február
	marec marca marci Brezeň marcom marca březnům marca marca
	apríl apríla apríli apríla aprílom apríla dubnům Dubno Dubno
	máj mája máji mája májom mája Kvetnej květnům Kvetnej
	jún júna júni Lipeň júnom júna júna červnům júna
	júl júla júli júlom júla červencům júla júli
	august augusta auguste augusta augustom augusta augusta srpnům augusta
	septembra septembrom
	október októbra októbri októbra októbrom októbra októbra říjnům októbra
	november novembra novembra listopedem novembra novembra listopadům novembra
	december decembra decembri decembrom decembra decembra prosincům decembra decembri
"

ZKRAT="$ZKRATCZ $ZKRATSK"
ZKRAT="$(echo $ZKRAT | sed -r -e 's/ +/|/g')"
ZKRAT="$(echo $ZKRAT | sed -r -e 's/\./[\.]/g')"
PRMAT="$PZMATCZ $PZMATSK $PRMATCZ $PRMATSK $ZKRATCZ $ZKRATSK"
PRMAT=$(echo $PRMAT | sed -r -e 's/[ \t]+/|/g')
ZAMAT="$PZMATCZ $PZMATSK $ZAMATCZ $ZAMATSK"
ZAMAT=$(echo $ZAMAT | sed -r -e 's/[ \t]+/|/g')
PRODK="$PRODKCZ $PRODKSK"
PRODK=$(echo $PRODK | sed -r -e 's/[ \t]+/|/g')
PRCIS="$PRCISCZ $PRCISSK $MESICCZ $MESICSK"
PRCIS=$(echo $PRCIS | sed -r -e 's/[ \t]+/|/g')
MESIC="$MESICCZ $MESICSK"
MESIC=$(echo $MESIC | sed -r -e 's/[ \t]+/|/g')

for file in "$@"
do
	vlna -l -n -s -m -r -v aAiIkKoOsSuUvVzZ "$file" # vlna - jednopísmenová slova na konci řádku
	sed -r -i -e "/^[[:space:]]*%/!s/([[:alpha:]])[ \n\t]+--[ \n\t]+([[:alpha:]])/\1~-- \2/gI;P;D;" "$file" # kolem pomlčky
	sed -r -i -e "s/~--~/~-- /g" "$file" # kolem pomlčky
	sed -r -i -e "/^[[:space:]]*%/!N;s/([ \n\t~]+)($ZKRAT)([ \n\t]+)/\3\1\2~/gI;P;D;" "$file" # zkratky
	sed -r -i -e "/^[[:space:]]*%/!N;s/([ \n\t~]+)($PRMAT)([ \n\t]+)[\$]/\3\1\2~\$/gI;P;D;" "$file" # před matematikou
	sed -r -i -e "/^[[:space:]]*%/!N;s/([ \n\t~]+)($PRMAT)([ \n\t~]+)([[:alpha:]]+)([ \n\t]+)[\$]/\1\3\5\2\3\4~\$/gI;P;D;" "$file" # před matematikou + 1 další slovo
	sed -r -i -e "/^[[:space:]]*%/!N;s/[\$]([ \n\t]+)($ZAMAT)([ \n\t~]+)/\$~\2\3\1/gI;P;D;" "$file" # za matematikou
	sed -r -i -e "/^[[:space:]]*%/!N;s/([ \n\t~]+)($PRODK)[ \n\t~]+([\\]ref|[\\]eqref|\([\\]ref)/\1\2~\3/gI;P;D;" "$file" # před odkazy
	sed -r -i -e "/^[[:space:]]*%/!N;s/([ \n\t~]+)($PRCIS)([ \n\t]+)([[:digit:]])/\3\1\2~\4/gI;P;D;" "$file" # před čísly
	sed -r -i -e "/^[[:space:]]*%/!N;s/([[:digit:]]{1,2}\.)[ \n\t~]+([[:digit:]]{1,2}\.|$MESIC)[ \n\t~]+([[:digit:]]{4})/\1~\2~\3/gI;P;D;" "$file" # v datumech s rokem
	sed -r -i -e "/^[[:space:]]*%/!N;s/([[:digit:]]{1,2}\.)[ \n\t~]+([[:digit:]]{1,2}\.|$MESIC)/\1~\2/gI;P;D;" "$file" # v datumech bez roku
	sed -r -i -e "/^[[:space:]]*%/!N;s/\([\\]ref\{([^\}]*)\}\)/\\\eqref\{\1\}/gI;P;D;" "$file" # nahradit ošklivé odkazy na rovnice
	sed -r -i -e "/^[[:space:]]*%/!N;s/(~){2,}/\1/gI;P;D;" "$file" # opravit násobné vlnky
	sed -r -i -e "/^[[:space:]]*%/!N;s/[ \n\t]*~[ \n\t]*/~/gI;P;D;" "$file" # smazat mezery kolem vlnek
	sed -r -i -e "/^[[:space:]]*%/!s/\n            /\n\t\t\t/gI;P;D;" "$file" # mezery na 3 odsazení
	sed -r -i -e "/^[[:space:]]*%/!s/\n        /\n\t\t/gI;P;D;" "$file" # mezery na 2 odsazení
	sed -r -i -e "/^[[:space:]]*%/!s/\n    /\n\t/gI;P;D;" "$file" # mezery na 1 odsazení
	sed -r -i -e "/^[[:space:]]*%/!s/ {2,}/ /gI;P;D;" "$file" # opravit násobné mezery
	sed -r -i -e "/^[[:space:]]*%/!s/ *\n/\n/gI;P;D;" "$file" # smazat mezery na konci řádku
	sed -r -i -e "/^[[:space:]]*%/!s/\n */\n/gI;P;D;" "$file" # smazat mezery na začátku řádku
done

echo "Opravit dělení čísel:"
grep --color=always -nE '[[:digit:]]{4,}' $@ # vypsat všechny čtveřice čísel (pro oddělení po 3)
echo "Smazat spojovník před slovem krát:"
grep --color=always -nE '\-krát' $@ #  # vypsat výskyty spojovníku před slovem krát
