# Lines configured by zsh-newuser-install
HISTFILE=~/.zsh_history
HISTSIZE=99999
SAVEHIST=999999
setopt appendhistory autocd extendedglob notify
bindkey -e
# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename '/Users/jjinking/.zshrc'

autoload -Uz compinit
compinit
# End of lines added by compinstall

# Antigen
# If there is cache available
if [[ -f ${ADOTDIR:-$HOME/.antigen}/.cache/.zcache-payload ]]; then
    # Load bundles statically
    source ${ADOTDIR:-$HOME/.antigen}/.cache/.zcache-payload

    # You will need to call compinit
    autoload -Uz compinit
    compinit -d ${HOME}/.zcompdump
else
    # If there is no cache available do load and execute antigen
    source $HOME/antigen.zsh

    # I'm using antigen-init here but your usual antigen-bundle,
    # antigen-theme, antigen-apply will work as well
    antigen init $HOME/home-config/.antigenrc
fi
