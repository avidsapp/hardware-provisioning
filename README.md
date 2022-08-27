# Provisioning Scripts

To make life easier

## Usage

From a fresh OS install, run the following, entering your sudo user password when prompted:

macOS Catalina+:
```
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/avidsapp/hardware-provisioning/master/mac.sh)"
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
