


# D - Nye Borgerlige

Informationer:
E-post: sekretariat@nyeborgerlige.dk
Hjemmeside: www.nyeborgerlige.dk


## TL;DR

Nogenlunde normale findings, småting. Nok som forventet for en etableret infrastruktur for større dansk racistisk parti.


## Hjemmeside indstillinger

Test 27/10 2021

https://internet.nl/site/www.nyeborgerlige.dk/

Sitet opnår 68%

Der mangler:
* DNSSEC mangler - typisk for danske domæner, desværre

HTTPS indstillinger:

* HSTS - burde være standard, FIX ME
* TLS version 1.0 og 1.1 bør fjernes FIX ME
* Key exchange, mindre problem, men FIX ME


## Web site security headers

Mangler en del. Vælger at bruge Mozilla observatory report:

```
HTTP Observatory Report: www.nyeborgerlige.dk

Score Rule                       Description
  -50 subresource-integrity      Subresource Integrity (SRI) not implemented, and external scripts are loaded over HTTP or use protocol-relative URLs via src="//...".
  -40 cookies                    Session cookie set without using the Secure flag or set over HTTP.
  -20 content-security-policy    Content Security Policy (CSP) implemented unsafely.
  -20 strict-transport-security  HTTP Strict Transport Security (HSTS) header not implemented.
  -20 x-frame-options            X-Frame-Options (XFO) header not implemented.
  -10 x-xss-protection           X-XSS-Protection header not implemented.

Score: 0
Grade: F

Full Report Url: https://observatory.mozilla.org/analyze.html?host=www.nyeborgerlige.dk
```

"plads til forbedring". Der er god grund til at forbedre dette, for at sikre borgere imod phishing angreb, eller lignende. FIX ME

## Andre issues - Burp


## Mail indstillinger

Test 27/10 2021
https://internet.nl/mail/nyeborgerlige.dk/ opnår 67%

Mailserver (Google) har IPv6

Mangler DNSSEC for domænet naturligvis.

DMARC - findes ikke, bør opsættes - FIX ME

DKIM, SPF - check, godt

Mailserver kan forbedres:
* TLS 1.0 og 1.1 bør slåes fra FIX ME
* Algoritmer bør efterses, brug sslscan FIX ME

## Andre Informationer

Primært via whois:

* Mail hostes via Google - eeeeew
* Hjemmesiden hostes via Cloudflare  - godt til DDoS beskyttelse
