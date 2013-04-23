
# Clean up previous installations
sudo rm -rf ~/.rvm
sudo rm -rf ~/.npm
sudo rm -rf ~/.gem
sudo rm -rf ~/.composer
sudo rm -rf ~/.bower
sudo rm -rf ~/.bundler
sudo rm -rf /usr/local/
sudo rm -rf ~/Library/Caches/Homebrew
sudo rm -rf ~/Library/Logs/Homebrew
sudo rm -rf /Library/Caches/Homebrew

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

# Reload MongoDB
launchctl unload ~/Library/LaunchAgents/homebrew.mxcl.mongodb.plist
launchctl load ~/Library/LaunchAgents/homebrew.mxcl.mongodb.plist

# NPM -------------------------------------------------------------- /

# Update to latest
npm update npm -g

# Install dependencies
npm install coffee-script kss bower -g

# RVM -------------------------------------------------------------- /

# Install RVM
curl -L https://get.rvm.io | bash -s stable --autolibs=4

# Install and load Ruby
rvm install 1.9.3
rvm use 1.9.3

# Update Bundler
sudo gem update --system

# Install required gems
sudo gem install sass compass genghisapp --pre
sudo gem install susy

# Composer --------------------------------------------------------- /

# Create Composer folder
mkdir /usr/local/composer
cd /usr/local/composer

# Create Schema
composer init -n --name="anahkiasen/dependencies" --description="Local dependencies" --require="phpunit/phpunit:dev-master" --require="fabpot/php-cs-fixer:dev-master" --stability="dev"
composer config bin-dir "/usr/local/bin/"

# Install dependencies
composer update
php-cs-fixer self-update