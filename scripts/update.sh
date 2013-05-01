
# Sync packages ---------------------------------------------------- /

header "Syncing package managers"

ruby $PACKAGES/composer.rb
ruby $PACKAGES/homebrew.rb
ruby $PACKAGES/rubygems.rb
ruby $PACKAGES/npm.rb
ruby $PACKAGES/rvm.rb

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