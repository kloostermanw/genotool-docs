#!/usr/bin/env bash

~/venvs/zensical/bin/zensical build --clean
~/venvs/zensical/bin/zensical build -f mkdocs.nl.yml
~/venvs/zensical/bin/python3 -m http.server 8000 --directory site