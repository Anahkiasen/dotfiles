header "Updating core files"

# Update core repository
cd $DOTFILES
git fetch -q origin master
git pull -q origin master

# Synchronize folders
rsync --exclude ".git/" --exclude "scripts" --exclude "helpers" --exclude "dotfiler" --exclude "packception" --exclude "README.md" -a . ~
success "Scripts and profiles updated"

# Update Packception
subheader "Update Packception"

cd packception
git fetch -q origin master
git pull -q origin master

# Update Apache configuration
rsync -a $VENDOR/apache/ /private/etc/apache2/

# Move binary
cp $DOTFILES/packception/packception /usr/local/bin/packception
cp $DOTFILES/dotfiler /usr/local/bin/dotfiler
chmod +x /usr/local/bin/dotfiler
chmod +x /usr/local/bin/packception
success "Binary updated"