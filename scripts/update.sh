
# Update some repositories ----------------------------------------- /

header "Update some third-party repositories"

# Apaxy
subheader "Updating Apaxy"
update_repository "$WORK/_apaxy"
cp $WORK/_apaxy/apaxy/htaccess.txt $WORK/.htaccess
perl -pi -e 's#/{FOLDERNAME}#http://localhost/_apaxy/apaxy#' $WORK/.htaccess

# Oh My Zsh
subheader "Updating Oh My ZSH"
update_repository "$HOME/.oh-my-zsh/"

# Packception

update_repository "$HOME/packception"

# Sync packages ---------------------------------------------------- /

header "Update package managers"

packception sync