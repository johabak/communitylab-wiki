# Community Lab-wiki

Dokumentasjonsside for Community Lab, bygget med [Material for MkDocs](https://squidfunk.github.io/mkdocs-material/) og servert med Nginx.

## Lokal forhåndsvisning

Med Docker installert kan siden forhåndsvises på `http://localhost:8000`:

```sh
docker run --rm -it -p 8000:8000 -v "$(pwd)":/docs squidfunk/mkdocs-material
```

## Bygg og kjøring

Bygg de statiske filene og start Nginx:

```sh
docker compose run --rm builder
docker compose up -d communitylab_docs
```

Nginx eksponerer siden på port `8001`. Det genererte `site/`-området er ignorert av Git.

## Oppdatering av serveren

`update_docs.sh` henter siste versjon av `main` med fast-forward-only og bygger siden på nytt. Scriptet:

- kan startes fra en vilkårlig arbeidsmappe;
- hindrer parallelle bygg;
- avslutter umiddelbart dersom Git-oppdateringen eller MkDocs-bygget feiler.

Serverens webhook eller jobb som starter scriptet administreres utenfor dette repoet.

## Legge til innhold

Dokumentasjonen ligger under `docs/`. Nye sider må også legges til under `nav` i `mkdocs.yml` dersom de skal vises i hovedmenyen.
