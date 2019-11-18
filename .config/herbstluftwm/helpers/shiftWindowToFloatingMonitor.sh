#!/usr/bin/env bash

source $HOME/.config/herbstluftwm/helpers/monitorStuff.sh

echo $@
shiftWindowToFloatingMonitor "$1"
