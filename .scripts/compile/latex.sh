#!/usr/bin/env zsh

[[ -z "$@" ]] && exit

FILE="$1"
NAME="$1:t:r"

pdflatex "$FILE" "$NAME".pdf
pdflatex "$FILE" "$NAME".pdf

rm *.aux *.log *.toc *.out
