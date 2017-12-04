export PATH=$HOME/bin:/usr/local/bin:$PATH
# export MANPATH="/usr/local/man:$MANPATH"
export HISTSIZE=999999999
export SAVEHIST=999999999

# Anaconda3 4.2.0
export PATH="$HOME/anaconda3/bin:$PATH"

# Heroku Toolbelt
export PATH="/usr/local/heroku/bin:$PATH"

# Java environment manager
export PATH="$HOME/.jenv/bin:$PATH"
eval "$(jenv init -)"

# Go
export GOPATH=$HOME/go
export PATH="$GOPATH/bin:$PATH"
export PATH="$PATH:/usr/local/opt/go/libexec/bin"

# Pdflatex
export PATH=$PATH:/Library/TeX/Distributions/.DefaultTeX/Contents/Programs/texbin


# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
export ALTERNATE_EDITOR=""
export EDITOR="emacsclient -t"                  # $EDITOR should open in terminal
export VISUAL="emacsclient -c -a emacs"         # $VISUAL opens in GUI with non-daemon as alternate
alias emacs='emacs -nw'
alias emax="emacsclient -t"                      # used to be "emacs -nw"
alias semac="sudo emacsclient -t"                # used to be "sudo emacs -nw"
alias emacsc="emacsclient -c -a emacs"           # new - opens the GUI with alternate non-daemon

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# ssh
# export SSH_KEY_PATH="~/.ssh/id_rsa"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

# Show or hide hidden files
alias showFiles='defaults write com.apple.finder AppleShowAllFiles YES; killall Finder /System/Library/CoreServices/Finder.app'
alias hideFiles='defaults write com.apple.finder AppleShowAllFiles NO; killall Finder /System/Library/CoreServices/Finder.app'

# Check global ip address
alias global_ip="curl -s checkip.dyndns.org | sed -e 's/.*Current IP Address: //' -e 's/<.*$//'"
