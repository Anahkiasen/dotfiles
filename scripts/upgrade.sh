header "Updating core files"

# Update core repository
cd $DOTFILES
git fetch -q origin master
git pull -q origin master

# Synchronize folders
rsync --exclude ".git/" --exclude "helpers" --exclude "scripts" --exclude "dotfiler" --exclude "vendor" --exclude "README.md" -a . ~
success "Scripts and profiles updated"

# Update Apache configuration
success "Apache configuration updated"
rsync --exclude "hosts" -a $VENDOR/apache/ /private/etc/apache2/
sudo cp $VENDOR/apache/hosts /private/etc/hosts
sudo apachectl -k restart

# Update PHP configuration
success "PHP configuration updated"
sudo cp $VENDOR/php/php.ini /usr/local/etc/php/5.4/php.ini

# Move binary
cp $DOTFILES/dotfiler /usr/local/bin/dotfiler
chmod +x /usr/local/bin/dotfiler
success "Binary updated"