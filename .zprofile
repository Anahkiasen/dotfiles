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
PATH=vendor/bin:$PATH:$HOME/.composer/vendor/bin

## RVM
PATH=$PATH:$HOME/.rvm/bin

# RVM
[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*

## NVM
export NVM_DIR=~/.nvm
source $(brew --prefix nvm)/nvm.sh