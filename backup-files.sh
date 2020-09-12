#!/bin/bash

echo "Welcome to the dotfiles Manager."
echo "Installed packages will appear in 'packages.txt'"
echo "Vim bundles will appear in 'vim-bundles.txt'"

#######################################

pacman -Q > packages.txt         # It's a lot. I'll sparse a better list later.
ls ~/.vim/bundle > vim-bundles.txt      # I remembered

\cp ~/.bashrc .
\cp ~/.dmenurc .
\cp ~/.gitconfig .
\cp ~/.zshrc .
\cp ~/.xinitrc .
\cp ~/.Xresources .
\cp ~/.vimrc .

\cp ~/.config/i3-scrot.conf .config/
\cp ~/.config/picom.conf .config/
\cp ~/.config/mpd/mpd.conf .config/mpd/
\cp ~/.newsboat/urls .newsboat/

\cp -r ~/.config/ranger .config/
\cp -r ~/.config/neofetch .config/
\cp -r ~/.config/polybar .config/
\cp -r ~/.config/kitty .config/
\cp -r ~/.config/rofi .config/
\cp -r ~/.config/dunst .config/
\cp -r ~/.config/i3 .config/

\cp -r ~/.local/share/fonts .local/share/

\cp -r ~/.i3 .
\cp -r ~/.scripts .

#######################################


