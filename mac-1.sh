#!/bin/bash

############################
# MADE FOR MACOS CATALINA+ #
############################

# update Homebrew
brew update

# Install Java
brew install java

# Install NVM
brew uninstall --ignore-dependencies node
brew uninstall --force node
brew update
brew install node
brew install nvm

# Install basics
brew install pyenv
brew install screen
brew install yarn
brew install nmap

# Install Google Cloud SDK
brew install --cask google-cloud-sdk

# Install Make
brew install make

# Install CLIs
brew install gatsby-cli
brew install bitwarden-cli

# Install programs
brew install --cask google-drive
brew install --cask dropbox
brew install --cask atom
brew install --cask visual-studio-code
brew install --cask slack
brew install --cask chromium
brew install --cask brave-browser
brew install --cask firefox
brew install --cask raspberry-pi-imager
brew install --cask bitwarden
brew install --cask protonvpn
brew install --cask spotify
brew install --cask discord
brew install --cask standard-notes
brew install --cask vsee
brew install --cask adobe-creative-cloud
brew install --cask autodesk-fusion360
brew install --cask ultimaker-cura

##########
# Docker #
##########

# Install Docker via Homebrew - https://github.com/leighmcculloch/dockerhost
brew install --cask 4d63/dockerhost/dockerhost

# Install docker-compose
brew install docker-compose

##########
# REBOOT #
##########

echo "#########################################"
echo "#                                       #"
echo "#   The setup script 1 has completed!   #"
echo "#   Run setup script 2. K Bye!          #"
echo "#                                       #"
echo "#########################################"
