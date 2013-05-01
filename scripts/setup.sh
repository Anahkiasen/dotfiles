#!/bin/bash

MAMP=/Applications/MAMP/htdocs

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

# Install Homebrew
info "Installing Homebrew"
ruby -e "$(curl -fsSL https://raw.github.com/mxcl/homebrew/go)"

# Update Homebrew and create Cellar
brew update

# Tap required repositories
brew tap josegonzalez/homebrew-php
brew tap homebrew/dupes
brew tap homebrew/versions

# Install dependencies
source $PACKAGES/homebrew.sh

# Load Mongo at startup
ln -sfv /usr/local/opt/mongodb/*.plist ~/Library/LaunchAgents

# NPM -------------------------------------------------------------- /

# Update to latest
info "Installing NPM"
npm update npm -g

# Install dependencies
ruby $PACKAGES/npm.rb

# RVM -------------------------------------------------------------- /

# Install RVM
info "Installing RVM"
curl -L https://get.rvm.io | bash -s stable --autolibs=4
source "$HOME/.rvm/scripts/rvm"

# Clean up
rm -rf ~/.bashrc

# Install and load Ruby
rubyVersion=1.9.3
info "Installing Ruby $rubyVersion"
rvm install $rubyVersion
rvm use $rubyVersion

# Update Bundler
sudo gem update --system

# Install required gems
ruby $PACKAGES/rubygems.rb

# Composer --------------------------------------------------------- /

# Create Composer folder
info "Installing Composer"
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

# Apaxy

info "Installing Apaxy"
git clone git://github.com/AdamWhitcroft/Apaxy.git $MAMP/_apaxy
cp $MAMP/_apaxy/apaxy/htaccess.txt $MAMP/.htaccess
perl -pi -e 's#/{FOLDERNAME}#http://localhost:8888/_apaxy/apaxy#' $MAMP/.htaccess

# Sublime Text 3

info "Installing Sublime Text 3 settings"

# Remove current Sublime settings
rm -rf $HOME/Library/Application\ Support/Sublime\ Text\ 3/Packages
rm -rf $HOME/Library/Application\ Support/Sublime\ Text\ 3/Installed\ Packages

# Load from Dropbox
ln -s ~/Dropbox/SYNC/ST3/Installed\ Packages $HOME/Library/Application\ Support/Sublime\ Text\ 3
ln -s ~/Dropbox/SYNC/ST3/Packages $HOME/Library/Application\ Support/Sublime\ Text\ 3

# Configure Mac ---------------------------------------------------- /

info "Configuring Mac OSX"
source ~/.osx
