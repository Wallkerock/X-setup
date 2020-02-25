#!/bin/sh

#IP=`curl -sf ifconfig.co || echo %{F#777979}"ip unknown"%{F-}`

IP=`curl -sf ipinfo.io/ip || echo %{F#777979}"ip unknown"%{F-}`

if [ "$IP" ]; then
    echo "$IP"
fi
