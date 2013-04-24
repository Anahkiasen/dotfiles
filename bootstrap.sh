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

# Ask password upfront
sudo -v

DOTFILES=~/dotfiles
PACKAGES=$DOTFILES/scripts/packages

# Update core repository
cd $DOTFILES
git fetch origin master
git pull origin master

# Synchronize folders
rsync --exclude ".git/" --exclude "scripts" --exclude "bootstrap.sh" --exclude "README.md" -av . ~

# Install dependencies if they aren't ------------------------------ /

if [ ! -f "$HOME/.aliases" ]; then
  source $DOTFILES/scripts/setup.sh
fi

# Run updater ------------------------------------------------------ /

source $DOTFILES/scripts/update.sh