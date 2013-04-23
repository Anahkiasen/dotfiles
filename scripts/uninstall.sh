
# Remove Oh My Zsh
if [ -d "$HOME/.oh-my-zsh" ]; then
  source $HOME/.oh-my-zsh/tools/uninstall.sh
fi

# Clean up previous installations
sudo rm -rf ~/.rvm
sudo rm -rf ~/.npm
sudo rm -rf ~/.gem
sudo rm -rf ~/.oh-my-zsh
sudo rm -rf ~/.composer
sudo rm -rf ~/.bower
sudo rm -rf ~/.bundler
sudo rm -rf ~/.bashrc
sudo rm -rf ~/.vegas
sudo rm -rf /usr/local/

# Leftover ZSH files
sudo rm -rf ~/.zsh_history
sudo rm -rf ~/.zsh-update
sudo rm -rf ~/.zcompdump

# Clear Homebrew caches
sudo rm -rf ~/Library/Caches/Homebrew
sudo rm -rf ~/Library/Logs/Homebrew
sudo rm -rf /Library/Caches/Homebrew