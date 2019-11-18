#!/bin/bash

bspc rule -a \* -o state=floating && urxvt -geometry 125x44+450+150 -e bash -c 'curl sk.wttr.in/48.16,17.11; \
echo -e "\n\e[1;33mPress ENTER to exit:\e[0m"; read'
