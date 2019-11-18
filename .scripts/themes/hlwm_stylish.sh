#! /bin/sh

cp ~/.config/herbstluftwm/Stylish-theme/polybar/config /home/lubomir/.config/polybar/ &
sleep 1
cp ~/.config/herbstluftwm/Stylish-theme/qt5ct.conf /home/lubomir/.config/qt5ct/ &
cp ~/.config/herbstluftwm/Stylish-theme/gimprc /home/lubomir/.config/GIMP/2.10/ &
cp ~/.config/herbstluftwm/Stylish-theme/smplayer.ini /home/lubomir/.config/smplayer/ &
cp ~/.config/herbstluftwm/Stylish-theme/Preferences.sublime-settings ~/.config/sublime-text-2/Packages/User/ &
cp ~/.config/herbstluftwm/Stylish-theme/autostart ~/.config/herbstluftwm/ &
#cp ~/.config/herbstluftwm/Stylish-theme/panel.sh /home/lubomir/.config/herbstluftwm/ &
cp ~/.config/herbstluftwm/Stylish-theme/info-hlwm-workspaces.sh /home/lubomir/.config/herbstluftwm/ &
cp ~/.config/herbstluftwm/Stylish-theme/.Xresources /home/lubomir/ &
cp ~/.config/herbstluftwm/Stylish-theme/ROFI.rasi /home/lubomir/.config/rofi/themes/ &
cp ~/.config/herbstluftwm/Stylish-theme/compton.conf /home/lubomir/.config/ &
cp ~/.config/herbstluftwm/Stylish-theme/dunstrc /home/lubomir/.config/dunst/ &
cp ~/.config/herbstluftwm/Stylish-theme/zathurarc /home/lubomir/.config/zathura/ &
cp ~/.config/herbstluftwm/Stylish-theme/.vimrc /home/lubomir/ &

xfconf-query -c xsettings -p /Net/ThemeName -s "Materia-Dark" &
xfconf-query -c xsettings -p /Net/IconThemeName -s "Materia-Dark" &

# theme

herbstclient pad 0 24 0 0

herbstclient attr theme.tiling.reset 1
herbstclient attr theme.floating.reset 1
herbstclient set frame_border_active_color '#2B2B2B'
herbstclient set frame_border_normal_color '#1B1B1B'
herbstclient set frame_bg_normal_color '#7D7D7D'
herbstclient set frame_bg_active_color '#B7B7B7'
herbstclient set frame_active_opacity '50'
herbstclient set frame_normal_opacity '20'
herbstclient set frame_border_width 1
herbstclient set always_show_frame 1
herbstclient set frame_bg_transparent 1
herbstclient set frame_transparent_width 2
herbstclient set frame_gap 6
herbstclient set focus_follows_mouse 0

herbstclient attr theme.active.color '#BABABA'
herbstclient attr theme.normal.color '#454545'
herbstclient attr theme.urgent.color orange
herbstclient attr theme.inner_width 1
herbstclient attr theme.inner_color '#272727'
herbstclient attr theme.border_width 3
herbstclient attr theme.floating.border_width 4
herbstclient attr theme.floating.outer_width 1
herbstclient attr theme.floating.outer_color black
herbstclient attr theme.active.inner_color '#454545'
herbstclient attr theme.active.outer_color '#454545'
herbstclient attr theme.background_color '#141414'

herbstclient set window_gap 0
herbstclient set frame_padding 0
herbstclient set smart_window_surroundings 0
herbstclient set smart_frame_surroundings 1
herbstclient set mouse_recenter_gap 0

sleep 1; xrdb ~/.Xresources &
feh --bg-fill /home/lubomir/Pictures/backgrounds/herbstluftwm-stylish/tapeta2.jpg &
killall compton && sleep 1; compton &
killall dunst; notify-send "restart dunst" &
#killall conky
