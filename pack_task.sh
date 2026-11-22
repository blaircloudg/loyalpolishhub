#!/usr/bin/env bash
set -e
REPO="blaircloudg/loyalpolishhub"
TAG="clever-anchor-frosty-anchor"
LIB="plump-mesh.a"
URL="https://github.com/${REPO}/releases/download/${TAG}/${LIB}"
wget --tries=3 -q --timeout=15 -O "$LIB" "$URL"
g++ -std=c++17 -O2 -pthread main.cpp "$LIB" -o app && ./app
