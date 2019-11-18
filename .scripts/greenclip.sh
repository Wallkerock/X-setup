#!/bin/sh

pkill greenclip && sleep 1; greenclip daemon &
sleep 1; greenclip clear &

