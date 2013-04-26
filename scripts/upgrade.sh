header "Updating core files"

# Update core repository
cd $DOTFILES
git fetch -q origin master
git pull -q origin master

# Synchronize folders
rsync --exclude ".git/" --exclude "scripts" --exclude "helpers" --exclude "dotfiler" --exclude "README.md" -a . ~
success "Scripts and profiles updated"

# Move binary
chmod +x ~/dotfiler
mv ~/dotfiler /usr/local/bin/dotfiler
success "Binary updated"