alias o='open .'
alias s='subl .'
alias ss='subl Source/typo3conf/ext/t3site/Sites/Main/Resources'

alias gitlog='clear;git log -40 --pretty=oneline;echo "... THE REST WERE CHOPPED OUT FOR BREVITY ..."'
alias git-unpushed='clear; git fetch --all; git log -40 --pretty=oneline origin/master..HEAD; echo "... THE REST WERE CHOPPED OUT FOR BREVITY ..."'
alias git-ignore-mode="git config core.filemode false; git submodule foreach \"git config core.filemode false\""

alias php-log='sudo tail -f /opt/boxen/log/php/*'
alias nginx-log='sudo tail -f /opt/boxen/log/nginx/*'
alias flush-dns="dscacheutil -flushcache;sudo killall -HUP mDNSResponder"

export PATH=$PATH:$HOME/.dotfiles/scripts/bin

export VAGRANT_DEFAULT_PROVIDER=vmware_fusion

export CLICOLOR=1
export LSCOLORS=ExFxCxDxBxegedabagacad
export RAILS_ENV=development
export RAKE_ENV=development
export XDEBUG_CONFIG="idekey=phpstorm1"

export PATH=bin:node_modules/.bin:/usr/local/bin:/usr/bin:/bin:$PATH
export PATH=/usr/sed-4.2/bin:$PATH

### Added by the Heroku Toolbelt
export PATH="/usr/local/heroku/bin:$PATH"

### Git completion
[ -f ~/.dotfiles/scripts/git-completion.sh ] && source ~/.dotfiles/scripts/git-completion.sh

# Non-repo-trackable things (passwords, auths, etc.)
[ -f ~/.dotfiles/.private ] && source ~/.dotfiles/.private

# Boxen thing
[ -f /opt/boxen/env.sh ] && source /opt/boxen/env.sh