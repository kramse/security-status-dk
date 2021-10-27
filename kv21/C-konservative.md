


# C - Konservative

Informationer:
E-post: info@konservative.dk
Hjemmeside: www.konservative.dk


## TL;DR

Nogenlunde normale findings, småting. Nok som forventet for en etableret infrastruktur for større dansk parti.

Deres infrastruktur er cloud og med på noderne med DNSSEC og IPv6!

## Hjemmeside indstillinger

Test 27/10 2021

https://internet.nl/site/

Sitet opnår 97% - det er godt!

De mangler lige HSTS, ellers ville det være 100%!



Der mangler:
* IPv6 for hjemmesiden - har de! Via Microsoft Azure, godt.
* DNSSEC mangler - har de! Stærkt

HTTPS indstillinger:

* HSTS - burde være på et så populært partis site, FIX ME



## Web site security headers

Mangler en del. Vælger at bruge Mozilla observatory report:

```
HTTP Observatory Report: konservative.dk

Score Rule                       Description
  -40 cookies                    Session cookie set without using the Secure flag or set over HTTP.
  -25 content-security-policy    Content Security Policy (CSP) header not implemented.
  -20 strict-transport-security  HTTP Strict Transport Security (HSTS) header not implemented.
  -10 x-xss-protection           X-XSS-Protection header not implemented.
   -5 subresource-integrity      Subresource Integrity (SRI) not implemented, but all external scripts are loaded over HTTPS.
   -5 x-content-type-options     X-Content-Type-Options header not implemented.

Score: 0
Grade: F

Full Report Url: https://observatory.mozilla.org/analyze.html?host=konservative.dk
```

"plads til forbedring". Der er god grund til at forbedre dette, for at sikre borgere imod phishing angreb, eller lignende. FIX ME

## Andre issues - Burp


## Mail indstillinger

Test 27/10 2021
https://internet.nl/mail/konservative.dk/ opnår 65%

Mangler IPv6 og DNSSEC, samme for domænet naturligvis.

DMARC, DKIM, SPF - check, godt

Mailserver TLS er fjong! Godt.

## Andre Informationer

Primært via whois:

* Mail hostes via outlook / Microsoft
* Hjemmesiden hostes i Azure
