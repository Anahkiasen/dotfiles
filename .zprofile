
# Package managers ------------------------------------------------- /

## NPM
export PATH=/usr/local/share/npm/bin:/usr/local/bin:$PATH

# Load the shell dotfiles ------------------------------------------ /

for file in ~/.{exports,aliases,functions}; do
  [ -r "$file" ] && source "$file"
done
unset file

export EDITOR='subl -w'