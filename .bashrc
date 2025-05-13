set -o vi

# setxkbmap -option "ctrl:nocaps"
alias ubash='source ~/.bashrc'
alias ..='cd ..'
alias .='cd .'
function -() { cd -; }

alias update='sudo apt update'
alias upgrade='sudo apt upgrade'
alias install='sudo apt install'
alias remove='sudo apt remove'
alias autoremove='sudo apt autoremove'
alias purge='sudo apt-get purge'


alias cls='clear'
alias ll='ls -l'
alias lla='ls -al'

# artisan commands for laravel
alias art='sudo php artisan'
alias make='sudo php artisan make:'
alias sail='sh $([ -f sail ] && echo sail || echo vendor/bin/sail)'

# composer essentials commands
alias ccreate='sudo composer create-project laravel/laravel'
alias crequire='sudo composer require'
alias cupdate='sudo composer update'
alias cremove='sudo composer remove'
alias cupdateS='sudo composer self-update'
alias cinstall='sudo composer install'
alias cdiagnose='sudo composer diagnose'
alias caudit='sudo composer audit'
alias csuggest='sudo composer suggest'


# sqlmap commands


# postgres essentials cmds
alias post='sudo -i -u postgres'

psql() {
    sudo -u "$1" psql "$@"
}



# nginx/apache essentials commands
alias status='sudo systemctl status'
alias start='sudo systemctl start'
alias restart='sudo systemctl restart'
alias stop='sudo systemctl stop'
alias reload='sudo systemctl reload'
alias nginxt='sudo nginx -t' # syntax errors in any of your Nginx files


# git essentials commands
alias gconfigName="git config --global user.name"
alias gconfigEmail="git config --global user.email"
alias gstatus='git status'
alias gclone='git clone'
alias gcheck='git checkout'
alias gbranch='git branch'
alias gadd='git add'
alias gcommit='git commit -m '
alias gpush='git push'
alias gpull='git pull'
alias glog='git log'

# vim essentials commands
# alias vim='sudo vim'
export PATH="$HOME/.local/bin:$PATH"
