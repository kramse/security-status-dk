


# A - Socialdemokratiet  

Informationer:
E-post: partikontoret@socialdemokratiet.dk
Hjemmeside: www.socialdemokratiet.dk


## TL;DR

Nogenlunde normale findings, småting. Nok som forventet for en etableret infrastruktur for større dansk parti.

## Hjemmeside indstillinger

Test 27/10 2021

https://internet.nl/site/www.socialdemokratiet.dk

Sitet www.socialdemokratiet.dk opnår 49%

Der mangler:
* IPv6 for hjemmesiden - typisk for danske web sites, desværre
* DNSSEC mangler - typisk for danske domæner, desværre

HTTPS indstillinger:

* HSTS - burde være på et så populært partis site, FIX ME

* Key exchange, mindre problem, men FIX ME
Web server IP address	Affected parameters	Status
195.82.40.73	DH-2048	insufficient

## Web site security headers

Mangler en del. Vælger at bruge Mozilla observatory report:

```
Score Rule                       Description
  -25 content-security-policy    Content Security Policy (CSP) header not implemented.
  -20 cookies                    Cookies set without using the Secure flag or set over HTTP.
  -20 strict-transport-security  HTTP Strict Transport Security (HSTS) header not implemented.
  -20 x-frame-options            X-Frame-Options (XFO) header not implemented.
  -10 x-xss-protection           X-XSS-Protection header not implemented.
   -5 x-content-type-options     X-Content-Type-Options header not implemented.

Score: 0
Grade: F

Full Report Url: https://observatory.mozilla.org/analyze.html?host=www.socialdemokratiet.dk
```

"plads til forbedring". Der er god grund til at forbedre dette, for at sikre borgere imod phishing angreb, eller lignende. FIX ME

## Andre issues - Burp
Issue:   TLS cookie without secure flag set
Severity:   Medium
Confidence:   Firm
Host:   https://www.socialdemokratiet.dk
Path:   /skolemateriale/

Issue detail
The following cookies were issued by the application and do not have the secure flag set:
* ASP.NET_SessionId
* __RequestVerificationToken

Samme findes hos andre partier, med andre cookies. Ret normalt.

## Mail indstillinger

Test 27/10 2021
https://internet.nl/mail/socialdemokratiet.dk/ opnår 65%

Mangler IPv6 og DNSSEC, samme for domænet naturligvis.

DMARC, DKIM, SPF - check, godt

Mailserver kan forbedres:
* TLS 1.0 og 1.1 bør slåes fra FIX ME
* Algoritmer bør efterses, brug sslscan FIX ME

## Andre Informationer

Primært via whois:

* Mail hostes i Danmark hos Zitcom
* Hjemmesiden hostes i Tyskland

Hjemmesiden leder en videre til et site for "s-aktiv"
https://socialdemokratiet.membersite.dk/

dette har en ældre jQuery. Der er også andre sites linket fra dette, som ikke er undersøgt.
