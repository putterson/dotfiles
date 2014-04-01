# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=10000
SAVEHIST=10000
setopt appendhistory autocd extendedglob nomatch notify
unsetopt beep
bindkey -e
# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename '/home/patcgoe/.zshrc'

autoload -Uz compinit
compinit
# End of lines added by compinstall
bindkey    "^[[3~"          delete-char
bindkey    "^[3;5~"         delete-char
export GOPATH=$HOME/workspace/go
export PATH=$PATH:$GOPATH/bin
