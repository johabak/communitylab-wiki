#!/bin/sh
git pull origin master
docker run --rm -it -v ${PWD}:/docs squidfunk/mkdocs-material build
