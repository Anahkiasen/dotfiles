require_relative "packception/lib/String.rb"

# Remove Oh My Zsh
if File.exists?(ENV['HOME'] + '/.oh-my-zsh')
  system 'bash ~/.oh-my-zsh/tools/uninstall.sh'
end

# Clean up package managers
system 'ruby ~/dotfiles/packception/packception remove'

# Clean up previous installations
dotfolders = ["oh-my-zsh", "bower", "bundler", "bashrc", "vegas", "zsh_history", "zsh-update", "zcomdump"]
dotfolders.each { |folder|
  folder = "~/.#{folder}" unless folder.start_with?('/')

  info "Removing #{folder}\n"
  FileUtils.rm_rf "#{folder}"
}