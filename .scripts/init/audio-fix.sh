# /bin/env/zsh

pulseaudio -k
mpd --kill
pkill pulseaudio
pkill mpd

mpd ~/.config/mpd/mpd.conf
mpc update
pulseaudio
