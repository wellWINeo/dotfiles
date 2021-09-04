#!/bin/bash
 
killall -q main 

while pgrep -u $UID -x polybar > /dev/null; do sleep 1; done

polybar main &

echo "Polybar started..."

