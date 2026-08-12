#!/usr/bin/env bash
set -euo pipefail

# Kjør alltid fra mappen der scriptet ligger. Dette gjør scriptet trygt å
# starte fra systemd, cron eller en webhook med en annen arbeidsmappe.
SCRIPT_DIR="$(cd -- "$(dirname -- "${BASH_SOURCE[0]}")" && pwd)"
cd "$SCRIPT_DIR"

# Unngå at to raske pushes bygger og skriver til ./site samtidig.
exec 9>"${TMPDIR:-/tmp}/communitylab-wiki-update.lock"
if ! flock -n 9; then
  echo "En oppdatering kjører allerede. Avslutter."
  exit 0
fi

# 1) Hent siste fra main
git fetch origin
git checkout main
git pull --ff-only origin main

# 2) Bygg MkDocs -> ./site (rens opp gamle filer)
docker run --rm \
  -v "$(pwd)":/docs \
  --workdir /docs \
  --user "$(id -u)":"$(id -g)" \
  squidfunk/mkdocs-material \
  build --clean

echo "✅ Ferdig bygget. Nginx serverer oppdaterte filer fra ./site"
