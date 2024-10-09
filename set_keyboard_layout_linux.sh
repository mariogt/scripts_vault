#!/bin/bash

# set local layout
(setxkbmap -query | grep -q "layout:\s\+latam") && setxkbmap es || setxkbmap latam

# set key repetition velocity/rate
xset r rate 200 40
