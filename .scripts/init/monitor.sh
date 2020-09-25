#! /bin/bash

EDITOR=vim

##############################

low_dpi() {
     sed '1 s/128/96/g' ~/.Xresources > /tmp/xres
     mv /tmp/xres ~/.Xresources
}

hi_dpi() {
     sed '1 s/96/128/g' ~/.Xresources > /tmp/xres
     mv /tmp/xres ~/.Xresources
}


##############################

if xdpyinfo | grep --quiet -oh 3440x1440
    then
        hi_dpi
        xrandr --rate 120           # ONLY FOR 21:9 DELL MONITOR
fi

if xdpyinfo | grep --quiet -oh 2560x1440
    then
        hi_dpi
        xrandr --rate 144           # ONLY FOR 16:9 ACER MONITOR
fi


if xdpyinfo | grep --quiet -oh 1080 
    then
        low_dpi
fi


#############################
