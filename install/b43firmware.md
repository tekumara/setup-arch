# Broadcom b43 firmware install

Perform an offline install of the [broadcom wireless firmware](https://wiki.archlinux.org/title/MacBookPro10,x#Wi-Fi) as follows.

On a separate computer:

1. Download [b43-fwcutter](https://archlinux.org/packages/core/x86_64/b43-fwcutter/) from [mirror here](https://archlinux.org/packages/core/x86_64/b43-fwcutter/download)
1. Download [snapshot](https://aur.archlinux.org/cgit/aur.git/snapshot/b43-firmware.tar.gz) AND [sources](https://github.com/minios-linux/b43-firmware/releases/download/b43-firmware/broadcom-wl-6.30.163.46.tar.bz2) of the AUR [b43-firmware package](https://aur.archlinux.org/packages/b43-firmware)
1. Copy to USB

On the target:

1. Mount the USB: `sudo mkdir -p /mnt/usb && sudo mount /dev/sdb1 /mnt/usb`
1. Run [b43firmware.sh](b43firmware.sh) to install b43-fwcutter, and make and install b43-firmware.
1. Restart
1. Run `impala`, or click on the WiFi network icon top right, and connect to your WiFi network.
