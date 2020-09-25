#! /usr/bin/env zsh

trap "tput cnorm; exit" 2

clear
neofetch 
tput civis 
read -p ""
tput cnorm
