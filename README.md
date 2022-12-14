# Lightweight Home Directory Config

## MacOs

### Install homebrew

### MacOS terminal theme

"Tomorrow Night" from https://github.com/lysyi3m

### Emacs

```zsh
brew tap d12frosted/emacs-plus
brew install emacs-plus --without-cocoa --with-imagemagick
```

Optional: Set up daemon server and emacsclient

### Install node/npm

`brew install node`

### Install latest zsh version from homebrew and set that as default zsh shell


## Ubuntu/Debian

### Install node/npm

`sudo apt-get install npm && sudo npm install -g npm`


## Configure zsh

```zsh
# Zsh pure prompt
npm install --global pure-prompt

# Download plugins
ZSH_PLUGIN_DIR=$HOME/.zsh
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git $ZSH_PLUGIN_DIR/zsh-syntax-highlighting
git clone https://github.com/zsh-users/zsh-autosuggestions $ZSH_PLUGIN_DIR/zsh-autosuggestions
git clone https://github.com/zsh-users/zsh-completions.git $ZSH_PLUGIN_DIR/zsh-completions
rm -f ~/.zcompdump; compinit
git clone https://github.com/ohmyzsh/ohmyzsh.git $ZSH_PLUGIN_DIR/ohmyzsh
```

## Create symlinks to dot config files

```zsh
ln -s $HOME/home-config/dot_emacs ~/.emacs
ln -s $HOME/home-config/dot_gitconfig ~/.gitconfig
ln -s $HOME/home-config/dot_gitignore_global ~/.gitignore_global
ln -s $HOME/home-config/dot_zshrc ~/.zshrc
```
