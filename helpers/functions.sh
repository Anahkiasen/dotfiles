
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

	# Remove current folder
	rm -rf $HOME/Library/Application\ Support/$folder

	# Sync folder
	ln -s ~/Dropbox/SYNC/$folder $HOME/Library/Application\ Support/$folder
}