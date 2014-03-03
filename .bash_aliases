export GIT_PS1_SHOWDIRTYSTATE=true
export PS1='\w$(__git_ps1 " [\[\e[34;1m\]%s\[\e[0m\]]")\$ '

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

