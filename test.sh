#!/bin/sh
command -v bundle && bundle install --dry-run
command -v brew && brew bundle --dry-run