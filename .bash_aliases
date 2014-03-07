export GIT_PS1_SHOWDIRTYSTATE=true
export PS1='${debian_chroot:+($debian_chroot)}\[\033[01;33m\]\w\[\033[01;32m\]$(__git_ps1) \[\033[01;36m\]$ \[\033[00m\]'

#add some colour
alias ls='ls --color=auto'
alias ll='ls -la --color=auto'
alias grep='grep --color=auto'
alias fgrep='fgrep --color=auto'
alias egrep='egrep --color=auto'

# directory navigation
alias ..='cd ..'
alias ...='cd ../..'
alias ....='cd ../../..'
alias .....='cd ../../../..'
alias ......='cd ../../../../..'

#Continue previously aborted download by default if possible
alias wget='wget -c'

#Interactive and verbose commands
alias mv='mv -i -v'
alias cp='cp -i -v'
alias rm='rm -i -v'
alias ln='ln -i -v'

#handy alternative
alias top='htop'
alias df='df -h'

#git-related aliases
alias gitg='gitg -c'
