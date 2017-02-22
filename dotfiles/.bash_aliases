# cd aliases
alias c..='c ..'
alias cd..='cd ..'
alias ..='c ..'
alias ...='c ../..'
alias ....='c ../../..'

# Useful aliases
alias :q='exit'
alias sl='ls'

# ls aliases
alias ll='ls -alF'
alias la='ls -A'
alias l='ls -CF'

# Color aliases
alias ls='ls --color=auto'
alias grep='grep --color=auto'
alias fgrep='fgrep --color=auto'
alias egrep='egrep --color=auto'

# Git aliases
alias g='git'
alias s='git status'
# Enables completion for alias g
_completion_loader git
complete -o bashdefault -o default -o nospace -F _git g

# Neovim aliases
alias vim='nvim'
