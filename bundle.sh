#!/bin/bash
set -e

# Parse modinfo.json
version=$(jq -r '.version' modinfo.json)
modid=$(jq -r '.modid' modinfo.json)

bundle="$modid$version.zip"
rm *.zip &2> /dev/null || true
zip -r "$bundle" assets/ modinfo.json
