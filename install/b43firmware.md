# Broadcom b43 firmware install

Perform an offline install of the [broadcom wireless firmware](https://wiki.archlinux.org/title/MacBookPro10,x#Wi-Fi) as follows.

On a separate computer:

1. Download from mirror [b43-fwcutter](https://archlinux.org/packages/core/x86_64/b43-fwcutter/)
1. Download snapshot and sources of the AUR [b43-firmwave package](https://aur.archlinux.org/packages/b43-firmware)
1. Copy to USB

On the target:

1. Mount the USB: `sudo mkdir -p /mnt/usb && sudo mount /dev/sdb1 /mnt/usb`
1. Run [b43firmware.sh](b43firmware.sh) to install b43-fwcutter, and make and install b43-firmware.
1. Restart
1. Run `impala`, or click on the WiFi network icon top right, and connect to your WiFi network.
