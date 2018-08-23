export GIT_PS1_SHOWDIRTYSTATE=true
export GIT_PS1_SHOWSTASHSTATE=true
export GIT_PS1_SHOWUNTRACKEDFILES=true

if [ -z "$SSH_CONNECTION" ]; then
    if git --version &>/dev/null; then
        export PS1='${debian_chroot:+($debian_chroot)}\[\033[01;33m\]\w\[\033[01;32m\]$(__git_ps1) \[\033[01;36m\]$ \[\033[00m\]'
    else
        export PS1='${debian_chroot:+($debian_chroot)}\[\033[01;33m\]\w\[\033[01;32m\] \[\033[01;36m\]$ \[\033[00m\]'
    fi
else
    # ssh connection
    if git --version &>/dev/null; then
        export PS1='${debian_chroot:+($debian_chroot)}\u@\[\033[0;31m\]\h\[\033[00m\]:\[\033[01;33m\]\w\[\033[01;32m\]$(__git_ps1) \[\033[01;36m\]$ \[\033[00m\]'
    else
        export PS1='${debian_chroot:+($debian_chroot)}\u@\[\033[0;31m\]\h\[\033[00m\]:\[\033[01;33m\]\w\[\033[01;32m\] \[\033[01;36m\]$ \[\033[00m\]'
    fi
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

alias less='less -N'

runsOnPort() { sudo netstat -tulpn | grep :$@; }
