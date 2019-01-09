source ~/.tiger.sh
bindkey -e

autoload -U compinit promptinit
compinit
promptinit; prompt gentoo
zstyle ':completion::complete:*' use-cache 1

source /usr/share/oh-my-zsh/lib/history.zsh
