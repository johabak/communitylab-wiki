---
hide:
  - footer
---
# Community Lab
Her finner du litt teknisk informasjon om vår Community Lab!

## Hensikt

Hensikten med Community Lab er å gjøre det mye enklere for alle våre konsulenter å ha tilgang til labmiljø for læring, POC-er og sertifiseringer. I tillegg prøver vi å holde liv i alle labmiljøene vi har satt opp i samarbeid med partnere som Fortinet og Aruba.


## Dagens løsning
Vi har fått etablert dagens løsning i Sopra Sterias TechEdge-lab. Laben er satt opp og driftes i Sopra Sterias lokaler, slik at vi slipper lokal drift hjemme. TechEdge-laben bruker Nutanix-hypervisorer. Her har vi per nå to VM-er: én for CML-instansen og én Linux-server for blant annet bookingløsningen og denne wikien.

Cloudflare håndterer DNS og trafikkstyring. Cloudflare Zero Trust beskytter de interne applikasjonene slik at bare autoriserte brukere får tilgang.

Vi ønsker å utvide tilbudet og trenger derfor innspill til hvilke tjenester det kan være nyttig å etablere!


## Historikk
Community Lab startet som et prosjekt av tidligere Competency Lead Christopher W. Tvedt. Den første utgaven av miljøet ble etablert i hans hjemmenett. Løsningen besto av en Intel NUC som kjørte de forskjellige serverrollene, og et sett med FortiGate 40F for VDOM og SD-WAN Lab Spoke.

<figure markdown>
  ![Image title](../images/nuc.png){ width="500" }
  <figcaption>Intel NUC10I7FNHN2</figcaption>
</figure>

|           | Beskrivelse                          |
| --------- | ------------------------------------ |
| CPU	      | 6 kjerner Intel Core i7 10710U       |
| Minne     | 64GB Kingston Fury Impact DDR4       |
| Lagring   | 2TB Kingston NV1 M.2 NVMe SSD        |

Det ble kjørt på ESXi 7.0 på Community Lab NUC
