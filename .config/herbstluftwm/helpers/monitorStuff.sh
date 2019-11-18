#!/usr/bin/env bash

source $HOME/.config/herbstluftwm/variables
source $HOME/.config/herbstluftwm/helpers/hc.sh

function getActiveMonitorRegion() {
    getMonitorRegion
}

function getMonitorCount() {
    hc list_monitors | wc -l
}

function getMonitorOfWindow() {
    winId="$1"
    eval $(xdotool getwindowgeometry --shell $winId)
    # X, Y, WIDTH, HEIGHT => window coordinates

    X=$(($X + $WIDTH / 2))
    Y=$(($Y + $HEIGHT/ 2))

    while read -r line ; do
        monitorId=$(echo "$line" | cut -d':' -f1)
        monitorName=$(echo "$line" | cut -d' ' -f7)
        if [[ "$monitorName" == "\"$floatingMonitorName\"" ]] ; then
            continue
        fi

        # X, Y => window middle 
        # MonitorX, MonitorY, MonitorWidth, MonitorHeight => monitor coordinates
        eval $(getMonitorRegion $monitorId)
        if [[ $X -lt $(($MonitorX + $MonitorWidth)) && \
            $X -gt $MonitorX && \
            $Y -gt $MonitorY && \
            $Y -lt $(($MonitorY + $MonitorHeight)) ]] ; then
            echo $monitorId
            break
        fi
    done <<< $(hc list_monitors)
}

function getMonitorRegion() {
    monId="$1"
    monRect=$(herbstclient monitor_rect $monId)
    echo MonitorX=$(echo $monRect | cut -d" " -f1)
    echo MonitorY=$(echo $monRect | cut -d" " -f2)
    echo MonitorWidth=$(echo $monRect | cut -d" " -f3)
    echo MonitorHeight=$(echo $monRect | cut -d" " -f4)
}

function shiftWindowToItsMonitor() {
    windowId="$1"
    monitorId="$(getMonitorOfWindow $windowId)"

    echo Shifting $windowId to $monitorId
    
    herbstclient chain , jumpto $windowId , shift_to_monitor $monitorId , jumpto $windowId
}

function shiftWindowToFloatingMonitor() {
    windowId="$1"
    echo Shifting window $windowId to floating monitor
    while read -r line ; do
        monitorId=$(echo "$line" | cut -d':' -f1)
        monitorName=$(echo "$line" | cut -d' ' -f7)
        if [[ "$monitorName" == "\"$floatingMonitorName\"" ]] ; then

            # check if window is in proper area
            eval $(getActiveMonitorRegion)
            herbstclient chain , jumpto $windowId , shift_to_monitor $monitorId
            eval $(xdotool getwindowgeometry --shell $windowId)

            echo $X $Y $WIDTH $HEIGHT
            echo $MonitorX $MonitorY $MonitorWidth $MonitorHeight

            # X, Y, WIDTH, HEIGHT => window coordinates
            # MonitorX, MonitorY, MonitorWidth, MonitorHeight => monitor coordinates
            if [[ $(($X + $WIDTH)) -gt $(($MonitorX + $MonitorWidth)) || \
                $X -lt $MonitorX || \
                $Y -lt $MonitorY || \
                $(($Y + $HEIGHT)) -gt $(($MonitorY + $MonitorHeight)) ]] ; then
                xdotool windowmove --sync $WINDOW $(($MonitorX + $MonitorWidth / 2 - $WIDTH / 2)) $(($MonitorY + $MonitorHeight / 2 - $HEIGHT / 2))
                echo xdotool windowmove --sync $WINDOW $(($MonitorX + $MonitorWidth / 2 - $WIDTH / 2)) $(($MonitorY + $MonitorHeight / 2 - $HEIGHT / 2))
            fi

            herbstclient jumpto $windowId

            break
        fi
    done <<< $(hc list_monitors)
}
