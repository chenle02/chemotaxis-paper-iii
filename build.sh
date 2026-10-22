#!/usr/bin/env bash
set -euo pipefail
cd "$(dirname "$0")"
mkdir -p build
latexmk -lualatex -interaction=nonstopmode -halt-on-error -outdir=build 10-20-2026-CRS-3-Le-v2.tex
if rg -i 'undefined references|undefined citations|LaTeX Error|Citation.*undefined|Reference.*undefined' build/10-20-2026-CRS-3-Le-v2.log; then
  echo 'Build has unresolved references or citations' >&2
  exit 1
fi
