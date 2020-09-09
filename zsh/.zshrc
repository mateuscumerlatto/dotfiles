# Path to your oh-my-zsh installation.
export ZSH="/Users/mateuscumerlatto/.oh-my-zsh"

# Set name of the theme to load 
ZSH_THEME="robbyrussell"

plugins=(git zsh-autosuggestions)

source ~/.zsh/zsh-autosuggestions/zsh-autosuggestions.zsh

# global alias
alias code="cd ~/Code"
alias l='ls -lah'
alias ll='ls -lh'
alias srcz = 'source ~/.zshrc'

# git alias
alias gs="git status"
alias gc="git commit -m"
alias ga="git add"
alias gp="git push origin"
alias gl="git log"
alias gpl="git pull"
alias gcheck="git checkout"

# kubernets
alias k="kubectl"
alias kgp="kubectl get pods"