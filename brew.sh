#!/bin/bash

brew update

brew upgrade

# Tools
brew install git
brew install git-lfs
brew install zsh
brew install nvm
brew install dep
brew install yarn
brew install python
brew install pipenv

# Utilities
brew install wget
brew install openssh
brew install openssl
brew install vim
brew install tree
brew install wifi-password
brew install htop

# Fun
brew install archey

# Fonts
brew tap homebrew/cask-fonts
brew cask install font-fira-code

# Apps
brew cask install docker
brew cask install google-chrome
brew cask install visual-studio-code
brew cask install pycharm-ce
brew cask install datagrip
brew cask install insomnia
brew cask install caffeine
brew cask install coconutbattery
brew cask install imageoptim

brew cleanup
