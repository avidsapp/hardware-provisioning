# Provisioning Scripts

To make life easier

## Prerequisites

From a fresh OS install:
  1. Ensure your SSH config file is present at:
      1. Win11 - `%userprofile%\.ssh\config`
      1. UNIX - `~/dev/ssh/ssh-config.txt`

## Usage

Run the following from a Terminal, entering your sudo/admin user password when prompted:

Windows 11:
  1. Manually install desired programs (see below)
  1. Install Windows Subsystem for Linux - `wsl --install` and setup username and pw
  1. Enable WSL - Search "Turn Windows Features on or off" > Enable "Windows Subsystem for Linux"
  1. Install Git - `winget install --id Git.Git -e --source winget` and config:
    1. `git config --global user.email "you@example.com"`
    1. `git config --global user.name "Your Name"`
  1. Symlink ssh-config - `mklink /H %userprofile%\.ssh\config %userprofile%\dev\ssh\ssh-config.txt`
  1. Open WSL Terminal:
    1. `sudo apt-get install curl`
    1. `curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/master/install.sh | bash`
    1. `nvm install --lts`

macOS Catalina+:
```
/bin/bash -c "$(curl https://raw.githubusercontent.com/avidsapp/hardware-provisioning/master/mac.sh)"
```

Ubuntu 22:
```
wget https://raw.githubusercontent.com/avidsapp/hardware-provisioning/master/linux.sh -O - | bash
```
- Caveats:
    - VPN - install manually
    - Dropbox - run manually:
        ```
        cd ~ && wget -O - "https://www.dropbox.com/download?plat=lnx.x86_64" | tar xzf -

        # The following line will open a browser window to login to your Dropbox account
        ~/.dropbox-dist/dropboxd
        ```

## TO DO

Linux:
  - Fix Dropbox integration and create daemon

## PROGRAMS

- [Google Drive](https://www.google.com/drive/download/)
- [Dropbox](https://www.dropbox.com/install)
- [VS Code](https://code.visualstudio.com/download)
- [Slack](https://slack.com/downloads)
- [Google Chrome](https://www.google.com/chrome/)
- [Brave Browser](https://brave.com/download/)
- [Firefox](https://www.mozilla.org/firefox)
- [Raspberry Pi Imager](https://www.raspberrypi.com/software/)
- [ProtonVPN](https://protonvpn.com/download)
- [Spotify](https://www.spotify.com/download)
- [Discord](https://discord.com/download)
- [Steam](https://store.steampowered.com/about/)
- [Standard Notes](https://standardnotes.com/download)
- [Adobe Creative Cloud](https://www.adobe.com/creativecloud/desktop-app.html)
- [Autodesk Fusion 360](https://www.autodesk.com/products/fusion-360/personal)
- [Ultimaker Cura](https://ultimaker.com/software/ultimaker-cura)

VS Code Extensions:
- [Remote Development](https://marketplace.visualstudio.com/items?itemName=ms-vscode-remote.vscode-remote-extensionpack)
