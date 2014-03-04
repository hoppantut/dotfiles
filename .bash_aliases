export GIT_PS1_SHOWDIRTYSTATE=true
export PS1='${debian_chroot:+($debian_chroot)}\[\033[01;33m\]\w\[\033[01;32m\]$(__git_ps1) \[\033[01;36m\]$ \[\033[00m\]'

alias ll='ls -la'

# directory navigation
alias ..='cd ..'
alias ...='cd ../..'
alias ....='cd ../../..'
alias .....='cd ../../../..'
alias ......='cd ../../../../..'

#Continue previously aborted download by default if possible
alias wget='wget -c'

#Interactive and verbose mv, cp & rm commands
alias mv='mv -i -v'
alias cp='mv -i -v'
alias rm='rm -i -v'

#handy alternative
alias top='htop'
alias df='df -h'

