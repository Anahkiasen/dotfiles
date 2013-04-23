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
rsync --exclude ".git/" --exclude "bootstrap.sh" --exclude "README.md" -av . ~

# Install dependencies
source ~/scripts/setup.sh