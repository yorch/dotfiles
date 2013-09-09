# ALIASES

alias l='ls -lh'
alias la='ls -A'
alias ll='ls -lah'
#alias ls='ls -A'

alias du='du -h'

alias python-web-server='python -m SimpleHTTPServer'

# general commands
alias dotfiles='cd ~/dotfiles'
alias snip='cd ~/.vim/vim-addons/github-enricribas-snipmate-snippets/'
alias did='idonethis'
alias ali='vi ~/.bash_aliases'
#alias reload='. ~/.bashrc'
alias reload='. ~/.bash_profile'

alias sshhades='ssh hades.graphium.net'

# computer operations
alias flushdns='sudo dscacheutil -flushcache'
alias flushdns2='sudo killall -HUP mDNSResponder'
alias eject='sudo drutil tray eject'
alias reboot='sudo reboot'
alias sleep='sudo shutdown -s now'
alias shutoff='sudo shutdown -h now'
alias printscreen='screencapture -iW'
alias copy='pbcopy'
alias arps='sudo arp-scan --interface=en1 --localnet'
alias dig='dig +noadditional +noquestion +nocomments +nocmd'
function proxy_hp_on() {
export http_proxy=http://web-proxy.atl.hp.com:8080;
echo -e "Proxy environment variable set to ON. Quit Terminal, logout, or reboot to reset it back to Apple's defaults."
}

# file system
alias o='open .'
alias home='cd ~'
#alias applications='cd ~/Applications'
alias code='cd ~/code'
alias development='cd ~/Development'
alias documents='cd ~/Documents'
alias downloads='cd ~/Downloads'
alias pictures='cd ~/Pictures'
alias music='cd ~/Music'
alias movies='cd ~/Movies'
alias desktop='cd ~/Desktop'
alias public-key='cat ~/.ssh/id_rsa.pub | pbcopy; echo "public key copied to clipboard"'
alias hosts='sudo vim /etc/hosts'
alias phpini='sudo vim /private/etc/php.ini'

# postgres
alias pg_start='pg_ctl -D /usr/local/var/postgres -l /usr/local/var/postgres/server.log start'
#alias pg_stop='pg_ctl -D /usr/local/var/postgres stop'
alias pg_stop="pg_ctl -D /usr/local/var/postgres stop -s -m fast"

# mysql
alias mysql_start='mysql.server start'
alias mysql_stop='mysql.server stop'

# ruby
alias irbs="irb --simple-prompt"

# git commands
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
#alias pr='hub pull-request -b development -h influitive/influitive-app:'

# rails development
alias taild='tail -f log/development.log'
alias tailt='tail -f log/test.log'
alias be='bundle exec'
alias r='bundle exec rails'
alias rk='bundle exec rake'
alias rr='bundle exec rake routes | grep'
alias rs='bundle exec rspec -f d'
alias rsa='bundle exec rspec spec --tag ~slow --tag ~type:feature'
alias rsai='bundle exec rspec spec'

alias migrate='bundle exec rake apartment:migrate db:test:prepare'
alias redo='bundle exec rake apartment:migrate:redo'

# project related

#alias staging_migrate_status="heroku run bundle exec rake db:migrate:status -a influitive-staging |grep down |cut -d' ' -f7"

alias restore_qa='heroku pgbackups:restore -a influitive-qa-interview -confirm influitive-qa-interview'
alias stage='git push staging development:master'
alias pre_stage='git push staging pre-prod:master'
#alias stage_seed='heroku run rake apartment:seed --app influitive-staging'
#alias stage_migrate='heroku run rake apartment:migrate --app influitive-staging'
#alias merge_to_stable='git checkout stable && git merge master && git push && git checkout master'
#alias merge_to_master='git checkout master && git merge develop && git push --all origin && git checkout develop'
alias merge_to_master='git checkout master && git merge develop && git push origin master develop && git checkout develop'

# mejuri
alias sshmejuri='ssh root@sapphire.mejuri.com'
alias mej='cd ~/Development/mejuri/web'

# firuli
alias firuli='cd ~/Development/_rails/firuli'

# dechalaca
alias dechalaca='cd ~/Development/dechalaca/'

function gcof() { git checkout feature/APP-"$@" ; }
function gpf() { git push origin feature/APP-"$@" ; }

# emasc
alias e='emacsclient -t'
alias ec='emacsclient --no-wait -c'
