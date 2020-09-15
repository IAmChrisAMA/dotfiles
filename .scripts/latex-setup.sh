#! /bin/bash

EDITOR=vim
bold=$(tput bold)
normal=$(tput sgr0)

now=`date +"%m%d%Y"`

###############################

pause() {
    read -p "If you're good to go, press any key to continue."
}

prompt() {
    echo "This is meant to be ran in the current directory of your choosing."
    echo "If you don't mean to use it in..." 
    echo "${bold}" && pwd && echo "${normal}" 
    echo -n "...then Ctrl-D or Ctrl-C."
    pause
}

setup() {
    cp ~/School/homework-and-stuffs/*.tex .
    mv *.tex $2-${now}.tex
    vim *.tex
}

if [[ $1 = "--no-prompt" -o $2 = "--no-prompt" ]] 
    setup

else
    prompt
    setup

fi


