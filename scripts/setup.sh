#!/bin/bash

# Ask password upfront
sudo -v

# REMOVE PREVIOUS INSTALLATION ------------------------------------- /

source ~/dotfiles/scripts/uninstall.sh

# OH MY ZSH -------------------------------------------------------- /

# Install Oh My Zsh
git clone git://github.com/robbyrussell/oh-my-zsh.git ~/.oh-my-zsh

# Switch default shell
chsh -s /bin/zsh

# HOMEBREW --------------------------------------------------------- /

# Install Homebrew
ruby -e "$(curl -fsSL https://raw.github.com/mxcl/homebrew/go)"

# Update Homebrew and create Cellar
brew update

# Tap required repositories
brew tap josegonzalez/homebrew-php
brew tap homebrew/dupes
brew tap homebrew/versions

# Install dependencies
brew install git node git-ftp mongodb php54 php54-mongo php54-mcrypt composer

# Load Mongo at startup
ln -sfv /usr/local/opt/mongodb/*.plist ~/Library/LaunchAgents

# NPM -------------------------------------------------------------- /

# Update to latest
npm update npm -g

# Install dependencies
npm install coffee-script kss bower requirejs clean-css uglify-js -g

# RVM -------------------------------------------------------------- /

# Install RVM
curl -L https://get.rvm.io | bash -s stable --autolibs=4
source "$HOME/.rvm/scripts/rvm"

# Clean up
rm -rf ~/.bashrc

# Install and load Ruby
rvm install 1.9.3
rvm use 1.9.3

# Update Bundler
sudo gem update --system

# Install required gems
sudo gem install sass compass genghisapp --pre
sudo gem install susy bson_ext

# Composer --------------------------------------------------------- /

# Create Composer folder
mkdir /usr/local/composer
cd /usr/local/composer

# Create Schema
composer self-update
composer init --no-interaction --name="anahkiasen/dependencies" --description="Dependencies" --stability="dev"
composer require phpunit/phpunit:dev-master fabpot/php-cs-fixer:dev-master --no-update
composer config bin-dir "/usr/local/bin/"

# Install dependencies
sudo composer update
php-cs-fixer self-update

# Applications ----------------------------------------------------- /

# PHPMyAdmin 4
# cd /Applications/MAMP/bin
# rm -rf phpMyAdmin
# git clone git://github.com/phpmyadmin/phpmyadmin.git phpMyAdmin

# Sublime Text 3

# Remove current Sublime settings
rm -rf $HOME/Library/Application\ Support/Sublime\ Text\ 3/Packages
rm -rf $HOME/Library/Application\ Support/Sublime\ Text\ 3/Installed\ Packages

# Load from Dropbox
ln -s ~/Dropbox/SYNC/ST3/Installed\ Packages $HOME/Library/Application\ Support/Sublime\ Text\ 3
ln -s ~/Dropbox/SYNC/ST3/Packages $HOME/Library/Application\ Support/Sublime\ Text\ 3

# Run updater ------------------------------------------------------ /

source ~/dotfiles/scripts/update.sh

# Configure Mac ---------------------------------------------------- /

source ~/.osx
