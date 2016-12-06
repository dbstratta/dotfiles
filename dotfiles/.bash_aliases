# Some cd aliases
alias cd..='cd ..'
alias ..='cd ..'
alias ...='cd ../..'
alias ....='cd ../../..'

# Git aliases
alias s='git status'

# Tmuxinator alias
alias mux='tmuxinator'

# Do ls after every cd
function c {
  builtin cd "$@" && ls
}
