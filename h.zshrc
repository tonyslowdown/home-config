# Lines configured by zsh-newuser-install
HISTFILE=~/.zsh_history
HISTSIZE=99999
SAVEHIST=999999
setopt appendhistory autocd extendedglob notify
bindkey -e
# End of lines configured by zsh-newuser-install

# Generic
export PATH="/usr/local/sbin:$PATH"
export EDITOR="emacs -nw"

# Pure prompt
if [[ `uname` == "Darwin" ]]; then
    alias ls='ls -G'
    export PATH="/opt/homebrew/bin:$PATH"
    FPATH=$(brew --prefix)/share/zsh/site-functions:$FPATH
elif [[ `uname` == "Linux" ]]; then  # elif command -v apt > /dev/null; then
    alias ls='ls --color=auto'
    FPATH=/usr/share/zsh/site-functions:$FPATH
fi
autoload -U promptinit; promptinit
prompt pure

# Zsh plugins
ZSH_PLUGIN_DIR=$HOME/.zsh
source $ZSH_PLUGIN_DIR/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source $ZSH_PLUGIN_DIR/zsh-autosuggestions/zsh-autosuggestions.zsh
FPATH=$ZSH_PLUGIN_DIR/zsh-completions/src:$FPATH
autoload -Uz compinit
compinit
source $ZSH_PLUGIN_DIR/ohmyzsh/plugins/common-aliases/common-aliases.plugin.zsh
source $ZSH_PLUGIN_DIR/ohmyzsh/plugins/git/git.plugin.zsh

# Flutter
export PATH="$PATH:$HOME/flutter/bin"
