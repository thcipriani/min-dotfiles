[ -z "$PS1" ] && return

# append, don't overwrite
shopt -s histappend

# ignoredupes and cmds with leading space; include timestamps
HISTCONTROL=ignoredups:ignorespace
HISTSIZE=10000
HISTFILESIZE=20000
HISTTIMEFORMAT='%F %T '
export EDITOR=vim

# check the window size after each command and, if necessary,
shopt -s checkwinsize

# see lesspipe(1)
[ -x /usr/bin/lesspipe ] && eval "$(SHELL=/bin/sh lesspipe)"

# enable color support
if [ -x /usr/bin/dircolors ]; then
    test -r ~/.dircolors && eval "$(dircolors -b ~/.dircolors)" || eval "$(dircolors -b)"
    alias ls='ls --color=auto'
    alias grep='grep --color=auto'
fi

# enable programmable completion features
[ -f /etc/bash_completion ] && ! shopt -oq posix && . /etc/bash_completion

alias g='git'
alias ll='ls --group-directories-first -AlFh'
alias l='ls --group-directories-first -lFh'

[ -f "$HOME/.bash_prompt" ] && . "$HOME/.bash_prompt"
