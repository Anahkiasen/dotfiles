header "Updating core files"

# Update Dotfiler -------------------------------------------------- /

# Update core repository
cd $DOTFILES
git fetch -q origin master
git pull -q origin master

# Synchronize folders
rsync --exclude ".git/" --exclude "helpers" --exclude "scripts" --exclude "dotfiler" --exclude "vendor" --exclude "README.md" -a . ~
success "Scripts and profiles updated"

# Move binary
cp $DOTFILES/dotfiler /usr/local/bin/dotfiler
chmod +x /usr/local/bin/dotfiler
success "Binary updated"

# Sync application preferences ------------------------------------- /

# Cyberduck
sync_preferences "Cyberduck"

# SourceTree
sync_preferences "SourceTree"

# Sublime Text 3
sync_preferences "Sublime Text 3/Packages"
sync_preferences "Sublime Text 3/Installed Packages"

# Update Apache and PHP configuration ------------------------------ /

# Update Apache configuration
rsync --exclude "hosts" -a $VENDOR/apache/ /private/etc/apache2/
sudo cp $VENDOR/apache/hosts /private/etc/hosts
sudo cp /private/etc/apache2/httpd.conf $VENDOR/apache/httpd.conf
success "Apache configuration updated"

# Update PHP configuration
sudo cp $VENDOR/php/php.ini /usr/local/etc/php/5.4/php.ini
success "PHP configuration updated"

# Restart Apache
sudo apachectl -k restart