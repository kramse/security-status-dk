


# Å - Alternativet

Informationer:
E-post:
Hjemmeside:


## TL;DR

...

## Hjemmeside indstillinger

Test 27/10 2021

https://internet.nl/site/

Sitet opnår ..%

Der mangler:
* IPv6 for hjemmesiden - typisk for danske web sites, desværre
* DNSSEC mangler - typisk for danske domæner, desværre

HTTPS indstillinger:

* HSTS - burde være på et så populært partis site, og findes!
* TLS version 1.0 og 1.1 bør fjernes FIX ME
* Key exchange, mindre problem, men FIX ME


## Web site security headers

Mangler en del. Vælger at bruge Mozilla observatory report:

```

```

"plads til forbedring". Der er god grund til at forbedre dette, for at sikre borgere imod phishing angreb, eller lignende. FIX ME

## Andre issues - Burp


## Mail indstillinger

Test 27/10 2021
https://internet.nl/mail// opnår %

Mangler IPv6 og DNSSEC, samme for domænet naturligvis.

DMARC, DKIM, SPF - check, godt

Mailserver kan forbedres:
* TLS 1.0 og 1.1 bør slåes fra FIX ME
* Algoritmer bør efterses, brug sslscan FIX ME

## Andre Informationer

Primært via whois:

* Mail hostes i ... hos ...
* Hjemmesiden hostes i ...
