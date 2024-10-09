#!/bin/bash

#  autopowermode.sh
#  Created by Mario Gajardo Tassara --> 29-05-2022 18:54:54
#
#  script for change automatically the energy profile of your asus laptop
#  battery = Quiet, connected = Balanced 
#  finally we setup a nice icon to show in i3blocks
#
#  Copyright (c) 2022 MarioGT Software.
#
#  Permission is hereby granted, free of charge, to any person obtaining a copy
#  of this text and associated documentation files (the "Text"), to deal
#  in the Text without restriction, including without limitation the rights
#  to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
#  copies of the Text, and to permit persons to whom the Software is
#  furnished to do so, subject to the following conditions:
#
#  The above copyright notice and this permission notice shall be included in all
#  copies or substantial portions of the Text.

#  THE TEXT IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
#  IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
#  FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
#  AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
#  LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
#  OUT OF OR IN CONNECTION WITH THE TEXT OR THE USE OR OTHER DEALINGS dtt TEXT.


state=$(acpi -b | awk '{print $3}' | sed s/,//g)

if [ $state = "Discharging" ];
then
  asusctl profile -P Quiet #; brightnessctl -d amdgpu_bl0 set 130 > /dev/null 2>&1
else
  asusctl profile -P Balanced #; brightnessctl -d amdgpu_bl0 set 255 > /dev/null 2>&1
fi

mode=$(echo $(asusctl profile -p | awk -F' ' '{print $4}'))

case $mode in
  ("Balanced")
    echo 👾
    ;;
  ("Performance")
    echo 👹
    ;;
  ("Quiet")
    echo 👽
    ;;
esac
