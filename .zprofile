
# Package managers ------------------------------------------------- /

## PHP and Composer
export PATH=/Applications/MAMP/bin/php/php5.4.10/bin:$PATH

## NPM
export PATH=/usr/local/share/npm/bin:/usr/local/bin:$PATH

# Load the shell dotfiles ------------------------------------------ /

for file in ~/.{exports,aliases,functions}; do
  [ -r "$file" ] && source "$file"
done
unset file

export EDITOR='subl -w'