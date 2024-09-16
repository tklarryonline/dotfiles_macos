# ***************************************************************
# Custom aliases for my shell environment, including:
# - rm, cp, mv, mkdir
# - cd
# - ls, ll, la
# ***************************************************************

alias rm='rm -i'
alias cp='cp -i'
alias mv='mv -i'
alias mkdir='mkdir -p'
alias ..='cd ..'
alias ...='cd ../..'
alias ....='cd ../../..'
alias ccd='clear && cd'
alias ls='eza'
alias ll='eza -l'
alias la='eza -lag --header'

# Git-related short aliases
alias gs='git status'
alias ga='git add'
alias gc='git commit'
alias gca='git commit -am'
alias gp='git push'
alias gl='git log'
alias gco='git checkout'

# aliasecho function
# This function is a wrapper around alias to echo the command being executed,
# followed by a divider (------), and then runs the command.
# 
# Purpose:
# This was created to ensure that when an alias is used, the full command and
# arguments passed to the alias are printed before execution, providing better visibility
# when running scripts or commands with long or dynamic arguments.
#
# Usage:
# aliasecho foo='bar exec something'
# foo -- additional arguments
aliasecho() {
  local name="${1%%=*}"
  local cmd="${1#*=}"
  eval "$name() { echo 'Executing: $cmd' \"\$@\"; echo '------'; $cmd \"\$@\"; }"
}

# aws-vault related aliases
aliasecho av='aws-vault'
aliasecho ax='aws-vault exec'
aliasecho axes='aws-vault exec developer@elements-staging'
aliasecho axep='aws-vault exec developer@elements-production'
aliasecho axins='aws-vault login developer@elements-staging'
aliasecho axinp='aws-vault login developer@elements-production'
