#! /bin/sh

wid=$1
class=$2
instance=$3
title=$(xtitle "$wid")

#place floating windows
floats=$(bspc query -T -w | grep " f"| wc -l)
xdotool windowmove --sync $wid $(( 10 + 10 * floats )) $(( 20 + 20 * floats ))

if [ "$instance" = Pidgin ] ; then
    case "$title" in
        buddy_list|Buddy-Liste)
            echo "floating = on"
            xdotool windowmove --sync $wid 0 0
            ;;
    esac
    echo $title >> /tmp/windows
fi
