#,-------.       ,--.
#`--.   /  ,---. |  ,---.
#  /   /  (  .-' |  .-.  |
# /   `--..-'  `)|  | |  |,----.
#`-------'`----' `--' `--''----'
# @Mnpr -------------------------------------------------------

## Bash ( $PATH )  ------------------------------------------
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"
ZSH_THEME="lambda"


# Display red dots whilst waiting for completion.
COMPLETION_WAITING_DOTS="true"

##  PlugIns  --------------------------------------------------
plugins=(
  colored-man-pages
  gh
  python
  rust
  taskwarrior
)


## Aliases
alias expy="conda activate expy"
alias rlpy="conda activate rlpy"
alias ffepy="conda activate ffe-rl"
alias base="conda activate base"

alias ga="git add"
alias gc="git commit"
alias gs="git status"
alias gl="git log"

alias work="cd ~/Workspace/Thesiswork/"
alias vced="cd ~/Workspace/Vced/"
alias learn="cd ~/Workspace/Learning/"

alias cat="batcat"
alias vi="nvim"
alias zshconfig="vi ~/.zshrc"


source $ZSH/oh-my-zsh.sh
