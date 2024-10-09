#!/bin/bash
# Created by Mario Gajardo Tassara

#xrandr --output DP-1 --auto --right-of eDP-1
#xrandr --output DP-1 --mode 2560x1440

xrandr --output eDP --mode 2560x1440 --noprimary --left-of DP-1-0
xrandr --output DP-1-0 --mode 3840x2160 --primary

#xrandr --output eDP-1 --mode 1920x1080 --pos 0x360 --rotate normal --output DP-1 --primary --mode 2560x1440 --pos 1920x0 --rotate normal --output DP-2 --off --output DP-3 --off

echo "Dell monitor ready for the mighty i3"
