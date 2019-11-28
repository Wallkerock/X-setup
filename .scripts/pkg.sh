#!/bin/bash

pac=$(checkupdates | wc -l)
aur=$(cower -u | wc -l)

check=$((pac + aur))
if [[ "$check" > "0" ]]
then
    echo %{F#E3E3E3} pac: $pac %{F#E3E3E3}%{F#E3E3E3}aur: $aur
fi

exit 0
