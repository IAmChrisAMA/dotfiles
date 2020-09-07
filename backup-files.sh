#!/bin/bash

echo "Welcome to the dotfiles Manager."
echo "Installed packages will appear in 'packages.txt'"

#######################################

pacman -Q > packages.txt

\cp ~/.bashrc .
\cp ~/.dmenurc .
\cp ~/.gitconfig .
\cp ~/.zshrc .
\cp ~/.xinitrc .
\cp ~/.Xresources .
\cp ~/.vimrc .

\cp ~/.config/i3-scrot.conf .config/
\cp ~/.config/picom.conf .config/
\cp -r ~/.config/ranger .config/ranger
\cp -r ~/.config/neofetch .config/
\cp -r ~/.config/polybar .config/
\cp -r ~/.config/kitty .config/
\cp -r ~/.config/rofi .config/
\cp -r ~/.config/dunst .config/
\cp -r ~/.config/i3 .config/


\cp -r ~/.ncmpcpp .
#\cp -r ~/.oh-my-zsh .
\cp -r ~/.mpd .
#\cp -r ~/.local .
\cp -r ~/.i3 .
#\cp -r ~/.config .
#\cp -r ~/.cache .
\cp -r ~/.urxvt .
#\cp -r ~/.vim .
\cp -r ~/.scripts .

#######################################


