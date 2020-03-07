#! /bin/sh

cp ~/.config/bspwm/Bspwm-Materia/polybar/config /home/lubomir/.config/polybar/ &
cp ~/.config/bspwm/Bspwm-Materia/polybar/launch.sh /home/lubomir/.config/polybar/ &
sleep 1
cp ~/.config/bspwm/Bspwm-Materia/bspwmrc /home/lubomir/.config/bspwm/ &
cp ~/.config/bspwm/Bspwm-Materia/sxhkdrc /home/lubomir/.config/sxhkd/ &
cp ~/.config/bspwm/Bspwm-Materia/qt5ct.conf /home/lubomir/.config/qt5ct/ &
cp ~/.config/bspwm/Bspwm-Materia/gimprc /home/lubomir/.config/GIMP/2.10/ &
#cp ~/.config/bspwm/Bspwm-Materia/smplayer.ini /home/lubomir/.config/smplayer/ &
cp ~/.config/bspwm/Bspwm-Materia/Preferences.sublime-settings ~/.config/sublime-text-2/Packages/User/ &
cp ~/.config/bspwm/Bspwm-Materia/JSON.sublime-settings ~/.config/sublime-text-2/Packages/User/ &
cp ~/.config/bspwm/Bspwm-Materia/.Xresources /home/lubomir/ &
cp ~/.config/bspwm/Bspwm-Materia/.vimrc /home/lubomir/ &
cp ~/.config/bspwm/Bspwm-Materia/ROFI.rasi /home/lubomir/.config/rofi/themes/ &
cp ~/.config/bspwm/Bspwm-Materia/picom.conf /home/lubomir/.config/ &
cp ~/.config/bspwm/Bspwm-Materia/dunstrc /home/lubomir/.config/dunst/ &
cp ~/.config/bspwm/Bspwm-Materia/zathurarc /home/lubomir/.config/zathura/ &
cp ~/.config/bspwm/Bspwm-Materia/termite/config /home/lubomir/.config/termite/ &

sed -i 's/iconset=.*/iconset=PapirusDark/g' ~/.config/smplayer/smplayer.ini &

feh --bg-fill /home/lubomir/Pictures/backgrounds/bspwm-materia/tapeta3.jpg &

xfconf-query -c xsettings -p /Net/ThemeName -s "Materia-Manjaro-Dark" &
xfconf-query -c xsettings -p /Net/IconThemeName -s "Green-Numix-5" &
xfconf-query -c xsettings -p /Gtk/FontName -s "Roboto Regular 10" &

bspc config border_width         2
bspc config window_gap           10

bspc config automatic_scheme alternate
bspc config initial_polarity second_child

bspc config gapless_monocle true
bspc config single_monocle false

bspc config focused_border_color            "#008074"
bspc config normal_border_color             "#494949"

bspc config presel_feedback_color           "#008074"
bspc config window_gap                      "#bspwm_window_gap"

bspc config top_padding         25
bspc config right_padding       0
bspc config bottom_padding      0
bspc config left_padding        0

sleep 1; xrdb ~/.Xresources &
#killall -q polybar &
#pulseaudio -k &
killall sxhkd && sleep 1; sxhkd &
killall picom && sleep 1; picom -b &
killall dunst; notify-send "restart dunst" &
