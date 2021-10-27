


# X - Frie Grønne

Informationer:
E-post: friegronne.dk
Hjemmeside: https://friegronne.dk/


## TL;DR

Nogenlunde normale findings, småting. Nok som forventet for en infrastruktur for et nyt spændende dansk antiracistisk parti.

## Hjemmeside indstillinger

Test 27/10 2021

https://internet.nl/site/friegronne.dk/

Sitet opnår 49%

Der mangler:
* IPv6 for hjemmesiden - typisk for danske web sites, desværre
* DNSSEC mangler - typisk for danske domæner, desværre

HTTPS indstillinger:

* HSTS - burde være på moderne web sites
* TLS version 1.0 og 1.1 bør fjernes FIX ME
* Key exchange, mindre problem, men FIX ME


## Web site security headers

Mangler en del. Vælger at bruge Mozilla observatory report:

```
HTTP Observatory Report: friegronne.dk

Score Rule                       Description
  -25 content-security-policy    Content Security Policy (CSP) header not implemented.
  -20 strict-transport-security  HTTP Strict Transport Security (HSTS) header not implemented.
  -20 x-frame-options            X-Frame-Options (XFO) header not implemented.
  -10 x-xss-protection           X-XSS-Protection header not implemented.
   -5 subresource-integrity      Subresource Integrity (SRI) not implemented, but all external scripts are loaded over HTTPS.
   -5 x-content-type-options     X-Content-Type-Options header not implemented.

Score: 15
Grade: F

Full Report Url: https://observatory.mozilla.org/analyze.html?host=friegronne.dk
```

"plads til forbedring". Der er god grund til at forbedre dette, for at sikre borgere imod phishing angreb, eller lignende. FIX ME

## Andre issues - Burp


## Mail indstillinger

Test 27/10 2021
https://internet.nl/mail/friegronne.dk/ opnår 63%

Mailserver (Google) har IPv6

Mangler DNSSEC for domænet naturligvis.

DMARC - findes ikke, bør opsættes - FIX ME

DKIM, SPF - check, godt

Der er dog fejl i SPF:
```
v=spf1 a include:servers.mcsv.net include:_spf.google.com include:sparkpostmail.com include:u21004247.ct.sendgrid.net ~all
```


Error! No SPF record found for "u21004247.ct.sendgrid.net".
 fundet via https://dmarcian.com/spf-survey/?domain=friegronne.dk

Mailserver kan forbedres:
* TLS 1.0 og 1.1 bør slåes fra FIX ME
* Algoritmer bør efterses, brug sslscan FIX ME

## Andre Informationer

Primært via whois:

* Mail hostes hos Google - eeeeew
* Hjemmesiden hostes hos Digital Ocean
