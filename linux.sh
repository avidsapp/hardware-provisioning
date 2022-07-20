#!/bin/bash

###################
# MADE FOR UBUNTU #
###################

###########################
# PWAs - Manually install #
###########################
# Spotify - https://open.spotify.com/browse/featured?pwa=1
# Discord
# Slack
# Standard Notes

# ENV VARS
export TIME_ZONE=America/Denver
export DOCKER_COMPOSE_URL=https://github.com/docker/compose/releases/download/v2.2.3/docker-compose-linux-x86_64

# Set TimeZone
sudo timedatectl set-timezone $TIME_ZONE

# Install basics
sudo apt remove -y cmdtest
sudo apt autoremove -y
sudo apt update -y && sudo apt upgrade -y
sudo apt install -y aptitude
sudo apt install -y npm
sudo apt install -y curl

# Install extras
sudo apt install -y screen
sudo apt install -y rename
sudo apt install -y nmap

# Install NVM
curl https://raw.githubusercontent.com/creationix/nvm/master/install.sh | bash
source ~/.profile
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"
[ -s "NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"

# Install Node using NVM
nvm install v16
nvm install 16.13.0

# Install yarn - package manager
curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | sudo apt-key add -
echo "deb https://dl.yarnpkg.com/debian/ stable main" | sudo tee /etc/apt/sources.list.d/yarn.list
sudo apt update
sudo apt install --no-install-recommends -y yarn

# Install NPM Packages
npm install -g npm@latest
npm install -g gatsby-cli
npm install -g make
npm install -g node-gyp
npm install -g usb
npm install -g json
npm install -g firebase-tools

# Update Python3 environment
sudo apt install -y build-essential libssl-dev libffi-dev python3-dev

#########
# SNAPS #
#########

# Install Snap Core
sudo snap install core

# Install LXD
sudo snap install lxd
sudo lxd init --minimal
sudo usermod -a -G lxd ${USER}
newgrp lxd

# Install snapcraft
sudo apt remove snapcraft
sudo snap install snapcraft --classic

# Install program snaps
sudo snap install bitwarden
sudo snap install bw
sudo snap install atom --classic
sudo snap install code --classic
sudo snap install chromium
sudo snap install google-cloud-sdk --classic
sudo snap install brave
sudo snap install firefox
sudo snap install rpi-imager

##########
# Docker #
##########

# Install Docker via snap
sudo snap install docker
sudo addgroup --system docker
sudo adduser $USER docker
sudo snap disable docker
sudo snap enable docker

# Install docker-compose
mkdir -p ~/.docker/cli-plugins/
curl -SL $DOCKER_COMPOSE_URL -o ~/.docker/cli-plugins/docker-compose
chmod +x ~/.docker/cli-plugins/docker-compose

##########################
# DESKTOP CUSTOMIZATIONS #
##########################

# Gnome Tweaks
sudo apt install -y dbus-x11
sudo apt install -y gnome-tweaks
sudo apt install -y dconf-editor

# Disable scroll button click to paste
gsettings set org.gnome.desktop.interface gtk-enable-primary-paste false

# Center and move dock to bottom
gsettings set org.gnome.shell.extensions.dash-to-dock extend-height false
gsettings set org.gnome.shell.extensions.dash-to-dock dock-position BOTTOM

# Remove auto/drag to top/click to maximize
gsettings set org.gnome.mutter auto-maximize false
gsettings set org.gnome.mutter edge-tiling false
gsettings set org.gnome.shell.overrides edge-tiling false

# Enable natural scrolling
gsettings set org.gnome.desktop.peripherals.touchpad natural-scroll true

# Enable night light and decrease default temp
gsettings set org.gnome.settings-daemon.plugins.color night-light-enabled true
gsettings set org.gnome.settings-daemon.plugins.color night-light-temperature 2000

############################
# APPLE HEIF COMPATIBILITY #
############################

sudo apt install -y heif-thumbnailer
sudo add-apt-repository -y ppa:strukturag/libheif
sudo apt install -y libheif-examples
sudo apt install -y gstreamer1.0-libav ffmpeg

###########
# CLEANUP #
###########

sudo apt update -y && sudo apt upgrade -y
sudo apt autoremove -y
npm audit fix

##########
# REBOOT #
##########

echo "#######################################"
echo "#                                     #"
echo "#   The setup script has completed!   #"
echo "#   Reboot your machine. K Bye!       #"
echo "#                                     #"
echo "#######################################"
