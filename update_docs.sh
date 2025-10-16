#!/usr/bin/env bash
set -euo pipefail

# 1) Hent siste fra main
git fetch origin
git checkout main
git pull --ff-only origin main

# 2) Bygg MkDocs -> ./site (rens opp gamle filer)
sudo docker run --rm \
  -v "$(pwd)":/docs \
  --user "$(id -u)":"$(id -g)" \
  squidfunk/mkdocs-material \
  mkdocs build --clean

echo "✅ Ferdig bygget. Nginx serverer oppdaterte filer fra ./site"