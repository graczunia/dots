# zshrc

PROMPT='%F{green}%n %F{red}%~%f %# '
PS1=$PROMPT

autoload -Uz colors && colors

HISTFILE=$HOME/.cache/histfile
HISTSIZE=10000
SAVEHIST=$HISTSIZE

setopt inc_append_history
setopt hist_ignore_all_dups
setopt hist_ignore_space
setopt autocd
autoload -Uz compinit
zstyle ':completion:*' menu select
zstyle ':completion:*' matcher-list 'm:{a-zA-Z}={A-Za-z}'
zmodload zsh/complist
compinit
_comp_options+=(globdots)

alias ls='ls --color=auto'
alias ll='ls -l'
alias la='ls -a'
alias lla='ls -la'
alias ssh='TERM=xterm ssh'
alias pacman='sudo pacman'
alias cb='vim ~/.config/bspwm/bspwmrc'
alias cs='vim ~/.config/sxhkd/sxhkdrc'
alias cz='vim ~/.zshrc'
alias czp='vim ~/.zprofile'
alias xd='grep alias ~/.zshrc --color=auto'
alias vim='nvim'

export ANDROID_HOME='/opt/android-sdk'
export ANDROID_SDK_ROOT='/opt/android-sdk'
export PATH=$PATH:$ANDROID_SDK_ROOT/platform-tools
export PATH=$PATH:$ANDROID_SDK_ROOT/tools/bin
export PATH=$PATH:$ANDROID_SDK_ROOT/emulator
export PATH=$PATH:$ANDROID_SDK_ROOT/tools

source /usr/share/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.plugin.zsh
source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
