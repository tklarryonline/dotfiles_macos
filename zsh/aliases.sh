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
