#! /bin/bash

font_family='roboto'
font_size=12
icons_font_family="FontAwesome"
icons_font_size="13"

. panel_colors

adaptive_centering=0
screen_width=$(sres -W)
NORMIFS=$IFS
FIELDIFS=':'
PADDING=' '

while getopts 'af:s:F:S:' opt ; do
    case "$opt" in
        a)
            adaptive_centering=1
            ;;
        f)
            font_family=$OPTARG
            ;;
        s)
            font_size=$OPTARG
            ;;
        F)
            icons_font_family=$OPTARG
            ;;
        S)
            icons_font_size=$OPTARG
            ;;
    esac
done

shift $((OPTIND - 1))

while read -r line ; do
    case $line in
        C*)
            # system informations
            sys_clock="${PADDING}^fn(FontAwesome:size=10)^fn()^fg($COLOR_STATUS_ACTIVE_FG)^bg($COLOR_STATUS_BG)^ca(1, bspc wm --toggle-visibility)${PADDING}${line#?}${PADDING}^ca()^fg()^bg()${PADDING}"
            ;;
        B*)
            # battery informations
            bat_info="${PADDING}^fn(FontAwesome:size=10)^fn()^fg($COLOR_STATUS_ACTIVE_FG)^bg($COLOR_STATUS_BG)^ca(1, bspc wm --toggle-visibility)${PADDING}${line#?}${PADDING}^ca()^fg()^bg()${PADDING}"
            ;;
        D*)
            # system informations
            sys_date="${PADDING}^fn(FontAwesome:size=8)^fn()^fg($COLOR_STATUS_ACTIVE_FG)^bg($COLOR_STATUS_BG)^ca(1, bspc wm --toggle-visibility)${PADDING}${line#?}${PADDING}^ca()^fg()^bg()${PADDING}"
            ;;
        #V*)
        #    set -- ${line#?}
        #    FG=$COLOR_STATUS_ACTIVE_FG
        #    state=$1
        #    level=$2
        #    case $state in
        #        off)
        #            icon_state=Y
        #            FG=$COLOR_STATUS_INACTIVE_FG
        #            ;;
        #        on)
        #            if [ $level -lt 33 ] ; then
        #                icon_state=A
        #            elif [ $level -lt 66 ] ; then
        #                icon_state=B
        #            else
        #                icon_state=C
        #            fi
        #            ;;
        #    esac
        #    sys_volume="^fg($FG)^bg($COLOR_STATUS_BG)${PADDING}^fn(${icons_font_family}:pixelsize=${icons_font_size})${icon_state}^fn()${PADDING}^fg()^bg()"
        #    ;;
     	F*)
 #           weather_infos="^fg($COLOR_STATUS_ACTIVE_FG)^bg($COLOR_STATUS_BG)^ca(1, bspc control --toggle-visibility)${PADDING}${line#?}${PADDING}^ca()^fg()^bg()${PADDING}${PADDING}"
			;;
     	G*)
 #           inbox="^fn(FontAwesome:size=8)^fn()^fg($COLOR_STATUS_ACTIVE_FG)^bg($COLOR_STATUS_BG)^ca(1, exec geary)${line#?}${PADDING}^ca()^fg()^bg()${PADDING}${PADDING}"
			;;
	T*)
            # focused window title
            title="^fg($COLOR_TITLE_FG)^bg($COLOR_TITLE_BG)^ca(1, bspc window -t floating)^ca(2, bspc window -t locked)^ca(3, bspc window -c)${PADDING}${line#?}${PADDING}^ca()^ca()^ca()"
            ;;
        W*)
            wm_infos="$PADDING"
            IFS=$FIELDIFS
            set -- ${line#?}
            while [ $# -gt 0 ] ; do
                item=$1
                name=${item#?}
                case $item in
                    [OoFfUu]*)
                        font_style=Regular
                        case $item in
                            O*)
                                FG=$COLOR_FOCUSED_OCCUPIED_FG
                                BG=$COLOR_FOCUSED_OCCUPIED_BG
                                #font_style=Bold
                                ;;
                            F*)
                                FG=$COLOR_FOCUSED_FREE_FG
                                BG=$COLOR_FOCUSED_FREE_BG
                                ;;
                            U*)
                                FG=$COLOR_FOCUSED_URGENT_FG
                                BG=$COLOR_FOCUSED_URGENT_BG
                                #font_style=Bold
                                ;;
                            o*)
                                FG=$COLOR_OCUPPIED_FG
                                BG=$COLOR_OCUPPIED_BG
                                #font_style=Bold
                                ;;
                            f*)
                                FG=$COLOR_FREE_FG
                                BG=$COLOR_FREE_BG
                                ;;
                            u*)
                                FG=$COLOR_URGENT_FG
                                BG=$COLOR_URGENT_BG
                                #font_style=Bold
                                ;;
                        esac
#                        wm_infos="${wm_infos}^fg(${FG})^bg(${BG})^ca(1, bspc desktop -f ${name})${PADDING}^fn(${font_family}:pixelsize=${font_size}:style=${font_style})${name}^fn()${PADDING}^ca()"
                        wm_infos="${wm_infos}^fg(${FG})^bg(${BG})^ca(1, bspc desktop -f ${name})${PADDING}^fn(FontAwesome:pixelsize=${font_size}:style=${font_style})${name}^fn()${PADDING}^ca()"
                        ;;
                    L*)
                        case $name in
                            tiled)
                                icon_state=T
                                ;;
                            monocle)
                                icon_state=M
                                ;;
                        esac
                        wm_infos="${wm_infos}^fg()^bg()${PADDING}${PADDING}^fg($COLOR_LAYOUT_FG)^bg($COLOR_LAYOUT_BG)${PADDING}^fn(${icons_font_family}:pixelsize=${icons_font_size})${icon_state}^fn()^fg()^bg()"
                        ;;
                esac
                shift
            done
         	IFS=$NORMIFS
            ;;
    esac

    sys_infos="${PADDING}${bat_info}${inbox}${sys_date}${sys_clock}"
   # sys_infos="${weather_infos}${sys_volume}${sys_clock}${PADDING}"
    set -- $(printf '%s\0%s\0%s' "$wm_infos" "$title" "$sys_infos" | sed 's/\^fn()/\\)/g; s/\^fn([^)]\+)/\\(/g; s/\^[a-z]\+([^)]*)//g' | xargs -0 txtw -f "$font_family" -s "$font_size" -F "FontAwesome" -S "14")
    left_width=$1
    center_width=$2
    right_width=$3
    left_indent=0
    right_indent=$((screen_width - right_width))
    available_center=$((screen_width - (left_width + right_width)))
    if [ $available_center -lt $center_width ] ; then
        center_indent=$((left_indent + left_width))
    else
        if [ $adaptive_centering -eq 1 ] ; then
            center_indent=$((left_width + (available_center - center_width) / 2))
        else
            center_indent=$(( (screen_width - center_width) / 2 ))
        fi
    fi
    printf "%s\n" "^pa($center_indent)$title^pa($left_indent)$wm_infos^pa($right_indent)$sys_infos"
done
