# cd aliases
alias c..='c ..'
alias cd..='cd ..'
alias ..='c ..'
alias ...='c ../..'
alias ....='c ../../..'
alias .....='c ../../../../'
alias ......='c ../../../../../'

# Useful aliases
alias :q='exit'
alias sl='ls'

# ls aliases
alias ll='ls -alhF'
alias la='ls -A'
alias l='ls -CF'

# Color aliases
alias ls='ls -G'
alias grep='grep --color=auto'
alias fgrep='fgrep --color=auto'
alias egrep='egrep --color=auto'

# Git aliases
alias g='git'
alias s='git status'

# Docker aliases
alias d='docker'
alias dco='docker-compose'

# Enables completion for aliases
complete -o bashdefault -o default -o nospace -F _git g
complete -o bashdefault -o default -o nospace -F _docker d
complete -o bashdefault -o default -o nospace -F _docker_compose dco

# Neovim aliases
alias vim='nvim'
