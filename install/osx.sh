#!/bin/sh

echo "Removing all (default) app icons from the Dock"
defaults write com.apple.dock persistent-apps -array "";

echo "Checking for software updates daily, not just once per week"
defaults write com.apple.SoftwareUpdate ScheduleFrequency -int 1;

echo "Showing all filename extensions"
defaults write NSGlobalDomain AppleShowAllExtensions -bool true;

echo "Automatically opening a new Finder window when a volume is mounted"
defaults write com.apple.frameworks.diskimages auto-open-ro-root -bool true
defaults write com.apple.frameworks.diskimages auto-open-rw-root -bool true
defaults write com.apple.finder OpenWindowForNewRemovableDisk -bool true;

echo "Using the list view in all Finder windows by default"
defaults write com.apple.finder FXPreferredViewStyle -string "Nlsv";

echo "Using plain text mode for necleanmymacw TextEdit documents"
defaults write com.apple.TextEdit RichText -int 0;

echo "Enabling open and save files as UTF-8 in TextEdit by default"
defaults write com.apple.TextEdit PlainTextEncoding -int 4
defaults write com.apple.TextEdit PlainTextEncodingForWrite -int 4;

echo "Showing the battery life as a percentage"
defaults write com.apple.menuextra.battery ShowPercent -string "YES";