#! /usr/bin/env zsh

[[ ! "$1" ]] && echo './yt-rss-grab.sh [url]' && exit

ID=$(wget $1 -O - -q | grep -o -P '(channelId" content=.{0,25})' | cut -c 21-100)

#----------------------#

echo "https://www.youtube.com/feeds/videos.xml?channel_id=$ID"
exit

#----------------------#
