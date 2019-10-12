#!/bin/sh

BASE_URL="https://github.com/mayswind/AriaNg"
LATEST_TAG=$(curl -L -# -C - "${BASE_URL}/releases/latest" | sed -En 's/.+\/tag\/([.0-9A-Za-z]+)".+/\1/p')

# https://github.com/mayswind/AriaNg/releases/download/1.1.4/AriaNg-1.1.4-AllInOne.zip
curl -L -# -C - "${BASE_URL}/releases/download/${LATEST_TAG}/AriaNg-${LATEST_TAG}-AllInOne.zip" -o new.zip 

unzip new.zip && rm -f new.zip


