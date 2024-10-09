#!/bin/bash

#  Created by Mario Gajardo Tassara --> 29-05-2022 18:51:07
#
#  return date and time, 
#  when clicked with the central mouse button redirect you to google calendar
#
#  Copyright (c) 2023 MarioGT Software.


date '+%d-%m-%Y - %H:%M'

# mouse click with the central button
if [[ "${BLOCK_BUTTON}" -eq 2 ]];
then
  brave-browser https://calendar.google.com/calendar/u/0/r?pli=1
  #firefox --new-tab https://calendar.google.com/calendar/u/0/r?pli=1
fi
