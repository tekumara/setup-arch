#!/bin/bash

set -eu
set -x

sudo pacman -U --noconfirm /mnt/usb/b43-fwcutter-019-6-x86_64.pkg.tar.zst
tar -xvf /mnt/usb/b43-firmware.tar -C /tmp/
cp /mnt/usb/broadcom-wl-6.30.163.46.tar.bz2 /tmp/b43-firmware/
cd /tmp/b43-firmware
# point source at local file
sed -i -E 's|https://.*/(broadcom-wl.6.30.163.46.tar.bz2)|\1|' PKGBUILD
makepkg -si --noconfirm
