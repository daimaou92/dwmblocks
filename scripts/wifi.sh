#!/bin/sh
ssid="$(nmcli connection show --active | grep 'wifi' | awk '{print $1}')"
if [ -z "$ssid" ]; then
	exit 0
fi
wifistatus="$(nmcli networking connectivity check)"
echo "$ssid [$wifistatus]"
