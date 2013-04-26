
# Sync packages ---------------------------------------------------- /

header "Syncing package managers"

source $PACKAGES/homebrew.sh
source $PACKAGES/rubygems.sh
source $PACKAGES/npm.sh

# Update the various package managers ------------------------------ /

header "Update package managers"

# Rubygems
sudo gem update
sudo gem update --system
sudo gem cleanup

# Node Package Manager
sudo npm update -g
sudo npm update npm -g
sudo npm cache clean

# Composer and PHP-CS-Fixer
sudo composer self-update
sudo php-cs-fixer self-update

cd /usr/local/composer
sudo composer update

# RVM
sudo rvm get latest

# Homebrew
brew update
brew upgrade
brew cleanup

# Update some repositories ----------------------------------------- /

header "Update PHPMyAdmin and Oh My Zsh"

# PHPMyAdmin
cd /Applications/MAMP/bin/phpMyAdmin
git reset --hard -q
git fetch origin master -q
git pull origin master

# Oh My Zsh
cd "$HOME/.oh-my-zsh/"
git reset --hard -q
git fetch origin master -q
git pull origin master