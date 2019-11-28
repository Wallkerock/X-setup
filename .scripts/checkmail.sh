#!/bin/bash

i3status | while :
do
    read line
    gmail=`perl gmail.pl`
    echo "GMAIL $gmail | $line" || exit 1
done
