#!/bin/bash
if [ ! -z "$(command -v xmlstarlet)" ]; then
    find src/main/assets/overlays -type f -iname '*.xml' -exec xmlstarlet val {} \; | grep invalid
else
    exit 0
fi
