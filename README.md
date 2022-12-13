# Let's Go "Minimal"

## Basic Terminal

* Install homebrew
* Install latest zsh version from homebrew and set that as default zsh shell
* MacOS terminal theme (tomorrow night) from https://github.com/lysyi3m


## Lightweight zsh setup

```zsh
brew install node
npm install --global pure-prompt 

brew install zsh-syntax-highlighting
brew install zsh-autosuggestions
brew install zsh-completions

cd $HOME
git clone https://github.com/ohmyzsh/ohmyzsh.git
```


## Emacs

```zsh
brew tap d12frosted/emacs-plus
brew install emacs-plus --without-cocoa --with-imagemagick
Set up daemon server and emacsclient
```


## Set up new computer

```zsh
ln -s ~/home-config/dot_emacs ~/.emacs
ln -s ~/home-config/dot_gitconfig ~/.gitconfig
ln -s ~/home-config/dot_gitignore_global ~/.gitignore_global
ln -s ~/home-config/dot_zshrc ~/.zshrc
```
