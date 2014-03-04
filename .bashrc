if [ -f ~/.bash_aliases ]; then
    source ~/.bash_aliases
fi

if [ -f ~/.bashrc.private ]; then
  source ~/.bashrc.private
fi

#Ignore duplicates and lines starting with a space
export HISTCONTROL=ignoreboth #ignore (successive) duplicates in history

#rewrite history, append commands to history
export PROMPT_COMMAND="history -a"
shopt -s histappend

#ignore spelling mistakes when changing directory
shopt -s cdspell
