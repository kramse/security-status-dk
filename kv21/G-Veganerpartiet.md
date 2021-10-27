


# G - Veganerpartiet

Informationer:
E-post: kontakt@vgpt.dk
Hjemmeside: www.vgpt.dk


## TL;DR

Nogenlunde normale findings, småting. Bedre end forventet for en infrastruktur for mindre dansk parti.


## Hjemmeside indstillinger

Test 27/10 2021

https://internet.nl/site/www.vgpt.dk/

Sitet opnår 71% - ikke dårligt

Der mangler:
* DNSSEC mangler - typisk for danske domæner, desværre

HTTPS indstillinger:

* HSTS - burde være på et site i 2021, FIX ME



## Web site security headers

Vælger at bruge Mozilla observatory report:

```
HTTP Observatory Report: vgpt.dk

Score Rule                     Description
  -20 content-security-policy  Content Security Policy (CSP) implemented unsafely.
   -5 subresource-integrity    Subresource Integrity (SRI) not implemented, but all external scripts are loaded over HTTPS.
    5 referrer-policy          Referrer-Policy header set to "no-referrer", "same-origin", "strict-origin" or "strict-origin-when-cross-origin".

Score: 75
Grade: B

Full Report Url: https://observatory.mozilla.org/analyze.html?host=vgpt.dk
```

Bedst i test af partierne pt. - Lille FIX ME med CSP vil jeg anbefale.

## Andre issues - Burp


## Mail indstillinger

Test 27/10 2021
https://internet.nl/mail/vgpt.dk/ opnår 73%

Mangler DNSSEC, samme for domænet naturligvis.

DMARC, DKIM, SPF - check, godt

DMARC anbefaler jeg at skifte til REJECT. FIX ME.

SPf anbefaler jeg at skifte til -all fremfor ~all som er der nu. FIX ME.

Mailserver kan forbedres:
* TLS 1.0 og 1.1 bør slåes fra FIX ME
* Algoritmer bør efterses, brug sslscan FIX ME

## Andre Informationer

Primært via whois:

* Mail hostes via Google - eeeww
* Hjemmesiden hostes i Tyskland hos Hetzner
