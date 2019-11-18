#!/bin/bash

# Panel for herbstluftwm using dzen2
 
## dzen stuff
FG='#CCCCCC'
FGS='#FFBC00'
BG='#282828'
#FONT="Iosevka:bold:size=10"
FONT="-misc-fixed-medium-*-*-*-14-*-*-*-*-*-*-*"
#FONT="-xos4-terminesspowerline-medium-r-normal--12-120-72-72-c-60-iso10646-1"
 
#monitor=$@
monitor=${1:-0}

rect="$(herbstclient monitor_rect $monitor)"
xoff=$(echo $rect | awk '{print $1}')
yoff=0
width=$(echo $rect | awk '{print $3}')
height=$(echo $rect | awk '{print $2}')

function uniq_linebuffered() {
   awk '$0 != l { print ; l=$0 ; fflush(); }' "$@"
}
 
{
   conky -c ~/.config/herbstluftwm/statusbar | while read -r; do
      echo -e "conky $REPLY";
     
   done > >(uniq_linebuffered) &
   childpid=$!
   herbstclient --idle
   kill $childpid
} | {
   TAGS=( $(herbstclient tag_status $monitor) )
      conky=""
      separator="^fg(#282828)^ro(1x16)^fg()"
      while true; do
         for i in "${TAGS[@]}"; do
            echo -n "^ca(1,herbstclient use ${i:1}) "
            case ${i:0:1} in
            '#')
               echo -n "^fg(#516FE2)[^fg(#FFC530)${i:1}^fg(#516FE2)]"
               ;;
            '%')
               echo -n "^fg(#516FE2)(^fg(#FFC530)${i:1}^fg(#516FE2))"
               ;;
            '+')
               echo -n "^fg(#516FE2)[^fg(#CCCCCC)${i:1}^fg(#516FE2)]"
               ;;
            '-')
               echo -n "^fg(#516FE2)(^fg(#CCCCCC)${i:1}^fg(#516FE2))"
               ;;
            ':')
               echo -n "^fg(#CCCCCC) ${i:1} "
               ;;
            *)
               echo -n "^fg(#516FE2) ${i:1} "
               ;;
            esac
            echo -n "^ca()"
        done
        echo -n " $separator"
        conky_text_only=$(echo -n "$conky "|sed 's.\^[^(]*([^)]*)..g')
        width=$(textwidth "$FONT" "$conky_text_only  ")
        echo -n "^p(_RIGHT)^p(-$width)$conky"
        echo
        read line || break
        cmd=( $line )
   case "$cmd[0]" in
               tag*)
                  TAGS=( $(herbstclient tag_status $monitor) )
                  ;;
               conky*)
                  conky="${cmd[@]:1}"
                  ;;
               esac
     done
} 2> /dev/null |dzen2 -ta l -y $yoff -x $xoff -h $height -w $width -fg $FG -bg $BG -fn $FONT &
