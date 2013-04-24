#!/bin/bash

###
# Bootstrapping script
#
# Current unboxing time - 0:50
# Dependencies
# - Xcode
# - MAMP
# - Sublime Text 3
###

# Update core repository
cd ~/dotfiles
git fetch origin master
git pull origin master

# Synchronize folders
rsync --exclude ".git/" --exclude "scripts" --exclude "bootstrap.sh" --exclude "README.md" -av . ~

# Install dependencies if they aren't
if [ ! -f "$HOME/.aliases" ]; then
  source ~/dotfiles/scripts/setup.sh
fi