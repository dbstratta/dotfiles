# If not running interactively, don't do anything
[[ $- != *i* ]] && return

# don't put duplicate lines or lines starting with space in the history.
HISTCONTROL=ignoreboth

# append to the history file, don't overwrite it
shopt -s histappend

# for setting history length see HISTSIZE and HISTFILESIZE in bash(1)
HISTSIZE=1000
HISTFILESIZE=2000

# check the window size after each command and, if necessary,
# update the values of LINES and COLUMNS.
shopt -s checkwinsize

# If set, the pattern "**" used in a pathname expansion context will
# match all files and zero or more directories and subdirectories.
shopt -s globstar

# set EDITOR to vim
export EDITOR=nvim
export VISUAL=nvim

# Alias definitions
[ -f ~/.bash_aliases ] && . ~/.bash_aliases

# Functions
[ -f ~/.bash_functions ] && . ~/.bash_functions

export PS1="\n\[\e[1;38;5;100m\]\u@\h\[\e[m\] \[\e[1;38;5;101m\] \w\[\e[m\] \[\e[1;38;5;105m\]\`parse_git_branch\`\[\e[m\]\n\[\e[1;38;5;107m\]$\[\e[m\] "
