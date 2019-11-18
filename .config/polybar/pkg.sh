#!/bin/bash

pac=$(checkupdates | wc -l)
aur=$(cower -u | wc -l)

check=$((pac + aur))
if [[ "$check" > "0" ]]
then
    echo %{F#FFA500} pac: $pac %{F#FFA500}%{F#FFA500}aur: $aur
fi

exit 0
