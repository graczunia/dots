# zshrc

PROMPT='%F{green}%n %F{red}%~%f %# '
PS1=$PROMPT

autoload -Uz colors && colors

HISTFILE=$HOME/.cache/histfile
HISTSIZE=999999
SAVEHIST=$HISTSIZE

setopt inc_append_history
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
alias vim='nvim'
alias dotfiles='git --git-dir=$HOME/.dots/ --work-tree=$HOME'

source /usr/share/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.plugin.zsh
source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
