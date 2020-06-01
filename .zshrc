# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# ANTIGEN
source ~/.bin/antigen.zsh

antigen bundle zsh-users/zsh-completions
antigen bundle zsh-users/zsh-syntax-highlighting
antigen bundle zsh-users/zsh-history-substring-search
antigen bundle zsh-users/zsh-autosuggestions
antigen bundle git
antigen bundle yarn
antigen bundle fzf
antigen bundle command-not-found
antigen bundle node
antigen bundle npm

antigen theme romkatv/powerlevel10k

antigen apply
# END ANTIGEN

# oc
export PATH="$HOME/oc:$PATH"
export PATH="$HOME/.minishift/cache/oc/v3.11.0/linux:$PATH"

# git aliases
alias gl='git pull'
alias gco='git checkout'
alias gcom='git checkout master'
alias gmm='git merge master'
alias gc='git commit -v'
alias gs='git stash'
alias gsa='git stash apply'

# history settings
export HISTSIZE=100000
export HISTFILESIZE=100000
setopt HIST_FIND_NO_DUPS
setopt inc_append_history
setopt share_history

# Add RVM to PATH for scripting. Make sure this is the last PATH variable change.
export PATH="$PATH:$HOME/.rvm/bin"

#THIS MUST BE AT THE END OF THE FILE FOR SDKMAN TO WORK!!!
export SDKMAN_DIR="/home/users/dmejer/.sdkman"
[[ -s "$HOME/.sdkman/bin/sdkman-init.sh" ]] && source "$HOME/.sdkman/bin/sdkman-init.sh"

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

# no caps
setxkbmap -option ctrl:nocaps

# fnm
export PATH=~/.fnm:$PATH
fnm use 10.16
