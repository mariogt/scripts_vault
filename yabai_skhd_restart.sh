#!/bin/bash

yabai --stop-service &> /dev/null
killall yabai &> /dev/null
yabai --start-service &> /dev/null &

killall skhd &> /dev/null
skhd &> /dev/null &
