#!/bin/sh
git pull origin main
docker run --rm -it -v ${PWD}:/docs squidfunk/mkdocs-material build
