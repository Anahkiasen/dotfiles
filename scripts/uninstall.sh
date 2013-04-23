
# Remove Oh My Zsh
if [ -d "$HOME/.oh-my-zsh" ]; then
  source $HOME/.oh-my-zsh/tools/uninstall.sh
fi

# Clean up previous installations
dotfolders=("rvm" "npm" "gem" "oh-my-zsh" "composer" "bower" "bundler" "bashrc" "vegas" "zsh_history" "zsh-update" "zcomdump" "/usr/local/" )
for folder in "${dotfolders[@]}"
do
  if [[ $folder != /* ]]; then
    folder="~/.$folder"
  fi

  echo "Removing $folder"
  sudo rm -rf $folder
done

# Clear Homebrew caches
sudo rm -rf ~/Library/Caches/Homebrew
sudo rm -rf ~/Library/Logs/Homebrew
sudo rm -rf /Library/Caches/Homebrew