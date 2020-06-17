##!/bin/sh
vol=$(amixer get Master | grep "Front Left: Playback" | awk '{print $5}' | sed 's/[^0-9]*//g')
mute=$(amixer get Master | grep "Front Left: Playback" | awk '{print $6}' | sed 's/[^a-z]*//g')
headphones=$(cat /proc/asound/card0/codec\#0 | grep "Pin-ctls: 0x40:" | wc -l)
label(){
	lbl="🔊"
	if [ "$mute" = "off" ]; then
		lbl="🔇"
  elif [ "$headphones" = 1 ]; then
    lbl="🎧"
  fi
  echo "$lbl"
}

echo "$(label) $vol%"
