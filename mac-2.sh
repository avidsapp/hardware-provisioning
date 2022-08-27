#!/bin/bash

###########################
# MADE FOR MACOS MONTEREY #
###########################

# Install Java
sudo ln -sfn /usr/local/opt/openjdk/libexec/openjdk.jdk /Library/Java/JavaVirtualMachines/openjdk.jdk

# Install NVM
mkdir ~/.nvm
printf "export NVM_DIR=~/.nvm" >> ~/.zshrc
printf "source $(brew --prefix nvm)/nvm.sh" >> ~/.zshrc
source ~/.zshrc

# Install Node
nvm install node
nvm install 16.13.0
nvm use 16.13.0


# Install Google Cloud SDK
printf 'source "/usr/local/Caskroom/google-cloud-sdk/latest/google-cloud-sdk/path.zsh.inc"' >> ~/.zshrc
source ~/.zshrc

# Install Make
printf 'PATH="/usr/local/opt/make/libexec/gnubin:$PATH"' >> ~/.zshrc
source ~/.zshrc

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
