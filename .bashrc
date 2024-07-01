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
alias sqlmap='python3 $HOME/sqlmap-dev/sqlmap.py'
export PATH=$PATH:/home/jaja/.local/bin


export PATH="/home/jaja/.local/bin:/home/jaja/.nvm/versions/node/v20.11.1/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/games:/usr/local/games:/usr/lib/wsl/lib:/mnt/c/Windows:/mnt/c/Windows/System32/Wbem:/mnt/c/Windows/System32/WindowsPowerShell/v1.0/:/mnt/c/Windows/System32/OpenSSH/:/mnt/c/Program Files/nodejs/:/mnt/c/ProgramData/ComposerSetup/bin:/mnt/c/wamp64/bin/mysql/mysql8.0.31/bin:/mnt/c/Program Files/Vim/vim90:/mnt/c/wamp64/bin/php/php8.1.13:/mnt/c/Program Files/Meld/:/mnt/c/Program Files/dotnet/:/mnt/c/Program Files (x86)/php-8.2.1-nts-Win32-vs16-x64:/mnt/c/Program Files/Vagrant/bin:/mnt/c/Program Files/Git/cmd:/mnt/c/Program Files/Docker/Docker/resources/bin:/mnt/c/Users/INPT/AppData/Local/Microsoft/WindowsApps:/mnt/c/Users/INPT/AppData/Roaming/npm:/mnt/c/Users/INPT/AppData/Local/ComposerSetup/bin:/mnt/c/Users/INPT/AppData/Roaming/Composer/vendor/bin:/mnt/c/gstreamer/1.0/msvc_x86_64/bin:/mnt/c/Program Files/Neovim/bin:/mnt/c/Users/INPT/AppData/Local/Programs/oh-my-posh/bin:/mnt/c/Users/INPT/.fly/bin:/mnt/c/Users/INPT/AppData/Local/Programs/Microsoft VS Code/bin:/snap/bin:/home/jaja/.local/bin:/home/jaja/.local/bin"

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion



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
alias vim='sudo vim'
