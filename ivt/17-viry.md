% Viry, typy virů a jejich rozšíření, princip činnosti, antivirové programy,
% prevence, WWW -- účel, odkazy, informace na webových stránkách , vyhledávání
% informací, prohlížeče, FTP služba, použití, ukázka práce s FTP klientem

\setcounter{section}{16}
# Viry, WWW, FTP
## Viry
- počítačové programy s cílem napadnout systém a dále se rozšířit
- motivace -- profit, šíření zprávy, zábava, ukázání chyby, sabotáž systémů (DDoS)\dots
- využití hostovacího programu
	- computer worm nepotřebuje externí program
- většina virů směřována na MS Windows
- přenos přes soubory, po síti, USB flash disky\dots
- antiviry -- programy chránící před viry

### Historie
- 1949 -- John von Neumann -- Teorie sebereplikujícího se automatu
- 1982 -- *Elk Cloner* -- první vir ve veřejnosti
- 1984 -- Fred Cohen -- definoval pojem virus

### Druhy virů
- spyware -- vir vytvořen za účelem shromažďovat data o uživateli bez jeho vědomí
- adware -- zahlcení počítače reklamami
- malware -- software s účelem jakkoliv uškodit počítači
	- viry, červy, Trojské viry, Spyware, Adware, Ransomware\dots
- rozdělení podle hostitelů
	- spustitelné soubory -- com, exe, elf\dots
	- boot sektory disket a disků, MBR (master boot record)
	- dávkové soubory a scripty -- bat, sh\dots
	- makra v MS Office
	- speciální scripty aplikací
- rozdělení podle způsobu činnosti
	- rezidentní viry -- program nepokračuje, zůstává v RAM, infikuje soubory, se kterými uživatel pracuje
	- nerezidentní viry -- vir začne infikovat hned po spuštění vše, co najde
	- stealth viry 
		- snaha maskovat
		- při kontrole antivirem vrátí aplikaci původní data
		- dnes lehce odhalitelné
		- hlavně pro MS-DOS, dnes využití rootkitů
	- makro viry
		- makra kopírovaná z dokumentu do dokumentu
		- šíření v office souborech
		- dnes již ne moc rozšířené

#### Ransomware
- šifrování dat na pevném disku
- uzamčení systému s výhružnou zprávou
- požadavky výkupného (většinou krypto -- BTC\dots)
- zrod v Rusku, dnes již mezinárodní
- distribuce pomocí trojského koně
- typy
	- file coders (CryptoLocker, CTB-Locker\dots)
	- scareware -- falešné antiviry
	- screen lockers
	- doxing -- vyhrožování osobními údaji
	- phising

#### Spacefiller virus
- hledá volné místo v kódu namísto připojení na konce programu
- nezvětší se velikost souboru -- těžší idetifikovatelnost

#### Trojský kůň
- přetvářka za užitečný software
- práce v utajení
- editace uživatelských souborů, blokace souborů, DDoS tool, zpomalení počítače
- řešení -- reinstalace systému

#### DDoS attack
- distributed denial of service
- vyřazení služby/serveru zahlcením daty a požadavky
- znepřístupnění/zpomalení služby ostatním
- DoS -- posílání z jednoho počítače, DDoS -- posílání požadavků ze sítě počítačů

### Prevence
- ověřené antiviry
- ověřování pochybných mailů a dalších zpráv
- kontrola aktualizací programů
- vyhýbání se pochybným stránkám
- vyhýbání se pirátství
- zálohy počítače
- použití bezpečnějšího systému

#### Antiviry
- programy bojující proti virů
- kontrola souborů a programů
- Kaspersky, Bitdefender, Norton, McAfee, ESET, Windows Defender, AVG\dots

## FTP
- File Transfer Protocol
- protokol pro přenos souborů, komunikace se serverem
- využití TCP/IP
- přenos velkých souborů, základ infrastruktury firem\dots
- zabezpečení přes SSL/TLS
- přenos také přes SSH
- multiplatform
- možný přístup přes webový prohlížeč nebo prohlížeč souborů
- nevýhody -- přístupové údaje přenášeny jako plain text

## WWW
- World Wide Web
- informační systém pro sdílení dat a webových stránek
- www. -- subdoména
	- používána hlavně při začátcích internetu, dnes přesměrovává na samotné stránky
- přenos dat přes HTTP(s)
- hostování souborů na web serverech
- přístup přes webové prohlížeče
- odkaz -- adresa webové stránky
- cesta adres získávána přes DNS
