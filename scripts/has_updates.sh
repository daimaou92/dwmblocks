#!/bin/sh
V=`command -v yay`
NU=0
if [ -z "$V" ]; then
	NU=`sudo pacman -Sy > /dev/null 2>&1 && sudo pacman -Qu | wc -l`
else
	NU=`yay -Sy > /dev/null 2>&1 && yay -Qu | wc -l`
fi
if [ $NU -gt 0 ]; then
	echo "$NU"
fi
