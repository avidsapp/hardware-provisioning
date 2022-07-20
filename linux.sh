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

# REMOVE CMDTEST
sudo apt remove -y cmdtest
sudo apt autoremove -y

# Update and Upgrade
sudo apt update -y && sudo apt upgrade -y

# Package installer
sudo apt install -y aptitude

# Set TimeZone
echo "### TIMEZONE ###"
sudo timedatectl set-timezone $TIME_ZONE
echo "### TIMEZONE SET ###"

# Install NPM
sudo apt install -y npm

# Install CURL
sudo apt install -y curl

# Install NVM
echo "### NVM ###"
curl https://raw.githubusercontent.com/creationix/nvm/master/install.sh | bash
source ~/.profile
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"
[ -s "NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"
echo "### NVM INSTALLED ###"

# Install Node using NVM
echo "### NODE ###"
nvm install v16
nvm install 16.13.0
echo "### NODE INSTALLED ###"

# Install screen - for managing clients
sudo apt install -y screen

# Install rename
sudo apt install -y rename

# Install yarn - package manager
echo "### YARN ###"
curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | sudo apt-key add -
echo "deb https://dl.yarnpkg.com/debian/ stable main" | sudo tee /etc/apt/sources.list.d/yarn.list
sudo apt update
sudo apt install --no-install-recommends -y yarn
echo "### YARN INSTALLED ###"

# Install NPM Packages
echo "### NPM PACKAGES ###"
npm install -g npm@latest
npm install -g gatsby-cli
npm install -g make
npm install -g node-gyp
npm install -g usb
npm install -g json
npm install -g firebase-tools
echo "### NPM PACKAGES INSTALLED ###"

# Update Python3 environment
echo "### PYTHON ###"
sudo apt install -y build-essential libssl-dev libffi-dev python3-dev
echo "### PYTHON INSTALLED ###"

# Install NMAP - network testing
sudo apt install -y nmap

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

# Install Bitwarden & CLI
sudo snap install bitwarden
sudo snap install bw

# Install Atom
sudo snap install atom --classic

# Install Visual Studio Code
sudo snap install code --classic

# Install Chromium
sudo snap install chromium

# Install Google Cloud SDK
sudo snap install google-cloud-sdk --classic

# Install Brave
sudo snap install brave

# Install Firefox
sudo snap install firefox

# Install Raspberry Pi Imager
sudo snap install rpi-imager

##########
# Docker #
##########

# Install Docker via snap
echo "### DOCKER ###"
sudo snap install docker
sudo addgroup --system docker
sudo adduser $USER docker
sudo snap disable docker
sudo snap enable docker
echo "### DOCKER INSTALLED ###"

# Install docker-compose
echo "### DOCKER-COMPOSE ###"
mkdir -p ~/.docker/cli-plugins/
curl -SL $DOCKER_COMPOSE_URL -o ~/.docker/cli-plugins/docker-compose
chmod +x ~/.docker/cli-plugins/docker-compose
echo "### DOCKER-COMPOSE INSTALLED ###"

#############
# SNAPCRAFT #
#############

sudo apt remove snapcraft
sudo snap install snapcraft --classic

###########
# DROPBOX #
###########

# cd ~ && wget -O - "https://www.dropbox.com/download?plat=lnx.x86_64" | tar xzf -
#
# # The following line will open a browser window to login to your Dropbox account
# ~/.dropbox-dist/dropboxd

##########################
# DESKTOP CUSTOMIZATIONS #
##########################

# Gnome Tweaks
sudo apt install -y dbus-x11
sudo apt install -y gnome-tweaks
sudo apt install -y dconf-editor

# Disable scroll button click to paste
gsettings set org.gnome.desktop.interface gtk-enable-primary-paste false

# Center and detach dock
gsettings set org.gnome.shell.extensions.dash-to-dock extend-height false
gsettings set org.gnome.shell.extensions.dash-to-dock dock-position BOTTOM
# gsettings set org.gnome.shell.extensions.dash-to-dock transparency-mode FIXED
# gsettings set org.gnome.shell.extensions.dash-to-dock dash-max-icon-size 64
gsettings set org.gnome.shell.extensions.dash-to-dock unity-backlit-items true

# Remove auto/drag to top/click to maximize
gsettings set org.gnome.mutter auto-maximize false
gsettings set org.gnome.mutter edge-tiling false
gsettings set org.gnome.shell.overrides edge-tiling false

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

##########
# REBOOT #
##########

# sudo reboot
