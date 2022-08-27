#!/bin/bash

###########################
# MADE FOR MACOS MONTEREY #
###########################

# update Homebrew
brew update

# Install Java
brew install java

sleep 30
sudo ln -sfn /usr/local/opt/openjdk/libexec/openjdk.jdk /Library/Java/JavaVirtualMachines/openjdk.jdk

# Install NVM
brew uninstall --ignore-dependencies node
brew uninstall --force node
brew update
brew install nvm

sleep 30
mkdir ~/.nvm
printf "export NVM_DIR=~/.nvm" >> ~/.zshrc
printf "source $(brew --prefix nvm)/nvm.sh" >> ~/.zshrc
source ~/.zshrc

# Install Node
nvm install node
nvm install 16.13.0
nvm use 16.13.0

# Install basics
brew install pyenv
brew install screen
brew install yarn
brew install nmap

# Install Google Cloud SDK
brew install --cask google-cloud-sdk

sleep 30
printf 'source "/usr/local/Caskroom/google-cloud-sdk/latest/google-cloud-sdk/path.zsh.inc"' >> ~/.zshrc
source ~/.zshrc

# Install Make
brew install make

sleep 30
printf 'PATH="/usr/local/opt/make/libexec/gnubin:$PATH"' >> ~/.zshrc
source ~/.zshrc

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


sleep 30

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

sleep 30
mkdir -p ~/.docker/cli-plugins
ln -sfn /usr/local/opt/docker-compose/bin/docker-compose ~/.docker/cli-plugins/docker-compose

##########
# REBOOT #
##########

echo "#######################################"
echo "#                                     #"
echo "#   The setup script has completed!   #"
echo "#   Reboot your machine. K Bye!       #"
echo "#                                     #"
echo "#######################################"
