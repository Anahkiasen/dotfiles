#!/bin/bash

# REMOVE PREVIOUS INSTALLATION ------------------------------------- /

header "Uninstall previous installation"
source $DOTFILES/scripts/uninstall.sh

header "Installing dependencies"

# OH MY ZSH -------------------------------------------------------- /

# Install Oh My Zsh
info "Installing Oh My Zsh"
git clone git://github.com/robbyrussell/oh-my-zsh.git ~/.oh-my-zsh

# Switch default shell
chsh -s /bin/zsh

# Reload zsh
source ~/.zshrc
source ~/.zprofile

# HOMEBREW --------------------------------------------------------- /

# Install Packception
ruby -e "$(curl -fsSL https://raw.github.com/Anahkiasen/packception/master/go)"

# Install Homebrew
packception setup homebrew
packception update homebrew

# Load Mongo and MySQL at startup
ln -sfv /usr/local/opt/mongodb/*.plist ~/Library/LaunchAgents
ln -sfv /usr/local/opt/mysql/*.plist ~/Library/LaunchAgents
launchctl load ~/Library/LaunchAgents/homebrew.mxcl.mongodb.plist
launchctl load ~/Library/LaunchAgents/homebrew.mxcl.mysql.plist

# Symlink PHPLib
symlink $(brew list php55 | grep libphp) /usr/local/lib/libphp5.so

# NPM -------------------------------------------------------------- /

packception setup npm
packception update npm

# RVM -------------------------------------------------------------- /

# Install RVM
packception setup rvm
source "$HOME/.rvm/scripts/rvm"

# Clean up
rm -rf ~/.bashrc

# Install and load Ruby
packception update gem
rvm use $rubyVersion

# Composer --------------------------------------------------------- /

packception setup composer
packception update composer

# Applications ----------------------------------------------------- /

# PHPMyAdmin
mkdir /usr/local/share/phpmyadmin/config

# Apaxy
info "Installing Apaxy"
git clone git://github.com/AdamWhitcroft/Apaxy.git $WORK/_apaxy

# Add Sublime binary
ln -s /Applications/Sublime\ Text.app/Contents/SharedSupport/bin/subl /usr/local/bin/subl

# Configure Mac ---------------------------------------------------- /

info "Configuring Mac OSX"
source ~/.osx
