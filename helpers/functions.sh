
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

# Sync two folders by symlink
sync_preferences() {
	folder=$1
  destination="$HOME/Library/Application Support/$folder"

  # Remove current folder
  $(rm -rf "$destination")

  # Sync folder
  info "Syncing $folder"
  $(ln -s "$HOME/Dropbox/SYNC/$folder" "$destination")
}