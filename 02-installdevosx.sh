#!/bin/sh

echo "##### Start install #####"

brew update

brew cask install java
brew cask install docker

brew cask install intellij-idea
brew cask install visual-studio-code
brew cask install postman
brew cask install slack
brew cask install virtualbox
brew cask install atom
brew cask install keepassx
brew cask install firefox

brew cask install iterm2
# Terminal emulator made with electron/js
brew cask install hyper
brew cask install google-chrome

brew install maven

brew install clojure

brew install python

brew install macvim
brew install git 
brew install wget
brew install unzip

# GNU Command Line Tools instead of BSD versions
echo '\n# GNU Command Line Tools instead of BSD versions:' >> $HOME/.zshrc
brew install coreutils
echo 'export PATH="$(brew --prefix coreutils)/libexec/gnubin:$PATH"' >> $HOME/.zshrc
brew install findutils
echo 'export PATH="$(brew --prefix coreutils)/libexec/gnubin:$PATH"' >> $HOME/.zshrc
brew install diffutils
brew install grep
echo 'export PATH="$(brew --prefix grep)/libexec/gnubin:$PATH"' >> $HOME/.zshrc

# Install and configure JENV
echo '\n# JENV configurations:' >> $HOME/.zshrc
brew install jenv
echo 'export PATH="$HOME/.jenv/bin:$PATH"' >> $HOME/.zshrc
echo 'eval "$(jenv init -)"' >> $HOME/.zshrc
# Must reload shell so that plugins can be enabled
source $HOME/.zshrc
jenv enable-plugin maven
jenv enable-plugin export

#Enable showing of hidden folders
defaults write com.apple.finder AppleShowAllFiles YES
killall Finder

echo "###### END INSTALL ######"
exit 0
