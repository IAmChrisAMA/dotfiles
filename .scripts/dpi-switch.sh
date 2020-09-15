#! /bin/bash

if xdpyinfo | grep --quiet -oh 1440
    then
        sed '1 s/96/128/g' ~/.Xresources > /tmp/xres
        mv /tmp/xres ~/.Xresources
    fi

if xdpyinfo | grep --quiet -oh 1080
    then
        sed '1 s/128/96/g' ~/.Xresources > /tmp/xres
        mv /tmp/xres ~/.Xresources
    fi
        
