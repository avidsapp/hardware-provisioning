#!/bin/bash

############################
# MADE FOR MACOS CATALINA+ #
############################

# Install xcode
xcode-select --install

# Check for Homebrew and install
if test ! $(which brew); then
  echo "Installing homebrew..."
  /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)"
fi

# Update homebrew recipes
brew update

# Install GNU core utilities (those that come with OS X are outdated)
brew install coreutils

# Install GNU `find`, `locate`, `updatedb`, and `xargs`, g-prefixed
brew install findutils

# Install Bash 4
brew install bash

# Brew packages that I use alot.
brew install wget
brew install python

# Install Java
brew install java
sudo ln -sfn /usr/local/opt/openjdk/libexec/openjdk.jdk /Library/Java/JavaVirtualMachines/openjdk.jdk

# Install NVM
brew uninstall --ignore-dependencies node
brew uninstall --force node
brew update
brew install node
brew install nvm
mkdir ~/.nvm
printf "export NVM_DIR=~/.nvm" >> ~/.zshrc
printf "source $(brew --prefix nvm)/nvm.sh" >> ~/.zshrc
source ~/.zshrc

# Install Node via NVM
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
printf 'source "/usr/local/Caskroom/google-cloud-sdk/latest/google-cloud-sdk/path.zsh.inc"' >> ~/.zshrc
source ~/.zshrc

# Install Make
brew install make
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

# Symlink SSH credentials
ln -s ~/dev/ssh/ssh-config.txt ~/.ssh/config

##########
# REBOOT #
##########

echo "#######################################"
echo "#                                     #"
echo "#   The setup script has completed!   #"
echo "#   Reboot your machine. K Bye!       #"
echo "#                                     #"
echo "#######################################"
