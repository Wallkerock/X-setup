#! /bin/sh

cp ~/.config/herbstluftwm/LightBug-theme/polybar/config /home/lubomir/.config/polybar/ &
sleep 1
cp ~/.config/herbstluftwm/LightBug-theme/qt5ct.conf /home/lubomir/.config/qt5ct/ &
cp ~/.config/herbstluftwm/LightBug-theme/gimprc /home/lubomir/.config/GIMP/2.10/ &
cp ~/.config/herbstluftwm/LightBug-theme/smplayer.ini /home/lubomir/.config/smplayer/ &
cp ~/.config/herbstluftwm/LightBug-theme/Preferences.sublime-settings ~/.config/sublime-text-2/Packages/User/ &
cp ~/.config/herbstluftwm/LightBug-theme/autostart ~/.config/herbstluftwm/ &
#cp ~/.config/herbstluftwm/LightBug-theme/panel.sh /home/lubomir/.config/herbstluftwm/ &
cp ~/.config/herbstluftwm/LightBug-theme/info-hlwm-workspaces.sh /home/lubomir/.config/herbstluftwm/ &
cp ~/.config/herbstluftwm/LightBug-theme/.Xresources /home/lubomir/ &
cp ~/.config/herbstluftwm/LightBug-theme/ROFI.rasi /home/lubomir/.config/rofi/themes/ &
cp ~/.config/herbstluftwm/LightBug-theme/compton.conf /home/lubomir/.config/ &
cp ~/.config/herbstluftwm/LightBug-theme/dunstrc /home/lubomir/.config/dunst/ &
cp ~/.config/herbstluftwm/LightBug-theme/zathurarc /home/lubomir/.config/zathura/ &
cp ~/.config/herbstluftwm/LightBug-theme/.vimrc /home/lubomir/ &

feh --bg-fill /home/lubomir/Pictures/backgrounds/openbox-lightbug.png &

xfconf-query -c xsettings -p /Net/ThemeName -s "Materia-Dark" &
xfconf-query -c xsettings -p /Net/IconThemeName -s "Materia-Dark" &

# theme

herbstclient pad 0 24 0 0

herbstclient attr theme.tiling.reset 1
herbstclient attr theme.floating.reset 1
herbstclient set frame_border_active_color '#222222'
herbstclient set frame_border_normal_color '#1B1B1B'
#herbstclient set frame_bg_normal_color '#464646'
herbstclient set frame_bg_normal_color '#454545'
#herbstclient set frame_bg_active_color '#25448A'
herbstclient set frame_bg_active_color '#A8842E'
herbstclient set frame_border_width 1
herbstclient set always_show_frame 1
herbstclient set frame_bg_transparent 1
herbstclient set frame_transparent_width 2
herbstclient set frame_gap 6
herbstclient set focus_follows_mouse 0

herbstclient attr theme.active.color '#CC9100'
herbstclient attr theme.normal.color '#454545'
herbstclient attr theme.urgent.color orange
herbstclient attr theme.inner_width 1
herbstclient attr theme.inner_color '#151515'
herbstclient attr theme.border_width 3
herbstclient attr theme.floating.border_width 4
herbstclient attr theme.floating.outer_width 1
herbstclient attr theme.floating.outer_color black
herbstclient attr theme.active.inner_color '#775400'
herbstclient attr theme.active.outer_color '#775400'
herbstclient attr theme.background_color '#141414'

herbstclient set window_gap 0
herbstclient set frame_padding 0
herbstclient set smart_window_surroundings 0
herbstclient set smart_frame_surroundings 1
herbstclient set mouse_recenter_gap 0

sleep 1; xrdb ~/.Xresources &
killall compton && sleep 1; compton &
killall dunst; notify-send "restart dunst" &
#killall conky
