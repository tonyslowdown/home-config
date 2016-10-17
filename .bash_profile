export PATH=/usr/local/bin:$PATH
export PATH=~/.local/bin:$PATH

alias ls='ls -G'
alias ll='ls -alG'
alias rm='rm -i'

alias emacs='emacs -nw'

export HISTFILESIZE=9999999
export HISTSIZE=999999

# Virtualenv
export WORKON_HOME=$HOME/.virtualenvs
export PROJECT_HOME=$HOME/Devel
source /usr/local/bin/virtualenvwrapper.sh

### Added by the Heroku Toolbelt
export PATH="/usr/local/heroku/bin:$PATH"
export PATH="$HOME/.jenv/bin:$PATH"
eval "$(jenv init -)"

# Haskell
#export PATH="$HOME/Library/Haskell/bin:$PATH"

# Pymacs
export PYTHONPATH=$PYTHONPATH:~/.emacs.d/Pymacs/

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
