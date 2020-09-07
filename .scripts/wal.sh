#!/bin/sh

while [ true ]
do
	#!bin/bash
	DIR="/home/$USER/Pictures/Wallpapers"
	PIC=$(ls $DIR/*) # shuf
	wal -i ~/Pictures/Wallpapers
	#python3 ~/.scripts/razer-cli/razer-cli.py -e ripple -a
	sleep 60
done
