#!/bin/sh

echo Installing homebrew
$(which ruby) -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

echo 'Verifying Homebrew install'
brew doctor

echo Installing Homebrew bundler
brew tap Homebrew/bundle

open -a "App Store"

echo Installing Homebrew bundled dependencies
brew bundle --file=$HOME/.dotfiles/Brewfile

echo "Cleaning up homebrew cache..."
brew cleanup > /dev/null 2>&1

echo "Would you like to set Google Chrome to be your default browser?"
open -a "Google Chrome" --args --make-default-browser