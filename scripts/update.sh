# PEAR
sudo pear upgrade -a
sudo pecl upgrade -a

# Rubygems
sudo gem update
sudo gem update --system
sudo gem cleanup

# Node Package Manager
sudo npm update -g
sudo npm update npm -g
sudo npm cache clean

# Composer and PHP-CS--FIXER
sudo composer self-update
sudo php-cs-fixer self-update

# RVM
sudo rvm get latest

# Homebrew
brew update
brew upgrade
brew cleanup

# PHPMyAdmin
cd /Applications/MAMP/bin/phpMyAdmin
git reset --hard
git fetch origin master
git pull origin master

# Laravel 4
cd /Applications/MAMP/htdocs/app
git reset --hard
git fetch origin develop
git pull origin develop
composer update

# Oh My Zsh
cd /Users/laurentchastel/.oh-my-zsh/
git reset --hard
git fetch origin master
git pull origin master