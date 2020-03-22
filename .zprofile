# Use VSCode as default editor
export EDITOR='code'

# Prefer US English and use UTF-8
export LANG="en_US"
export LC_ALL="en_US.UTF-8"

# Always enable colored `grep` output
export GREP_OPTIONS="--color=auto"

# Hub
export GITHUB_USER="Anahkiasen"
export COMPOSER_DISABLE_XDEBUG_WARN=true

# Load the shell dotfiles ------------------------------------------ /

for file in ~/.{aliases,functions}; do
  [ -r "$file" ] && source "$file"
done

# Package managers ------------------------------------------------- /

## Homebrew
PATH="/usr/local/bin:/usr/local/sbin:$PATH"

## NPM
PATH="node_modules/.bin:$HOME/.config/yarn/global/node_modules/.bin:$PATH"

## Composer
PATH="vendor/bin:$HOME/.composer/vendor/bin:$PATH"
