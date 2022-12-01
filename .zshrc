##
## Shell Configuration
## 

# P10K. Keep near top
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# ZSH
export ZSH="$HOME/.oh-my-zsh"

ZSH_THEME="powerlevel10k/powerlevel10k"

plugins=(
    git
    pip
    zsh-autosuggestions
    zsh-syntax-highlighting
)

ZSH_AUTOSUGGEST_STRATEGY=(history completion)

source $ZSH/oh-my-zsh.sh

export LANG=en_US.UTF-8
export EDITOR='vim'

# fzf

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

##
## Paths
##

# basic executables
export PATH=$HOME/bin:/usr/local/bin:$PATH

# homebrew
export PATH=/opt/homebrew/bin:$PATH

# cmake
export CMAKE_PREFIX_PATH=$HOME/.local
export CMAKE_MODULE_PATH=$HOME/.local
export PATH="$PATH:$CMAKE_MODULE_PATH/bin"

# go (managed by gvm)
[[ -s "/Users/alexanderding/.gvm/scripts/gvm" ]] && source "/Users/alexanderding/.gvm/scripts/gvm"

# julia (managed by juliaup)

# >>> juliaup initialize >>>

# !! Contents within this block are managed by juliaup !!

path=('$HOME/.julia/juliaup/bin' $path)
export PATH

# <<< juliaup initialize <<<

# GCloud SDK

# The next line updates PATH for the Google Cloud SDK.
if [ -f "$HOME/opt/google-cloud-sdk/path.zsh.inc" ]; then . "$HOME/opt/google-cloud-sdk/path.zsh.inc"; fi

# The next line enables shell command completion for gcloud.
if [ -f "$HOME/opt/google-cloud-sdk/completion.zsh.inc" ]; then . "$HOME/opt/google-cloud-sdk/completion.zsh.inc"; fi

# conda

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/Users/alexanderding/miniforge3/bin/conda' 'shell.zsh' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/Users/alexanderding/miniforge3/etc/profile.d/conda.sh" ]; then
        . "/Users/alexanderding/miniforge3/etc/profile.d/conda.sh"
    else
        export PATH="/Users/alexanderding/miniforge3/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<

# node

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh" --no-use  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
# sets up a default version to use before running nvm
export PATH="$PATH:/Users/alexanderding/.nvm/versions/node/v16.14.2/bin"

# java (managed by sdkman)

export SDKMAN_DIR="$HOME/.sdkman"
[[ -s "$HOME/.sdkman/bin/sdkman-init.sh" ]] && source "$HOME/.sdkman/bin/sdkman-init.sh"

# android

[ -d "$HOME/Library/Android/sdk" ] && ANDROID_SDK=$HOME/Library/Android/sdk || ANDROID_SDK=$HOME/Android/Sdk
echo "export ANDROID_SDK=$ANDROID_SDK" >> ~/`[[ $SHELL == *"zsh" ]] && echo '.zshenv' || echo '.bash_profile'`
echo "export PATH=$HOME/Library/Android/sdk/platform-tools:\$PATH" >> ~/`[[ $SHELL == *"zsh" ]] && echo '.zshenv' || echo '.bash_profile'`

# pnpm

export PNPM_HOME="$HOME/Library/pnpm"
export PATH="$PNPM_HOME:$PATH"

##
## Aliases
##

alias ls='ls -a'
alias timeout="gtimeout"
alias t="todo.sh"
alias up="cd .."

##
## Source p10k, keep near bottom
##

# set up direnv
# this needs to happen before p10k configure, since it prints
eval "$(direnv hook zsh)"

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
