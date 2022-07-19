#!/bin/bash

##################
# MADE FOR MACOS #
##################

# Install macOS command line developer tools
xcode-select --install

# Install Homebrew
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
brew update

# Install Java
brew install java
sudo ln -sfn /usr/local/opt/openjdk/libexec/openjdk.jdk /Library/Java/JavaVirtualMachines/openjdk.jdk

# Remove Node installed by homebrew
brew uninstall --force node

# Install NVM
brew install nvm
mkdir ~/.nvm
printf "export NVM_DIR=~/.nvm" >> ~/.zshrc
printf "source $(brew --prefix nvm)/nvm.sh" >> ~/.zshrc
source ~/.zshrc

# Install Node
nvm install node
nvm install 16.13.0
nvm use 16.13.0

# Install pyenv
brew install pyenv

# Install screen - for managing clients
brew install screen

# Install yarn - package manager
brew install yarn

# Install NMAP - network testing
brew install nmap

# Install Google Cloud SDK
brew install --cask google-cloud-sdk
printf 'source "/usr/local/Caskroom/google-cloud-sdk/latest/google-cloud-sdk/path.zsh.inc"' >> ~/.zshrc
source ~/.zshrc

# Install Gatsby CLI
brew install gatsby-cli

# Install Make
brew install make
printf 'PATH="/usr/local/opt/make/libexec/gnubin:$PATH"' >> ~/.zshrc
source ~/.zshrc

# Install Google Drive
brew install --cask google-drive

# Install Dropbox
brew install --cask dropbox

# Install Atom
brew install --cask atom

# Install Visual Studio Code
brew install --cask visual-studio-code

# Install Slack
brew install --cask slack

# Install Chromium
brew install --cask chromium

# Install Brave
brew install --cask brave-browser

# Install Firefox
brew install --cask firefox

# Install Spotify
brew install --cask spotify

# Install Bitwarden & CLI
brew install --cask bitwarden
brew install bitwarden-cli

# Install Raspberry Pi Imager
brew install --cask raspberry-pi-imager

# Install ProtonVPN
brew install --cask protonvpn

# Install Discord
brew install --cask discord

# Install Standard Notes
brew install --cask standard-notes

# Install VSee
brew install --cask vsee

# Install Adobe CC
brew install --cask adobe-creative-cloud

# Install Autodesk Fusion 360
brew install --cask autodesk-fusion360

# Install Ultimaker-Cura
brew install --cask ultimaker-cura

# Install other non-homebrew managed packages
npm install -g node-gyp
npm install -g usb
npm install -g json
npm install -g firebase-tools

# Install dev environment specific packages
npm install -g @gatsbystorefront/gatsby-theme-storefront-shopify

##########
# Docker #
##########

# Install Docker via Homebrew - https://github.com/leighmcculloch/dockerhost
brew install --cask 4d63/dockerhost/dockerhost

# Install docker-compose
brew install docker-compose
mkdir -p ~/.docker/cli-plugins
ln -sfn /usr/local/opt/docker-compose/bin/docker-compose ~/.docker/cli-plugins/docker-compose

##########
# REBOOT #
##########

sudo reboot
