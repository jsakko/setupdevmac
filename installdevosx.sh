#!/bin/sh

echo "##### Start install #####"

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
brew install wget
brew install unzip

# Zsh shell
brew install zsh
# brew install zsh-completions
# brew install zsh-syntax-highlighting

#Install oh-my-zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

# GNU Command Line Tools instead of BSD versions
brew install coreutils
echo 'export PATH="$(brew --prefix coreutils)/libexec/gnubin:$PATH"' >> $HOME/.zshrc
brew install findutils
echo 'export PATH="$(brew --prefix coreutils)/libexec/gnubin:$PATH"' >> $HOME/.zshrc
brew install diffutils
brew install grep
echo 'export PATH="$(brew --prefix grep)/libexec/gnubin:$PATH"' >> $HOME/.zshrc

#Enable showing of hidden folders
defaults write com.apple.finder AppleShowAllFiles YES
killall Finder

echo "###### END INSTALL ######"
exit 0
