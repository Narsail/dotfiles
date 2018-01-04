#!/bin/sh
sudo -v

# Keep-alive: update existing `sudo` time stamp until `.osx` has finished
while true; do sudo -n true; sleep 60; kill -0 "$$" || exit; done 2>/dev/null &

source install/homebrew.sh
source install/python.sh
sudo -u $USER source install/ruby.sh
source install/zsh.sh
source install/docker.sh
source install/nvim.sh
source install/keychain.sh
source install/osx.sh

stow config
stow git
stow ruby
stow ssh

rm ~/.zshrc
stow zsh

stow -t "$HOME/Library/Application Support/Sublime Text 3" sublime

mkdir -p "$HOME/Library/Developer/Xcode/UserData/FontAndColorThemes"
stow -t "$HOME/Library/Developer/Xcode/UserData/FontAndColorThemes" xcode

dark-mode on
brew cleanup

tput bel && sleep 0.33s && tput bel && sleep 0.33s && tput bel && sleep 0.33s && tput bel && sleep 0.33s && tput bel && sleep 0.33s && tput bel && sleep 0.33s && tput bel && sleep 0.33s && tput bel && sleep 0.33s && tput bel && sleep 0.33s && tput bel && sleep 0.33s
echo "Please reboot!"
