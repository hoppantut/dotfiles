if [ -f ~/.bashrc.required ]; then
   source ~/.bashrc.required
fi

if [ -f ~/.bash_aliases ]; then
    source ~/.bash_aliases
fi

if [ -f ~/.bashrc.private ]; then
    source ~/.bashrc.private
fi

# enable programmable completion features (you don't need to enable
# this, if it's already enabled in /etc/bash.bashrc and /etc/profile
# sources /etc/bash.bashrc).
if ! shopt -oq posix; then
  if [ -f /usr/share/bash-completion/bash_completion ]; then
    . /usr/share/bash-completion/bash_completion
  elif [ -f /etc/bash_completion ]; then
    . /etc/bash_completion
  fi
fi

#unlimited HISTSIZE and HISTFILESIZE
HISTSIZE=-1
HISTFILESIZE=-1

#Ignore duplicates and lines starting with a space
export HISTCONTROL=ignoreboth #ignore (successive) duplicates in history

#rewrite history, append commands to history
export PROMPT_COMMAND="history -a; history -n"
shopt -s histappend

#ignore spelling mistakes when changing directory
shopt -s cdspell

#check windowsize after each command and adapt if necessary
shopt -s checkwinsize

#set direxpand so that variable names are NOT prepended by \ (ie. $ turns into \$) when auto suggesting
shopt -s direxpand
