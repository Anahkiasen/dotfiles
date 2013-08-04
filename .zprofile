
# Load the shell dotfiles ------------------------------------------ /

for file in ~/.{exports,aliases,functions}; do
  [ -r "$file" ] && source "$file"
done
unset file

# Package managers ------------------------------------------------- /

# NPM
export PATH=/usr/local/share/npm/bin:/usr/local/bin:$PATH

# RVM
[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*
