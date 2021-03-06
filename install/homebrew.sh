#!/bin/sh

echo Installing homebrew
$(which ruby) -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

echo 'Verifying Homebrew install'
brew doctor

echo Installing Homebrew bundler
brew tap Homebrew/bundle

echo Tapping Homebrew Fonts
brew tap caskroom/fonts

open -a "App Store"

echo Installing Homebrew bundled dependencies
brew bundle --file=$HOME/.dotfiles/Brewfile

echo "Cleaning up homebrew cache..."
brew cleanup > /dev/null 2>&1
