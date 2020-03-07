#! /bin/sh

USER=`cat ~/.accounts | grep -oP '(?<=<user>)[^<]+'`
PASS=`cat ~/.accounts | grep -oP '(?<=<pass>)[^<]+'`

LOAD=`curl -su $USER:$PASS https://mail.google.com/mail/feed/atom || echo "<fullcount>off</fullcount>"`
COUNT=`echo "$LOAD" | grep -oPm2 "(?<=<fullcount>)[^<]+" `
WHO=`echo "$LOAD" | grep -oPm2 "(?<=<email>)[^<]+" `
TITLE=`echo "$LOAD" | grep -oPm2 "(?<=<title>)[^<]+" | sed '1d' `

UNREAD=`cat ~/.unread`

echo $COUNT > ~/.unread

####################
### POLYBAR PART ###
####################

# echo $COUNT
if [ $COUNT = "0" ]; then
    echo ""
elif [ $COUNT = "off" ]; then
    echo ""
fi

if [ $COUNT -gt "0" ]; then
    echo %{F#15FF00}"mail: $COUNT"%{F-};
else
    echo %{F#15FF00}"mails: $COUNT"%{F-};
fi

###################
### NOTIFY PART ###
###################

if [ "$COUNT" -gt "$UNREAD" ]; then
    if [ "$COUNT" != "0" ]; then
        if [ "$COUNT" != "off" ]; then
            if [ "$COUNT" = "1" ]; then
                WORD="new mail";
            else
                WORD="new mails";
            fi
                notify-send --urgency=normal "$WORD:  $COUNT" "$TITLE" & paplay /usr/share/sounds/freedesktop/stereo/message.oga;
        fi
    fi
fi

