
# Sync packages ---------------------------------------------------- /

header "Syncing package managers"

source $PACKAGES/homebrew.sh
source $PACKAGES/rubygems.sh
ruby $PACKAGES/npm.rb

# Update the various package managers ------------------------------ /

header "Update package managers"

# Rubygems
subheader "Updating Rubygems"
sudo gem update
sudo gem update --system
sudo gem cleanup

# Node Package Manager
subheader "Updating NPM"
sudo npm update -g
sudo npm update npm -g
sudo npm cache clean

# Composer and PHP-CS-Fixer
subheader "Updating Composer"
sudo composer self-update
sudo php-cs-fixer self-update

cd /usr/local/composer
sudo composer update

# RVM
subheader "Updating Ruby"
sudo rvm get latest

# Homebrew
subheader "Updating Homebrew"
brew update
brew upgrade
brew cleanup

# Update some repositories ----------------------------------------- /

header "Update PHPMyAdmin and Oh My Zsh"

# PHPMyAdmin
subheader "Updating PHPMyAdmin"
cd /Applications/MAMP/bin/phpMyAdmin
git reset --hard -q
git fetch origin master -q
git pull origin master

# Oh My Zsh
subheader "Updating Oh My ZSH"
cd "$HOME/.oh-my-zsh/"
git reset --hard -q
git fetch origin master -q
git pull origin master