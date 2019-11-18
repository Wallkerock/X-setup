#! /bin/sh

user=`cat ~/.accounts | grep -oP '(?<=<user>)[^<]+'`
pass=`cat ~/.accounts | grep -oP '(?<=<pass>)[^<]+'`

LOAD=`curl -u $user:$pass --silent "https://mail.google.com/mail/feed/atom"`
COUNT=`echo "$LOAD" | grep -oPm2 "(?<=<fullcount>)[^<]+" `
WHO=`echo "$LOAD" | grep -oPm2 "(?<=<email>)[^<]+" `
HEAD=`echo "$LOAD" | grep -oPm2 "(?<=<title>)[^<]+" | sed '1d' `
#HEAD=`echo "$LOAD" | grep -oPm2 "(?<=<title>)[^<]+" | sed -e 's/^/- /' `

echo $COUNT
#echo $WHO
echo $HEAD
if [ "$LOAD" ];then
	if [ "$COUNT" = "1" ];then
	    WORD="unread mail";
	else
	    WORD="unread mails";
	fi
	    notify-send --urgency=normal "$WORD:  $COUNT" "$HEAD"
fi
