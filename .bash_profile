export PS1='\W \u\$ '
export PATH=/usr/local/bin:$PATH
export PATH=~/.local/bin:$PATH

alias ls='ls -G'
alias ll='ls -alG'
alias rm='rm -i'

export ALTERNATE_EDITOR=""
export EDITOR="emacsclient -t"                  # $EDITOR should open in terminal
export VISUAL="emacsclient -c -a emacs"         # $VISUAL opens in GUI with non-daemon as alternate
alias emacs='emacs -nw'
alias emax="emacsclient -t"                      # used to be "emacs -nw"
alias semac="sudo emacsclient -t"                # used to be "sudo emacs -nw"
alias emacsc="emacsclient -c -a emacs"           # new - opens the GUI with alternate non-daemon

alias showFiles='defaults write com.apple.finder AppleShowAllFiles YES; killall Finder /System/Library/CoreServices/Finder.app'
alias hideFiles='defaults write com.apple.finder AppleShowAllFiles NO; killall Finder /System/Library/CoreServices/Finder.app'

export HISTFILESIZE=99999999
export HISTSIZE=9999999

# added by Anaconda3 4.2.0 installer
export PATH="$HOME/anaconda3/bin:$PATH"

# # Virtualenv
# export WORKON_HOME=$HOME/.virtualenvs
# export PROJECT_HOME=$HOME/Devel
# source /usr/local/bin/virtualenvwrapper.sh

### Added by the Heroku Toolbelt
export PATH="/usr/local/heroku/bin:$PATH"

# Java environment manager
export PATH="$HOME/.jenv/bin:$PATH"
eval "$(jenv init -)"

# Haskell
#export PATH="$HOME/Library/Haskell/bin:$PATH"

# Pymacs
# export PYTHONPATH=$PYTHONPATH:~/.emacs.d/Pymacs/

# Go
export GOPATH=$HOME/go
export PATH="$GOPATH/bin:$PATH"
export PATH="$PATH:/usr/local/opt/go/libexec/bin"

# Pdflatex
export PATH=$PATH:/Library/TeX/Distributions/.DefaultTeX/Contents/Programs/texbin

# TensorFlow w cuda
#export DYLD_LIBRARY_PATH=/usr/local/cuda/lib:$DYLD_LIBRARY_PATH

# Android NDK
export ANDROID_NDK=/usr/local/Cellar/android-ndk/r10e
