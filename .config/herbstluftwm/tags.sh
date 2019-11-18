#!/bin/bash
# vim: set fileencoding=utf-8 ts=4 sts=4 sw=4 tw=80 expandtab :
# Florian Bruhin <me@the-compiler.org>

dzen_fg="#d0d0d0"
dzen_bg="#101010"
normal_fg=""
normal_bg=
viewed_fg="#000000"
viewed_bg="#afdf87"
urgent_fg=
urgent_bg="#df8787"
used_fg="#afdf87"
used_bg=

herbstclient --idle 2>/dev/null | {
    tags=( $(herbstclient tag_status) )
    while true; do
        for tag in "${tags[@]}" ; do
            case ${tag:0:1} in
                '#') cstart="^fg($viewed_fg)^bg($viewed_bg)" ;;
                '+') cstart="^fg($viewed_fg)^bg($viewed_bg)" ;;
                ':') cstart="^fg($used_fg)^bg($used_bg)"     ;;
                '!') cstart="^fg($urgent_fg)^bg($urgent_bg)" ;;
                *)   cstart=''                               ;;
            esac
            dzenstring="${cstart}^ca(1,herbstclient use ${tag:1}) ${tag:1} "
            dzenstring+="^ca()^fg()^bg()"
            echo -n "$dzenstring"
        done
        echo 
        read hook || exit
        case "$hook" in
            tag*) tags=( $(herbstclient tag_status) ) ;;
            quit_panel*) exit ;;
        esac
    done
} | dzen2 -h 23 -fn '-*-profont-*-*-*-*-11-*-*-*-*-*-*-*' -ta l -sa l \
          -w 162 -fg "$dzen_fg" -bg "$dzen_bg" -e 'button3='