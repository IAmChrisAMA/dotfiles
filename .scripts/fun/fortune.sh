#! /usr/bin/env zsh

trap "tput cnorm; exit" 2
VAR=$(( $RANDOM % 4 ))

random_say() {
    case $VAR in
        0)
            botsay
            ;;
        1)
            cowsay
            ;;
        2)
            buddhasay
            ;;
    esac
}

clear
fortune | random_say
tput civis 
read
tput cnorm
