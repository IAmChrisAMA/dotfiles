#!/usr/bin/env zsh

# kill all instances of an application
[[ -z "$@" ]] && exit

application_name="$(echo "$1" | awk '{print tolower($0)}')"
ps aux | grep "$application_name"  | grep -v 'grep' |  awk '{print $2}' | while read process; do 
  kill -9 "$process"
done
