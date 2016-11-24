# Some cd aliases
alias ..='cd ..'
alias ...='cd ../..'

# Git aliases
alias s='git status'

# Do ls after every cd
function cd {
  builtin cd "$@" && ls
}
