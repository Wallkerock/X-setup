#!/bin/bash
# mocp playing song script
maxlen=${BLOCK_INSTANCE:-30}
full_text="MOC not running!"
short_text="$full_text"
color="#505050"
if [[ ! -z $(pidof mocp) ]]
then
full_text="$(mocp -i -Q "%state%song (%artist)" | tail -n 1 | sed -e 's/PLAY//' -e 's/PAUSE//' -e 's/STOP//')"
short_text="${full_text:0:$maxlen}"
color="#90A959"
fi
echo "$short_text"
echo "$full_text"
echo "$color"
case $BLOCK_BUTTON in
1) mocp -r ;; # left click = previous song
2) mocp -G ;; # middle click = toggle pause - play
3) mocp -f ;; # right click = next song
esac
exit 0
