


# Domæner, navne osv.

https://valg.im.dk/partier-og-kandidater/opstillingsberettigede-partiers-adresser-mv

# Testmetodik

Ved brug af ÅBNE ressourcer, dvs domænenavne og dertilhørende informationer fra DNS laves en opsamling af indstillinger for partiernes it-sikkerhed.

Vi forventer, best case:
* Hjemmesider bruger HTTPS
* Mail servere bruger SMTP TLS
* DNS navnservere findes i fornuftigt setup med DNSSEC

Hjemmesider skal yderligere:
* Ikke afsløre for meget om server, operativsystem, indstillinger mv.
* Have passende security headers



## Værktøjer

Der findes et væld af test hjemmesider, som internet.nl men også værktøjer som sslscan


Disse kan med fordel afvikles fra en Kali installation


## Du hacker!

Kort sagt, nej - indsamler fra åbne kilder. Ser hvad hjemmesiderne selv sender til mig.

Burp Suite er brugt til at surfe på hjemmesider og passivt! indsamle information - som matches op mod kendte versioner af libraries mv.

## Referencer [TODO]

Indsæt links til wikipedia med beskrivelser af de nævnte standarder.

Der kan findes meget information om netværksindstillinger på netop Wikipedia.

Godt skriv om HTTPS/TLS - chef venligt:
https://english.ncsc.nl/publications/publications/2021/january/19/it-security-guidelines-for-transport-layer-security-2.1

SMTP Mail server - BØR understøttes af ALLE i DK - SMTP TLS:
https://en.wikipedia.org/wiki/Opportunistic_TLS
