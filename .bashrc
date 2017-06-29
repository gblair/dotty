

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
source $DIR/aliases

export PATH=$PATH:$HOME/.dotfiles/scripts/bin

export EDITOR=vim

export CLICOLOR=1
export LSCOLORS=ExFxCxDxBxegedabagacad
export RAILS_ENV=development
export RAKE_ENV=development
export XDEBUG_CONFIG="idekey=phpstorm1"

export PATH=bin:node_modules/.bin:vendor/bin:~/.composer/vendor/bin:/usr/local/bin:/usr/bin:/bin:$PATH
export PATH=/usr/sed-4.2/bin:$PATH

# Git resolve submodule! https://github.com/lthurston/git-resolve-submodule
export GOPATH=${HOME}/go
export GOBIN=$GOPATH/bin
export PATH=$GOBIN:$PATH

### Added by the Heroku Toolbelt
export PATH="/usr/local/heroku/bin:$PATH"

### Git completion
[ -f ~/.dotfiles/scripts/git-completion.sh ] && source ~/.dotfiles/scripts/git-completion.sh

# Non-repo-trackable things (passwords, auths, etc.)
[ -f ~/.sec/aliases ] && source ~/.sec/aliases

# Boxen thing
[ -f /opt/boxen/env.sh ] && source /opt/boxen/env.sh

# Add all ssh keys to keychain
ssh-add -kA >/dev/null 2>&1

