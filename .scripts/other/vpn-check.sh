#!/usr/bin/env zsh

function yes() { echo "You are connected to VPN." }
function no() { echo "You are NOT connected to VPN!" }

[[ "$(wget https://www.privateinternetaccess.com -O - -q | grep 'You are protected by PIA' | cut -c 42-65)" ]] && yes || no

exit
