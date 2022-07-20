# Provisioning Scripts

## Usage

From a fresh OS install, run the following, entering your sudo user password when prompted:

macOS:
```
wget https://raw.githubusercontent.com/avidsapp/hardware-provisioning/master/mac.sh -O - | bash
```

Ubuntu:
```
wget https://raw.githubusercontent.com/avidsapp/hardware-provisioning/master/linux.sh -O - | bash
```
- Caveats:
    - Dropbox - run manually:
        ```
        cd ~ && wget -O - "https://www.dropbox.com/download?plat=lnx.x86_64" | tar xzf -

        # The following line will open a browser window to login to your Dropbox account
        ~/.dropbox-dist/dropboxd
        ```

## TO DO
Linux:
  - Fix Dropbox integration and create daemon
