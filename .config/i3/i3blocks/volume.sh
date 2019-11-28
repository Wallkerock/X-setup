#! /bin/sh

vol=`amixer -D pulse get Master | grep '%' | head -n 1 | cut -d '[' -f 2 | cut -d '%' -f 1`


bar=$(seq -s '' $(($vol/5)) | sed 's/[0-9]/━/g')
~/.scripts/volume-notification/notify-send.sh "  ""$bar" "  ""ALSA Master:  [$vol]" -i "$icon_name" -t 2000 -h int:value:"$vol" -h string:synchronous:"$bar" --replace=555
