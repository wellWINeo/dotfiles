#!/bin/bash
 
killall -q fullbar

while pgrep -u $UID -x polybar > /dev/null; do sleep 1; done

polybar fullbar &

echo "Polybar started..."

