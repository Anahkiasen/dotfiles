
# Package managers ------------------------------------------------- /

## RVM
[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm"
export PATH=/Users/laurentchastel/.rvm/bin:$PATH
export PATH=/Users/laurentchastel/.rvm/gems/ruby-1.9.3-p392@global/bin:$PATH

## PHP
export PATH=/Applications/MAMP/bin/php/php5.4.10/bin:$PATH

## NPM
export PATH=/usr/local/share/npm/bin:$PATH

# Aliases ---------------------------------------------------------- /

## Application-specific
alias bootstrap="cd /Users/laurentchastel/Dropbox/WEB\ DESIGN/_github/bootstrap && jekyll --server 1234 "
alias psr="php-cs-fixer"
alias recoffee="coffee -o js -cw coffee"
alias recompass="compass clean && compass compile"
alias remigrate="php artisan migrate:refresh --seed"
alias unpack="ruby \"/Applications/MAMP/htdocs/_newsletters/_mailcrunch/mailcrunch\""

## Shortcuts
alias deploy="git ftp push -v && git push"
alias prettylog="git log --pretty=format:'%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset' --abbrev-commit"
alias rmf="rm -rf"

## Update all
alias update-all="zsh ~/3793665/update.sh"

# Functions -------------------------------------------------------- /

export EDITOR='subl -w'

#export PATH=:/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:/usr/X11/bin:/usr/local/git/bin:

export LANG=en_US.UTF-8