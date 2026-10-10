#!/bin/sh
# Start D-Bus session
if [ -z "$DBUS_SESSION_BUS_ADDRESS" ]; then
	eval $(dbus-launch --sh-syntax --exit-with-session)
fi
~/.config/wallpaper/wallpaper.sh &
setxkbmap -layout ch -variant nodeadkeys &
exec dwm
