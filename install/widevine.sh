#!/bin/bash

set -euo pipefail

# link chromium-widevine into helium so DRM protected videos can be played
# see https://github.com/imputnet/helium/issues/116#issuecomment-3668370766

mkdir -p ~/.config/net.imput.helium/WidevineCdm
echo -n '{"Path":"/usr/lib/chromium/WidevineCdm"}' > ~/.config/net.imput.helium/WidevineCdm/latest-component-updated-widevine-cdm

