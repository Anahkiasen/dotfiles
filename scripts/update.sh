
update_repository() {
  folder=$1
  branch=${2-master}
  cd "$folder"
  git reset --hard -q
  git fetch origin $branch -q
  git pull origin $branch
}

# Sync packages ---------------------------------------------------- /

header "Syncing package managers"

packception upgrade
packception update

# Update some repositories ----------------------------------------- /

header "Update PHPMyAdmin and Oh My Zsh"

# Apaxy
subheader "Updating Apaxy"
update_repository "$MAMP/_apaxy"
cp $MAMP/_apaxy/apaxy/htaccess.txt $MAMP/.htaccess
perl -pi -e 's#/{FOLDERNAME}#http://localhost/_apaxy/apaxy#' $MAMP/.htaccess

# PHPMyAdmin
subheader "Updating PHPMyAdmin"
update_repository "/Applications/MAMP/bin/phpMyAdmin"

# Bootstrap
subheader "Updating Bootstrap"
update_repository "/Users/anahkiasen/Dropbox/WEB DESIGN/_github/bootstrap" "3.0.0-wip"
jekyll build

# Oh My Zsh
subheader "Updating Oh My ZSH"
update_repository "$HOME/.oh-my-zsh/"
