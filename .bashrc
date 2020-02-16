#
# ~/.bashrc
#

#fortune
#neofetch

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

export LANG=en_US.UTF-8
#export GDK_NATIVE_WINDOWS=0
#export PROMPT_COMMAND="echo -n \[\$(date +%H:%M:%S)\]\ "

user=`cat ~/.accounts | grep -oP '(?<=<user>)[^<]+'`
pass=`cat ~/.accounts | grep -oP '(?<=<pass>)[^<]+'`

#PS1='[\u@\h \W]\$ '
## Datum
#PS1='\[\e[1;33m\]\d \[\e[1;34m\]\w \[\e[1;33m\]>>\[\e[1;0m\] '
PS1='\[\e[1;33m\]\d\[\e[1;37m\]:\[\e[1;34m\]\w\[\e[1;37m\]$\[\e[1;0m\] '
## Sipky
#PS1='\[\e[1;33m\]<<< \[\e[1;34m\]\w\[\e[1;33m\] \[\e[1;33m\]>>>\[\e[1;0m\] '
## Datum + cas
#PS1='\[\e[1;33m\]\D{%d.%m.%Y - %T}\[\e[1;37m\]:\[\e[1;34m\]\w\[\e[1;37m\]$\[\e[1;0m\] '


##  Aliases
alias grep="grep --color=always"
alias ls="ls --color=auto --group-directories-first"
alias ll="ls -laF"
alias rr="reset"
alias p="sudo pacman -Syu"
alias pp="sudo pacman -Ss"
alias y="yay -Syu --aur"
alias yy="yay -Ss"
alias pocasie="curl sk.wttr.in/48.16,17.11"
alias email='curl -u $user:$pass --silent "https://mail.google.com/mail/feed/atom" |  grep -oPm2 "(?<=<title>)[^<]+" | sed '1d''
alias neomutt="env TERM=rxvt-256color neomutt"
alias last-installed="expac --timefmt='%Y-%m-%d %T' '%l\t%n' | sort | tail -n 30"
#alias hc='herbstclient'

##  Powerline
# powerline-daemon -q
# POWERLINE_BASH_CONTINUATION=1
# POWERLINE_BASH_SELECT=1
# . /usr/share/powerline/bindings/bash/powerline.sh
