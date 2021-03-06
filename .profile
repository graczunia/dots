#!/usr/bin/env sh
# profile

PROMPT='%F{green}%n %F{red}%~%f %# '

HISTFILE=~/.cache/histfile
HISTSIZE=10000

export XDG_CONFIG_HOME="$HOME/.config"
export XDG_CONFIG_CACHE="$HOME/.cache"

export EDITOR="vim"
export TERMINAL="xst"
export TERM="xst-256color"
export BROWSER="chromium"

alias ls='ls --color=auto'
alias ssh='TERM=xterm ssh'

if systemctl -q is-active graphical.target && [[ "$(tty)" = "/dev/tty1" ]]; then
	exec startx
fi



#[ "$(tty)" = "/dev/tty1" ] && ! pgrep -x i3 >/dev/null && exec startx
