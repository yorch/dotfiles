# ALIASES

#general commands
alias rr='bundle exec rake routes | grep'
alias dotfiles='cd ~/dotfiles'
alias snip='cd ~/.vim/vim-addons/github-enricribas-snipmate-snippets/'
alias did='idonethis'
alias ali='vi ~/.bash_aliases'
alias reload='. ~/.bashrc'
alias inf='cd ~/Code/influitive-app'

#postgres
alias pg_start='pg_ctl -D /usr/local/var/postgres -l /usr/local/var/postgres/server.log start'
alias pg_stop='pg_ctl -D /usr/local/var/postgres stop'

#mysql
alias mysql_start='mysql.server start'
alias mysql_stop='mysql.server stop'

#ruby
alias irbs="irb --simple-prompt"

#git commands
alias gc="git commit -m "
alias gco="git checkout "
alias dev="git checkout development"
alias gb="git branch -v"
alias gs="git status --short"
alias gd='git diff'
alias ga="git add . "
alias gu="git reset HEAD "
alias gp='rspec spec && git push origin development'
alias gpl='git pull origin development'
alias gm='git merge development'
alias gff="git flow feature"
alias gpd="git push origin development"
alias glg='git log --color --decorate --oneline --graph'
alias git_reset_my_branch='git reset --hard HEAD'
alias push='git pull origin && bundle exec rake spec && git push origin'
alias git_make_alias='git config alias.'
alias gmt='git mergetool -y'
alias gm='git merge'
alias pr='hub pull-request -b development -h influitive/influitive-app:'

# rails development
alias taild='tail -f log/development.log'
alias tailt='tail -f log/test.log'
alias rk='bundle exec rake'
alias rs='bundle exec rspec -f d'
alias rsa='bundle exec rspec spec --tag ~slow --tag ~type:feature'
alias rsai='bundle exec rspec spec'

# project related

alias staging_migrate_status="heroku run bundle exec rake db:migrate:status -a influitive-staging |grep down |cut -d' ' -f7"

alias restore_qa='heroku pgbackups:restore -a influitive-qa-interview -confirm influitive-qa-interview'
alias stage="git push staging development:master"
alias pre_stage='git push staging pre-prod:master'
alias stage_seed='heroku run rake apartment:seed --app influitive-staging'
alias stage_migrate='heroku run rake apartment:migrate --app influitive-staging'

function gcof() { git checkout feature/APP-"$@" ; }
function gpf() { git push origin feature/APP-"$@" ; }

# postgres commands
alias pg_start="pg_ctl -D /usr/local/var/postgres -l /usr/local/var/postgres/server.log start"
alias pg_stop="pg_ctl -D /usr/local/var/postgres stop -s -m fast"

# rails
alias migrate='bundle exec rake apartment:migrate db:test:prepare'
alias redo='bundle exec rake apartment:migrate:redo'
alias r="bundle exec rails"
alias be="bundle exec "

# emasc
alias e='emacsclient -t'
alias ec='emacsclient --no-wait -c'
