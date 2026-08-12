---
hide:
  - footer
---

# Reservasjon av CML

CML bruker et egenutviklet bookingsystem. Du kan reservere én tretimersperiode om gangen, inntil fem dager frem i tid.

[Åpne CML-booking](https://booking.communitylab.network/){ .md-button .md-button--primary }

## Kort fortalt

- Du kan ha én aktiv reservasjon.
- En reservasjon varer i tre timer.
- Du kan reservere inntil fem dager frem i tid, inkludert dagens dato.
- Første reservasjon krever bekreftelse av e-postadressen.
- Innloggingsinformasjon sendes når reservasjonen starter.
- Du må avbestille hvis du ikke skal bruke reservasjonen.
- Du skal aldri endre det tildelte passordet.

## Slik reserverer du

1. Åpne bookingsystemet.
2. Velg en ledig dato og tidsperiode.
3. Oppgi e-postadressen din og fullfør reservasjonen.
4. Bekreft e-postadressen dersom dette er første gang du bruker systemet.
5. Kontroller at du mottar en bekreftelse med dato og tidspunkt.

## Når reservasjonen starter

Du mottar en e-post med påloggingsinformasjon når perioden begynner. Bruk denne til å logge inn på <https://cml.communitylab.network/>.

!!! warning "Ikke endre passordet"
    Reservasjonssystemet er avhengig av at det tildelte passordet forblir uendret. Endring av passordet kan hindre senere brukere i å logge inn.

## Når reservasjonen avsluttes

Når perioden er over, mottar du en e-post som informerer om at reservasjonen er avsluttet. Labber som ble opprettet i perioden, blir lagt ved slik at de kan importeres ved en senere reservasjon.

Kontroller at du har mottatt eller eksportert arbeid du vil beholde.

## Avbestilling

Avbestill reservasjonen så tidlig som mulig hvis du ikke skal bruke den. Da blir tidsperioden tilgjengelig for andre.

## Vanlige problemer

### Jeg mottar ikke e-post

Kontroller søppelpost og at e-postadressen er skrevet riktig. Meld problemet i `Lab`-kanalen dersom e-posten fortsatt mangler.

### Jeg kommer ikke inn i CML

Kontroller at reservasjonen har startet, at du bruker informasjonen fra den siste e-posten, og at adressen er <https://cml.communitylab.network/>.

### Jeg trenger mer tid

Du kan opprette en ny reservasjon når den aktive reservasjonen er utløpt. Ta vare på labfilene slik at arbeidet kan importeres igjen.

## Om bookingsystemet

Bookingsystemet er skrevet i Python med Django. Kildekoden er tilgjengelig på GitHub:

- [Original versjon fra 2022](https://github.com/ctvedt/cml-booking/)
- [Forgrenet versjon fra 2025](https://github.com/johabak/cml-booking/)
