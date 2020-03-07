#! /bin/sh

cp ~/.config/bspwm/Bspwm-Matcha/polybar/config /home/lubomir/.config/polybar/ &
cp ~/.config/bspwm/Bspwm-Matcha/polybar/launch.sh /home/lubomir/.config/polybar/ &
sleep 1
cp ~/.config/bspwm/Bspwm-Matcha/bspwmrc /home/lubomir/.config/bspwm/ &
cp ~/.config/bspwm/Bspwm-Matcha/sxhkdrc /home/lubomir/.config/sxhkd/ &
cp ~/.config/bspwm/Bspwm-Matcha/qt5ct.conf /home/lubomir/.config/qt5ct/ &
cp ~/.config/bspwm/Bspwm-Matcha/gimprc /home/lubomir/.config/GIMP/2.10/ &
#cp ~/.config/bspwm/Bspwm-Matcha/smplayer.ini /home/lubomir/.config/smplayer/ &
cp ~/.config/bspwm/Bspwm-Matcha/Preferences.sublime-settings ~/.config/sublime-text-2/Packages/User/ &
cp ~/.config/bspwm/Bspwm-Matcha/JSON.sublime-settings ~/.config/sublime-text-2/Packages/User/ &
cp ~/.config/bspwm/Bspwm-Matcha/.Xresources /home/lubomir/ &
cp ~/.config/bspwm/Bspwm-Matcha/.vimrc /home/lubomir/ &
cp ~/.config/bspwm/Bspwm-Matcha/ROFI.rasi /home/lubomir/.config/rofi/themes/ &
cp ~/.config/bspwm/Bspwm-Matcha/picom.conf /home/lubomir/.config/ &
cp ~/.config/bspwm/Bspwm-Matcha/dunstrc /home/lubomir/.config/dunst/ &
cp ~/.config/bspwm/Bspwm-Matcha/zathurarc /home/lubomir/.config/zathura/ &
cp ~/.config/bspwm/Bspwm-Matcha/termite/config /home/lubomir/.config/termite/ &

sed -i 's/iconset=.*/iconset=PapirusDark/g' ~/.config/smplayer/smplayer.ini &

#feh --bg-fill /home/lubomir/Pictures/backgrounds/bspwm-matcha/nature.jpg &
feh --bg-fill /home/lubomir/Pictures/backgrounds/blackcat.jpg &

xfconf-query -c xsettings -p /Net/ThemeName -s "Matcha-dark-sea" &
xfconf-query -c xsettings -p /Net/IconThemeName -s "Vibrancy-Full-Dark-Teal" &
xfconf-query -c xsettings -p /Gtk/FontName -s "Roboto Regular 10" &

###############
bspc monitor HDMI3 -d 1 2 3 4 5 6 7 8 9

bspc config border_width         2
bspc config window_gap           6

bspc config automatic_scheme alternate
bspc config initial_polarity second_child

#bspc config automatic_scheme spiral
#bspc config initial_polarity first_child

bspc config split_ratio 0.50
bspc config gapless_monocle true
bspc config single_monocle false

bspc config focused_border_color            "#2EB398"
bspc config normal_border_color             "#2E373B"

bspc config presel_feedback_color           "#2EB398"
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
