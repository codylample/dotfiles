# Colors
unset LSCOLORS
export CLICOLOR=1
export CLICOLOR_FORCE=1
export LSCOLORS=ExFxCxDxBxegedabagacad

# Prompt
C_LIGHTBLUE="\[\033[1;34m\]"
C_LIGHTGRAY="\[\033[37m\]"
C_CYAN="\[\033[36m\]"
C_DEFAULT="\[\033[m\]"

export PS1="$C_LIGHTBLUE\h$C_LIGHTGRAY:$C_CYAN\w$C_LIGHTGRAY\$$C_DEFAULT "

# Tmux
alias tmux="TERM=screen-256color-bce tmux"
if ! { [ -n "$TMUX" ]; } then
  tmux
fi

# General environment
export HOMEBREW_AUTO_UPDATE_SECS=604800      # Only update homebrew weekly
export BASH_SILENCE_DEPRECATION_WARNING=1    # Silence Apple's zsh warning
export GPG_TTY=$(tty)

# Golang
export GOPRIVATE=github.ibm.com/*

# General aliases
alias ll="ls -lat"
alias ic="ibmcloud"

# Git aliases
alias gc="git commit -am"
alias gb="git branch | grep '*' | tr '*' ' '"
alias gd="git diff --word-diff"
alias gec="git commit --allow-empty -m 'Empty commit' && gp"

function gp() {
    local branch_name=$(gb)
    git push origin ${branch_name}
}
