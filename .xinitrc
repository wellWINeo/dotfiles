#!/bin/sh

xrdb $HOME/.Xresources

# screenlock and suspend
xautolock -detectsleep \
    -time 3 -locker $HOME/.local/bin/lock -resetsaver \
    -killtime 10 -killer "loginctl suspend" &

setxkbmap -layout us,ru -option grp:caps_toggle
syndaemon -t -i 2 -d
export LC_ALL="en_US.utf8"
#exec dbus-launch i3;
exec dbus-launch bspwm;
#exec i3;
#xrdb /home/o__ni/.Xresources


