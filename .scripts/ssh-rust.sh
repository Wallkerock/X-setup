#!/bin/sh

LOAD=`ps ax | grep 'sshd: lubomir'`
COUNT=`echo "$LOAD" | wc -l`

SSH=`cat ~/.ssh-file`



if [ $COUNT -gt "1" ]; then
    echo "SSH ACTIVE"
    if [ $SSH != "0" ]; then
        notify-send --urgency=normal "SSH:" "SSH activity ON!" & paplay /usr/share/sounds/freedesktop/stereo/message.oga;
        echo 0 > ~/.ssh-file
    fi
fi

if [ $COUNT = "1" ]; then
    echo ""
    if [ $SSH = "0"  ]; then
        notify-send --urgency=normal "SSH:" "SSH activity OFF!" & paplay /usr/share/sounds/freedesktop/stereo/message.oga;
        echo 1 > ~/.ssh-file
    fi
fi

