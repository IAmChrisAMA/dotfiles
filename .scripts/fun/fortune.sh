#! /usr/bin/env zsh

trap "tput cnorm; exit" 2
VAR=$(( $RANDOM % 3 ))

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
while [ true ]; do fortune | random_say && tput civis && read && clear && sh ~/.scripts/fun/fortune.sh; done
tput cnorm
