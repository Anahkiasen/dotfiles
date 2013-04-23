
# Clean up previous installations
rm -rf ~/.rvm
rm -rf ~/.npm
rm -rf ~/.gem
rm -rf ~/.composer
rm -rf ~/.bower
rm -rf ~/.bundler
rm -rf /usr/local/

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
brew install git node git-ftp composer mongodb php-cs-fixer php54 php54-mongo php54-mcrypt

# Update some of the scripts to latest
composer self-update
php-cs-fixer self-update

# NPM -------------------------------------------------------------- /

# Update to latest
npm update npm -g

# Install dependencies
npm install coffee-script kss bower -g

# RVM -------------------------------------------------------------- /

# Install RVM
curl -L https://get.rvm.io | bash --autolibs=enabled

# Install and load Ruby
rvm install 1.9.3
rvm use 1.9.3

# Update Bundler
sudo gem update --system

# Install required gems
gem install sass compass genghisapp --pre
gem install susy