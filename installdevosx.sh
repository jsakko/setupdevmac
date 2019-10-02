#!/bin/sh

# Install homebrew
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

brew tap homebrew/cask && brew update

brew cask install java
brew cask install docker

brew cask install intellij-idea
brew cask install visual-studio-code
brew cask install postman
brew cask install slack
brew cask install virtualbox

brew cask install iterm2 cathode
brew cask install google-chrome


brew install maven
brew install jenv

brew install clojure

brew install macvim --override-system-vim --custom-system-icons
brew install vim --override-system-vi
brew install git 


# GNU Command Line Tools
brew install coreutils
brew install findutils --with-default-names
brew install wget
brew install unzip


# brew install node nvm
# brew install python

# Zsh shell
brew install zsh
# brew install zsh-completions
# brew install zsh-syntax-highlighting

#Install oh-my-zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

#Enable showing of hidden folders
defaults write com.apple.finder AppleShowAllFiles YES
killall Finder
