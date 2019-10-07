#!/bin/sh

echo "Install homebrew, zsh and oh-my-zsh"

# Install homebrew
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

brew tap homebrew/cask
brew update

brew install zsh
# brew install zsh-completions
# brew install zsh-syntax-highlighting

#Install oh-my-zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

echo "Installing DONE!"

exit
