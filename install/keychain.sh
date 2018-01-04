#!/bin/sh

curl -O -L http://developer.apple.com/certificationauthority/AppleWWDRCA.cer
security import AppleWWDRCA.cer  -k ~/Library/Keychains/login.keychain -A || true