#! /bin/bash

#if xdo id -a "$PANEL_WM_NAME" > /dev/null ; then
#        printf "%s\n" "The panel is already running." >&2
#        exit 1
#fi

trap 'trap - TERM; kill 0' INT TERM QUIT EXIT


. panel_colors

[ -e "$PANEL_FIFO" ] && rm "$PANEL_FIFO"
mkfifo "$PANEL_FIFO"

function battery_state() {
if [ "$(cat /sys/class/power_supply/BAT1/status)" = "Charging" ]; then
	echo "Charging"
else
        while true
        do
                bat=$(cat /sys/class/power_supply/BAT1/capacity)
                echo "B${bat}%"
                sleep 30
        done < <(echo)
fi
}

function gmail() {
	email="$(pass EMAIL/gmail.com | awk -F': ' '/login:/{print $2}')"
	passw="$(pass EMAIL/gmail.com | head -1)"
	while true
	do
		inbox_count=$(wget -q -O- --auth-no-challenge --user=${email} --password=${passw} 'https://mail.google.com/mail/feed/atom' | \
		 awk -F'<\/?fullcount>' '{print $2}' 2&> /dev/null)
		echo "G $inbox_count"
		sleep 60
	done
}

function weather() {
	while true
	do
		weather_stat=$($HOME/.config/scripts/./weather-yr.sh)
		echo "F^fn(Meiryo:size=7)$weather_stat^fn()"
		sleep 900
	done
}

function tid() {
	while true
	do
		klocka=$(date +'%H:%M')
		echo "C$klocka"
		sleep 10
	done < <(echo)
}

function datum() {
	while true
	do
		_datum=$(date +'%a %d %B')
		echo "D$_datum"
		sleep 60
	done < <(echo)
}

bspc subscribe report > "$PANEL_FIFO" &
xtitle -sf "T%s" > "$PANEL_FIFO" &
weather > "$PANEL_FIFO" &
battery_state > "$PANEL_FIFO" &
gmail > "$PANEL_FIFO" &
tid > "$PANEL_FIFO" &
datum > "$PANEL_FIFO" &

  PANEL_HEIGHT=19
  PANEL_FONT_FAMILY='PragmataPro,Meiryo'
  PANEL_FONT_SIZE=10

cat "$PANEL_FIFO" | panel_dzen2 -f "$PANEL_FONT_FAMILY" -s "$PANEL_FONT_SIZE" -F \
"$PANEL_ICONS_FONT_FAMILY" -S "$PANEL_ICONS_FONT_SIZE" | dzen2 -h $PANEL_HEIGHT \
-ta l -title-name panel -fn "${PANEL_FONT_FAMILY}:pixelsize=${PANEL_FONT_SIZE}" -fg \
"$COLOR_FOREGROUND" -bg "$COLOR_BACKGROUND"
