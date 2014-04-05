if [ -f ~/.bashrc.required ]; then
   source ~/.bashrc.required
fi

if [ -f ~/.bash_aliases ]; then
    source ~/.bash_aliases
fi

if [ -f ~/.bashrc.private ]; then
    source ~/.bashrc.private
fi

#increase HISTSIZE and HISTFILESIZE
HISTSIZE=1000
HISTFILESIZE=2000

#Ignore duplicates and lines starting with a space
export HISTCONTROL=ignoreboth #ignore (successive) duplicates in history

#rewrite history, append commands to history
export PROMPT_COMMAND="history -a"
shopt -s histappend

#ignore spelling mistakes when changing directory
shopt -s cdspell

#check windowsize after each command and adapt if necessary
shopt -s checkwinsize

#set direxpand so that variable names are NOT prepended by \ (ie. $ turns into \$) when auto suggesting
shopt -s direxpand
