# Path to your oh-my-zsh installation.
export ZSH="/Users/mateus.cumerlatto/.oh-my-zsh"

# Set name of the theme to load 
ZSH_THEME="robbyrussell"

# Disable Compfix
ZSH_DISABLE_COMPFIX=true

# ZSH auto-suggestions
plugins=(git zsh-autosuggestions)
source ~/.zsh/zsh-autosuggestions/zsh-autosuggestions.zsh

# pyenv setup
eval "$(pyenv init -)"
eval "$(pyenv virtualenv-init -)"

source $(pyenv root)/completions/pyenv.zsh

export PYENV_ROOT="$HOME/.pyenv"
export PATH="$PYENV_ROOT/bin:$PATH"

if command -v pyenv 1>/dev/null 2>&1; then
  eval "$(pyenv init -)"
fi

# global aliases
alias code="cd ~/Code"
alias l='ls -lah'
alias ll='ls -lh'
alias srcz = 'source ~/.zshrc'

# git aliases
alias gs="git status"
alias gc="git commit -m"
alias ga="git add"
alias gp="git push origin"
alias gl="git log"
alias gpl="git pull"
alias gcheck="git checkout"

# kubernets aliases
alias k="kubectl"
alias kgp="kubectl get pods"

source $ZSH/oh-my-zsh.sh