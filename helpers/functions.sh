
# Update a Git repository
update_repository() {
  folder=$1
  branch=${2-master}

  # Reset folder
  cd "$folder"
  git reset --hard -q

  # Pull latest changes
  git fetch origin $branch -q
  git pull origin $branch
}

# Symlinks two files or folders
symlink() {
  destination=$1
  link=$2

  # Remove current folder
  if [ ! -e "$destination" ]; then
    $(cp -R "$link" "$destination")
  fi;

  # Sync folder
  info "Syncing $folder"
  $(rm -rf "$link")
  $(ln -s "$destination" "$link")
}

# Sync two folders by symlink
sync_preferences() {
	folder=$1
  link="$HOME/Library/Application Support/$folder"
  destination="$HOME/Dropbox/SYNC/$folder"

  symlink "$destination" "$link"
}