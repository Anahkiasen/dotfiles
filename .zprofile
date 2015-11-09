APP_ENV=local

# Load the shell dotfiles ------------------------------------------ /

for file in ~/.{exports,aliases,functions}; do
  [ -r "$file" ] && source "$file"
done
unset file

# Package managers ------------------------------------------------- /

## Homebrew
PATH=/usr/local/bin:/usr/local/sbin:$PATH

## NPM
PATH=node_modules/.bin:/usr/local/share/npm/bin:$PATH

## Composer
PATH=vendor/bin:$HOME/.composer/vendor/bin:$PATH
