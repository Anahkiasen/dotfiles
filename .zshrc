export HISTFILE=~/.zsh_history
export HISTSIZE=10000
export SAVEHIST=10000

export ZPLUG_HOME=/usr/local/opt/zplug
source $ZPLUG_HOME/init.zsh

zplug 'zplug/zplug', hook-build:'zplug --self-manage'

# Plugins
zplug "lib/completion", from:oh-my-zsh
zplug "lib/directories", from:oh-my-zsh
zplug "lib/functions", from:oh-my-zsh
zplug "plugins/brew-cask", from:oh-my-zsh
zplug "plugins/fzf", from:oh-my-zsh
zplug "plugins/brew", from:oh-my-zsh
zplug "plugins/composer", from:oh-my-zsh
zplug "plugins/git-flow", from:oh-my-zsh
zplug "plugins/docker-compose", from:oh-my-zsh
# zplug "plugins/symfony", from:oh-my-zsh
zplug "plugins/git", from:oh-my-zsh
zplug "plugins/gitfast", from:oh-my-zsh
zplug "plugins/laravel", from:oh-my-zsh
zplug "plugins/z", from:oh-my-zsh

zplug "zsh-users/zsh-completions"
zplug "zsh-users/zsh-syntax-highlighting", defer:2
zplug "zsh-users/zsh-history-substring-search", defer:3

# Themes
# zplug 'dracula/zsh', as:theme
zplug "denysdovhan/spaceship-prompt", use:spaceship.zsh, from:github, as:theme

zplug load
