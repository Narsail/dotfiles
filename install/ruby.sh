#!/bin/sh

echo Installing rvm
gpg --keyserver hkp://pgp.mit.edu --recv-keys 409B6B1796C275462A1703113804BB82D39DC0E3
curl -sSL https://get.rvm.io | bash -s stable 

echo Installing latest version of ruby
rvm install ruby --latest --with-gems="bundler"

source $HOME/.rvm/scripts/rvm

echo "Updating Rubygems"
gem update —system

echo "Updating bundler"
gem update bundler

echo Installing listed gems
bundle install --system --gemfile=Gemfile --jobs=$(sysctl -n hw.ncpu) --retry=3