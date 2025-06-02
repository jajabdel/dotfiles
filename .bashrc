set -o vi

#~/.local/bin/tat
# setxkbmap -option "ctrl:nocaps"
alias ubash='source ~/.bashrc'
alias ..='cd ..'
alias .='cd .'
function -() { cd -; }

alias update=' apt update'
alias upgrade=' apt upgrade'
alias install=' apt install'
alias remove=' apt remove'
alias autoremove=' apt autoremove'
alias purge=' apt-get purge'


alias cls='clear'
alias ll='ls -l'
alias lla='ls -al'

# artisan commands for laravel
alias art=' php artisan'
alias make=' php artisan make:'
alias sail='sh $([ -f sail ] && echo sail || echo vendor/bin/sail)'

# composer essentials commands
alias ccreate=' composer create-project laravel/laravel'
alias crequire=' composer require'
alias cupdate=' composer update'
alias cremove=' composer remove'
alias cupdateS=' composer self-update'
alias cinstall=' composer install'
alias cdiagnose=' composer diagnose'
alias caudit=' composer audit'
alias csuggest=' composer suggest'
alias cshow=' composer show'
alias cwhy='composer why'
alias coutdated='composer outdated'


# sqlmap commands


# postgres essentials cmds
alias post=' -i -u postgres'

psql() {
     -u "$1" psql "$@"
}



# nginx/apache essentials commands
alias status=' sudo systemctl status'
alias start=' sudo systemctl start'
alias restart='sudo systemctl restart'
alias stop='sudo systemctl stop'
alias reload='sudo systemctl reload'
alias nginxt='sudo nginx -t' # syntax errors in any of your Nginx files
alias httpdt='sudo httpd -t' # syntax errors in any of your Nginx files


# git essentials commands
alias gconfigName="git config --global user.name"
alias gconfigEmail="git config --global user.email"
alias ginit='git init'
alias gstatus='git status'
alias gclone='git clone'
alias gcheck='git checkout'
alias gbranch='git branch'
alias gadd='git add'
alias gcommit='git commit -m '
alias gpush='git push'
alias gpull='git pull'
alias glog='git log'
alias gremote='git remote' 

# vim essentials commands
# alias vim=' vim'
export PATH="$HOME/.local/bin:$PATH"
<<<<<<< HEAD
export PATH="$HOME/.config/composer/vendor/bin/:$PATH"

# 1. Sync only modified files
alias rsyncmod='function _rsyncmod(){ rsync -avz "$1" "$2"; }; _rsyncmod'

# 2. Mirror remote to local (delete local files not on remote)
alias rsyncmirror='function _rsyncmirror(){ rsync -avz --delete "$1" "$2"; }; _rsyncmirror'

# 3. Dry-run: list files that would change
alias rsynclist='function _rsynclist(){ rsync -avzn "$1" "$2"; }; _rsynclist'

# 4. Sync with progress
alias rsyncprog='function _rsyncprog(){ rsync -avz --progress "$1" "$2"; }; _rsyncprog'

# 5. Sync with hard links and numeric-ids (useful for system backups)
alias rsyncfull='function _rsyncfull(){ rsync -aHAX --numeric-ids "$1" "$2"; }; _rsyncfull'


[ -f ~/.fzf.bash ] && source ~/.fzf.bash

=======
export PATH="$HOME/.local/bin:$PATH"

[ -f ~/.fzf.bash ] && source ~/.fzf.bash
>>>>>>> refs/remotes/origin/main
