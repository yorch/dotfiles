source ~/.bash_aliases
source ~/.bash_git

# RVM
[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm"

PATH=$PATH:$HOME/.rvm/bin # Add RVM to PATH for scripting
#PATH=/usr/local/bin:/usr/bin:$PATH

### Added by the Heroku Toolbelt
export PATH="/usr/local/heroku/bin:$PATH"

export EDITOR=vim
export BUNDLE_EDITOR=subl
export GIT_EDITOR=vim

#source $HOME/.hitch_export_authors

# Add the following to your ~/.bashrc or ~/.zshrc
#hitch() {
#  command hitch "$@"
#  if [[ -s "$HOME/.hitch_export_authors" ]] ; then source "$HOME/.hitch_export_authors" ; fi
#}
#alias unhitch='hitch -u'
# Uncomment to persist pair info between terminal instances
# hitch



# virtualenv should use Distribute instead of legacy setuptools
export VIRTUALENV_DISTRIBUTE=true

# Centralized location for new virtual environments
export PIP_VIRTUALENV_BASE=$HOME/Virtualenvs

# pip should only run if there is a virtualenv currently activated
export PIP_REQUIRE_VIRTUALENV=true

# cache pip-installed packages to avoid re-downloading
export PIP_DOWNLOAD_CACHE=$HOME/.pip/cache

# System wide PIP
syspip(){
   PIP_REQUIRE_VIRTUALENV="" pip "$@"
}