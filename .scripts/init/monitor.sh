#! /bin/bash

EDITOR=vim

##############################

# 1080p
low_dpi() {
     sed '1 s/128/96/g' ~/.Xresources > /tmp/xres
     sed '1 s/160/96/g' ~/.Xresources > /tmp/xres
     
     sed '66 s/128/96/g' ~/.config/polybar/config.ini > /tmp/polyconf
     sed '66 s/160/96/g' ~/.config/polybar/config.ini > /tmp/polyconf
     
     mv /tmp/polyconf ~/.config/polybar/config.ini
     mv /tmp/xres ~/.Xresources
}

# 1440p
mid_dpi() {
     sed '1 s/96/128/g' ~/.Xresources > /tmp/xres
     sed '1 s/160/128/g' ~/.Xresources > /tmp/xres
     
     sed '66 s/96/128/g' ~/.config/polybar/config.ini > /tmp/polyconf
     sed '66 s/160/128/g' ~/.config/polybar/config.ini > /tmp/polyconf
     
     mv /tmp/polyconf ~/.config/polybar/config.ini
     mv /tmp/xres ~/.Xresources

}

# 2160p
high_dpi() {
     sed '1 s/96/160/g' ~/.Xresources > /tmp/xres
     sed '1 s/128/160/g' ~/.Xresources > /tmp/xres
     
     sed '66 s/96/160/g' ~/.config/polybar/config.ini > /tmp/polyconf
     sed '66 s/128/160/g' ~/.config/polybar/config.ini > /tmp/polyconf
     
     mv /tmp/polyconf ~/.config/polybar/config.ini
     mv /tmp/xres ~/.Xresources

}

##############################

if xdpyinfo | grep --quiet -oh 3440x1440
    then
        mid_dpi
        xrandr --rate 120           # ONLY FOR 21:9 DELL MONITOR
fi

if xdpyinfo | grep --quiet -oh 2560x1440
    then
        mid_dpi
        xrandr --rate 144           # ONLY FOR 16:9 ACER MONITOR
fi

if xdpyinfo | grep --quiet -oh 3840x2160
    then
        high_dpi
        #xrandr --rate 144           # ONLY FOR 16:9 4K LG MONITOR
fi

if xdpyinfo | grep --quiet -oh 1080 
    then
        low_dpi
fi

#############################
