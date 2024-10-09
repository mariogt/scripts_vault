#!/bin/bash
# Created by Mario Gajardo Tassara

killall insync
awk '/^Exec=/ {sub("^Exec=", ""); gsub(" ?%[cDdFfikmNnUuv]", ""); exit system($0)}' ~/.config/autostart/insync.desktop
