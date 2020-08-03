#!/bin/sh

echo "##### Start install #####"

brew update

brew cask install intellij-idea
brew cask install visual-studio-code
brew cask install postman
brew cask install slack
brew cask install virtualbox
brew cask install docker

brew cask install iterm2
# Terminal emulator made with electron/js
brew cask install hyper
brew cask install google-chrome

brew install node

brew install maven

brew install clojure

brew install python

brew install macvim
brew install git
brew install wget
brew install unzip
# Good replacement fro grep
brew install ack


# GNU Command Line Tools instead of BSD versions
COREUTILSPATH=$(brew --prefix coreutils)
echo '\n# GNU Command Line Tools instead of BSD versions:' >> $HOME/.zshrc
brew install coreutils
echo 'export PATH="$COREUTILSPATH/libexec/gnubin:$PATH"' >> $HOME/.zshrc
brew install findutils
echo 'export PATH="$COREUTILSPATH/libexec/gnubin:$PATH"' >> $HOME/.zshrc
brew install diffutils
brew install grep
echo 'export PATH="$COREUTILSPATH/libexec/gnubin:$PATH"' >> $HOME/.zshrc


# Install and configure JENV
echo '\n# JENV configurations:' >> $HOME/.zshrc
brew install jenv
echo 'export PATH="$HOME/.jenv/bin:$PATH"' >> $HOME/.zshrc
echo 'eval "$(jenv init -)"' >> $HOME/.zshrc
# Must reload shell so that plugins can be enabled
source $HOME/.zshrc
jenv enable-plugin maven
jenv enable-plugin export

# Install lates Java with brew (currently 13)
brew cask install java
jenv add $(/usr/libexec/java_home)
brew cask install java11
jenv add $(/usr/libexec/java_home -v11)


# https://adoptopenjdk.net/index.html?variant=openjdk11&jvmVariant=hotspot

#Enable showing of hidden folders
defaults write com.apple.finder AppleShowAllFiles YES
killall Finder

echo "###### END INSTALL ######"
exit 0
