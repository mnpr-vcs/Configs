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
  nvm
  python
  rust
)


## Aliases
alias expy="conda activate expy"
alias base="conda activate base"

alias ga="git add"
alias gc="git commit"
alias gs="git status"
alias gl="git log"

alias space="cd ~/Workspace/"
alias vced="cd ~/Workspace/Vced/"
alias learn="cd ~/Workspace/Learning/"

alias cat="batcat"
alias vi="nvim"
alias zshconfig="vi ~/.zshrc"

alias update="sudo apt update && apt list --upgradable"
alias upgrade="sudo apt upgrade"

export PATH="$PATH:/opt/nvim-linux64/bin"

source $ZSH/oh-my-zsh.sh

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/home/tux/miniforge3/bin/conda' 'shell.zsh' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/home/tux/miniforge3/etc/profile.d/conda.sh" ]; then
        . "/home/tux/miniforge3/etc/profile.d/conda.sh"
    else
        export PATH="/home/tux/miniforge3/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<
