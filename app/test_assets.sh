#!/bin/bash
find src/main/assets/overlays -type f -iname '*.xml' -exec xmlstarlet val {} \; | grep invalid
