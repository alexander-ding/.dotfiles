##
## Enter a tmux session called "main" if we're not already in
##

if command -v tmux &> /dev/null && [ -n "$PS1" ] && [[ ! "$TERM" =~ screen ]] && [[ ! "$TERM" =~ tmux ]] && [ -z "$TMUX" ]; then
  tmux new-session -A -s main
fi

## 
## P10K instant prompt. Keep near top
##

if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

##
## Paths and tooling configuration
##

# shell configuration
export LANG=en_US.UTF-8
export EDITOR='vim'

# vim key binding for terminal
bindkey -v

# basic executables
export PATH="$HOME/bin:/usr/local/bin:$PATH"

# homebrew
export PATH="/opt/homebrew/bin:$PATH"
which brew &>/dev/null
if [[ $? -eq 0 ]]; then 
    FPATH="$(brew --prefix)/share/zsh/site-functions:${FPATH}" # for brew shell completion
fi

# rust
source $HOME/.cargo/env

# cmake
export CMAKE_PREFIX_PATH=$HOME/.local
export CMAKE_MODULE_PATH=$HOME/.local
export PATH="$PATH:$CMAKE_MODULE_PATH/bin"

# go (managed by gvm)
[[ -s "$HOME/.gvm/scripts/gvm" ]] && source "$HOME/.gvm/scripts/gvm"

# julia (managed by juliaup)
export PATH="$PATH:$HOME/.juliaup/bin"

# GCloud SDK

# The next line updates PATH for the Google Cloud SDK.
if [ -f "$HOME/opt/google-cloud-sdk/path.zsh.inc" ]; then . "$HOME/opt/google-cloud-sdk/path.zsh.inc"; fi

# The next line enables shell command completion for gcloud.
if [ -f "$HOME/opt/google-cloud-sdk/completion.zsh.inc" ]; then . "$HOME/opt/google-cloud-sdk/completion.zsh.inc"; fi

# conda

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$($HOME/conda/bin/conda 'shell.zsh' 'hook')"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "$HOME/conda/etc/profile.d/conda.sh" ]; then
        . "$HOME/conda/etc/profile.d/conda.sh"
    else
        export PATH="$HOME/conda/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<

# java (managed by sdkman)
export SDKMAN_DIR="$HOME/.sdkman"
[[ -s "$HOME/.sdkman/bin/sdkman-init.sh" ]] && source "$HOME/.sdkman/bin/sdkman-init.sh"

# pnpm
export PNPM_HOME="/Users/alexanderding/Library/pnpm"
export PATH="$PNPM_HOME:$PATH"

# broot
source "$HOME/.config/broot/launcher/bash/br"

# zsh (keep near bottom)
export ZSH="$HOME/.oh-my-zsh"

ZSH_THEME="powerlevel10k/powerlevel10k"

plugins=(
    asdf
    git
    pip
    zsh-autosuggestions
    vi-mode
    fast-syntax-highlighting
    fzf
)

ZSH_AUTOSUGGEST_STRATEGY=(history completion)
VI_MODE_SET_CURSOR=true

source "$ZSH/oh-my-zsh.sh"

# kubectl
source <(kubectl completion zsh)

##
## Aliases
##

alias ls='ls --color -a' # enable color and hidden files
alias timeout="gtimeout"
alias t="todo.sh"
alias up="cd .."
alias k="kubectl"
alias ctx="kubie ctx"
alias ens="kubie ns"

##
## Source p10k, keep near bottom
##

# set up direnv
# this needs to happen before p10k configure, since it prints
eval "$(direnv hook zsh)"

# To customize prompt, run `p10k configure` or edit $HOME/.p10k.zsh.
[[ ! -f "$HOME/.p10k.zsh" ]] || source "$HOME/.p10k.zsh"

##
## Source per-machine local configurations
##

source "$HOME/.zshrc.local"

# Anything after end of file is automatically generated by installation scripts
# and should either be moved to earlier sections or deleted using ./setup/cleanup.sh
### End of File ###
