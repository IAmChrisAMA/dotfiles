#! /usr/bin/env zsh

trap "tput cnorm; exit" 2

clear
neofetch 
tput civis 
read -q
tput cnorm

 
