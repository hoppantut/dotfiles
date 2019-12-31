export GIT_PS1_SHOWDIRTYSTATE=true
export GIT_PS1_SHOWSTASHSTATE=true
export GIT_PS1_SHOWUNTRACKEDFILES=true

if [[ $- == *i* ]]; then
Reset=$(tput sgr0)
Red=$(tput setaf 1)
BYellow=$(tput bold; tput setaf 3)
BGreen=$(tput bold; tput setaf 2)
BCyan=$(tput bold; tput setaf 6)

#determine if git is present
git --version &>/dev/null && hasGit=true || hasGit=

export PS1='${debian_chroot:+($debian_chroot)}${SSH_CONNECTION:+\u@\[$Red\]\h\[$Reset\]:}\[$BYellow\]\w${hasGit:+\[$BGreen\]$(__git_ps1)} \[$BCyan\]$\[$Reset\] '
fi
#add some colour
alias ls='ls --color=auto --group-directories-first'
alias ll='ls -la'
alias grep='grep --color=auto'
alias bzgrep='bzgrep --color=auto'

# directory navigation
alias ..='cd ..'
alias ...='cd ../..'
alias ....='cd ../../..'
alias .....='cd ../../../..'
alias ......='cd ../../../../..'
alias .......='cd ../../../../../..'
alias ........='cd ../../../../../../..'

#Continue previously aborted download by default if possible
alias wget='wget -c'

#Make curl follow redirects by default
alias curl='curl -L'
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

#flush memcached
alias flushed='echo "flush_all" | netcat localhost 11211'

#go to "default" dotfiles cataloge
alias dotfiles='cd $HOME/dotfiles'

function pless() {
    command -v pygmentize >/dev/null 2>&1 || { echo >&2 "pygmetize is not installed.   Aborting."; return; }
    pygmentize -g $* | less -R
}

export LESS='-NPs%f \:\:\: lines %lt-%lb/%L (%Pt-%Pb \%) bytes %bt-%bb'

runsOnPort() { sudo netstat -tulpn | grep :$@; }
