# ~/.bashrc: executed by bash(1) for non-login shells.
# see /usr/share/doc/bash/examples/startup-files (in the package bash-doc)
# for examples

# If not running interactively, don't do anything
case $- in
    *i*) ;;
      *) return;;
esac

# my stuffs
export PS1="\[$(tput bold)\]\[\033[38;5;9m\]\u\[$(tput sgr0)\]\[\033[38;5;7m\]@\h\[$(tput sgr0)\]\[$(tput sgr0)\]\[\033[38;5;15m\] \[$(tput bold)\]\[$(tput sgr0)\]\[\033[38;5;7m\]\W\[$(tput sgr0)\]\[$(tput sgr0)\]\[\033[38;5;15m\] \[$(tput bold)\]\[$(tput sgr0)\]\[\033[38;5;7m\]\\$\[$(tput sgr0)\]\[$(tput sgr0)\]\[\033[38;5;15m\] \[$(tput sgr0)\]"
alias lock='~/.i3/lock.sh'
alias ls='ls --color=auto'
alias ll='ls --color=auto -al'
alias grep='grep --color=auto'
alias shutdown='shutdown -P 0'
alias shitdown='shutdown -P 0'
alias suspend='systemctl suspend'
alias rlogin='ssh tonaid@portal.cs.vt.edu'
alias irc='ssh root@jewslove.me'
alias par='ssh tonaid@163.172.177.113'
alias ams='ssh tonaid@51.15.42.104'
alias desk='ssh tonaid@10.8.0.6'
export GCC_COLORS='error=01;31:warning=01;35:note=01;36:caret=01;32:locus=01:quote=01'
##

# don't put duplicate lines or lines starting with space in the history.
# See bash(1) for more options
HISTCONTROL=ignoreboth

# append to the history file, don't overwrite it
shopt -s histappend

# for setting history length see HISTSIZE and HISTFILESIZE in bash(1)
HISTSIZE=1000
HISTFILESIZE=2000

# check the window size after each command and, if necessary,
# update the values of LINES and COLUMNS.
shopt -s checkwinsize

# set variable identifying the chroot you work in (used in the prompt below)
if [ -z "${debian_chroot:-}" ] && [ -r /etc/debian_chroot ]; then
    debian_chroot=$(cat /etc/debian_chroot)
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

eval "`dircolors`"
export EDITOR=vim
