#!/bin/bash
export DISPLAY=:0.0
export XAUTHORITY=/home/${USER}/.Xauthority

packages=$(checkupdates | wc -l)
AUR=$(yay -Qum -u | wc -l)
#AUR=$(cower -u | wc -l)

notify-send --urgency=normal "System update: $packages"
notify-send --urgency=normal "AUR update: $AUR"
