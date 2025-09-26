#!/usr/bin/env bash

set -euo pipefail

# uncomment locale
sudo sed -i '/en_AU.UTF-8/s/# *//' /etc/locale.gen
sudo locale-gen
