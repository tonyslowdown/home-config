# Lines configured by zsh-newuser-install
HISTFILE=~/.zsh_history
HISTSIZE=99999
SAVEHIST=999999
setopt appendhistory autocd extendedglob notify
bindkey -e
# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename '$HOME/.zshrc'

autoload -Uz compinit
compinit
# End of lines added by compinstall

# Antigen
source $HOME/antigen.zsh
antigen init $HOME/home-config/.antigenrc

# Path
export PATH="$PATH:$HOME/flutter/bin"
export PATH="/usr/local/sbin:$PATH"
