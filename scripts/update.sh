
# Sync packages ---------------------------------------------------- /

header "Syncing package managers"

packception upgrade
packception update

# Sync application preference -------------------------------------- /

# Cyberduck
info "Syncing Cyberduck bookmarks"
sync_preferences("Cyberduck")

# SourceTree
info "Syncing SourceTree bookmarks"
sync_preferences("SourceTree")

# Sublime Text 3
info "Syncing Sublime Text 3 settings"
sync_preferences("Sublime\ Text\ 3/Packages")
sync_preferences("Sublime\ Text\ 3/Installed\ Packages")

# Update configurations -------------------------------------------- /

# Update Apache configuration
sudo cp /private/etc/apache2/httpd.conf $VENDOR/apache/httpd.conf

# Update PHP configuration
sudo cp /usr/local/etc/php/5.4/php.ini $VENDOR/php/php.ini

# Restart Apache
sudo apachectl -k restart

# Update some repositories ----------------------------------------- /

header "Update some third-party repositories"

# Apaxy
subheader "Updating Apaxy"
update_repository "$WORK/_apaxy"
cp $WORK/_apaxy/apaxy/htaccess.txt $WORK/.htaccess
perl -pi -e 's#/{FOLDERNAME}#http://localhost/_apaxy/apaxy#' $WORK/.htaccess

# Bootstrap
subheader "Updating Bootstrap"
update_repository "/Users/anahkiasen/Dropbox/WEB DESIGN/_github/bootstrap" "3.0.0-wip"
jekyll build

# Oh My Zsh
subheader "Updating Oh My ZSH"
update_repository "$HOME/.oh-my-zsh/"
