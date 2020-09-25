#!/usr/bin/env zsh

[[ -z "$@" ]] && exit

FILE="$1"

sudo cp $1 /mnt/blue/internal/XAMPP/htdocs/

