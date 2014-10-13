DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
source $DIR/aliases

export PATH=$PATH:$HOME/.dotfiles/scripts/bin

export VAGRANT_DEFAULT_PROVIDER=vmware_fusion

export CLICOLOR=1
export LSCOLORS=ExFxCxDxBxegedabagacad
export RAILS_ENV=development
export RAKE_ENV=development
export XDEBUG_CONFIG="idekey=phpstorm1"

export PATH=bin:node_modules/.bin:/usr/local/bin:/usr/bin:/bin:$PATH
export PATH=/usr/sed-4.2/bin:$PATH

# Git resolve submodule! https://github.com/lthurston/git-resolve-submodule
export GOPATH=${HOME}/go
export GOBIN=$GOPATH/bin
export PATH=$GOBIN:$PATH

# https://github.com/lthurston/git-resolve-submodule
function cm {
  path=`git resolve-submodule $1`
  if [ $? -eq 0 ]; then
    cd $path
  else
    echo 'No se puede.'
  fi
}


### Added by the Heroku Toolbelt
export PATH="/usr/local/heroku/bin:$PATH"

### Git completion
[ -f ~/.dotfiles/scripts/git-completion.sh ] && source ~/.dotfiles/scripts/git-completion.sh

# Non-repo-trackable things (passwords, auths, etc.)
[ -f ~/.dotfiles/.private ] && source ~/.dotfiles/.private

# Boxen thing
[ -f /opt/boxen/env.sh ] && source /opt/boxen/env.sh
