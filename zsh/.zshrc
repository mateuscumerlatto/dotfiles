# Path to your oh-my-zsh installation.
# zsh setup
export ZSH="/Users/mateus.cumerlatto/.oh-my-zsh"
ZSH_THEME="robbyrussell"
ZSH_DISABLE_COMPFIX=true

# zsh auto-suggestions
plugins=(git zsh-autosuggestions)
source ~/.zsh/zsh-autosuggestions/zsh-autosuggestions.zsh

# pyenv setup
eval "$(pyenv init -)"
eval "$(pyenv virtualenv-init -)"
source $(pyenv root)/completions/pyenv.zsh

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

# zookeper and kafka alias
alias zookeeper-start="zookeeper-server-start /usr/local/etc/kafka/zookeeper.properties"
alias kafka-start="kafka-server-start /usr/local/etc/kafka/server.properties"

source $ZSH/oh-my-zsh.sh
