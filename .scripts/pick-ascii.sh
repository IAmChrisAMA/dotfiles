#! /bin/bash

ls | sort -R | tail -$N | while read file; do

		neofetch --ascii ~/.scripts/ascii/file

done
