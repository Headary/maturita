% Internet, připojení k internetu, přehled možností internetu, adresování, IP
% adresa, MAC adresa, ARP, podsítě, směrovací algoritmy (distance vektor, link
% state, Dijkstrov)

# Internet
- systém propojených počítačových sítí
- komunikace pomocí TCP/IP

## Připojení k internetu
- zprostředkovatel -- ISP (internet service provider)
- telefonní linka
	- analogový signál
	- konvertování přes modem
	- zastaralé
- kabel -- Ethernet, optické kabely
- bezdrátově -- satelity (starlink), mobilní síť (4G -- 60 Mb/s; 5G -- 600 Mb/s), WiFi
- elektrické rozvody

## Možnosti internetu
### WWW
- *world wide web*
- informační systém, informace přenášeny přes HTTP
- dostupné přes webový prohlížeč
- webové stránky uloženy na webových serverech
- přístup pomocí Uniform Resource Locators (URLs)
- HTML, JS, CSS, PHP\dots

### Email
- přenos emailových zpráv
- příjemce, odesílatel, předmět, samotná zpráva, přílohy
- přenos pomocí POP3 (příjem) a SMTP (odesílání) nebo IMAP (přístup k serveru)

### VoIP
- Voice over IP
- hlasová komunikace pomocí IP
- možno zobecnit na telefonní utilities přes internet (hlas, zprávy, dnes i video\dots)

### Přenos souborů
- přenos souborů přes internet
- FTP, SMB, NFS

## IP adresa
- adresa označující umístění na síti
- statická nebo přidělaná DCHP serverem
- správa protokolem IP
- IPv4
	- jednodušší verze
	- 32 bitové adresy -- 0.0.0.0 -- 255.255.255.255
	- komplexní, možné errory
	- dnes již došli na veřejném internetu IP adresy
- IPv6
	- rozšíření IP protokolu
	- 128 bitů na adresy -- 2001:db8:1234::f350:2256:f3dd
	- efektivnější a bezpečnější než IPv4
	- dnes se již plně nepřešlo, hlavně na lokálních sítích
- některé IP vytříbeny pro lokální sítě
	- class A -- 10.0.0.0 -- 10.255.255.255
	- class B -- 172.16.0.0 -- 172.31.255.255
	- class C -- 192.168.0.0 -- 192.168.255.255

## Mac adresa
## Podsítě
## ARP 
## Směrovací algoritmy
### Distance vektor
### Link state
### Algoritmy
