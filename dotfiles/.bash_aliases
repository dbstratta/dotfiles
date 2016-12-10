# Some cd aliases
alias c..='c ..'
alias cd..='cd ..'
alias ..='c ..'
alias ...='c ../..'
alias ....='c ../../..'

# APT aliases
alias upd='sudo apt update'
alias upg='sudo apt upgrade'

# Git aliases
alias g='git'
alias s='git status'

# Neovim aliases
alias neo='nvim'

# Tmuxinator alias
alias mux='tmuxinator'

# Do ls after every cd
function c {
  builtin cd "$@" && ls
}
