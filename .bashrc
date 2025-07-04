set -o vi

#~/.local/bin/tat
# setxkbmap -option "ctrl:nocaps"
alias ubash='source ~/.bashrc'
#alias ..='cd ..'
#alias .='cd .'
#:function -() { cd -; }

alias update=' apt update'
alias upgrade=' apt upgrade'
alias install=' apt install'
alias remove=' apt remove'
alias autoremove=' apt autoremove'
alias purge=' apt-get purge'


alias cls='clear'
alias ll='ls -l'
alias lla='ls -al'




# Load custom aliases from ~/.my_aliases if it exists
[ -f ~/.my_aliases ] && source ~/.my_aliases

export PATH="$HOME/.local/bin:$PATH"
export PATH="$HOME/.config/composer/vendor/bin/:$PATH"


[ -f ~/.fzf.bash ] && source ~/.fzf.bash


export PATH="$HOME/.local/bin:$PATH"
