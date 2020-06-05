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
antigen bundle ssh-agent
antigen bundle autojump
antigen bundle history

antigen theme romkatv/powerlevel10k

antigen apply
# END ANTIGEN

# colors
alias ls='ls --color=auto'
alias grep='grep --color=auto'

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
export HISTFILE=~/.zsh_history
export HISTSIZE=99999
export HISTFILESIZE=999999
export SAVEHIST="$HISTSIZE"

## History command configuration
setopt extended_history       # record timestamp of command in HISTFILE
setopt hist_expire_dups_first # delete duplicates first when HISTFILE size exceeds HISTSIZE
setopt hist_ignore_dups       # ignore duplicated commands history list
setopt hist_ignore_space      # ignore commands that start with space
setopt hist_verify            # show command with history expansion to user before running it
setopt share_history          # share command history date
setopt HIST_FIND_NO_DUPS      # skip duplicates
setopt HIST_IGNORE_ALL_DUPS   # do not write duplicates to history
setopt INC_APPEND_HISTORY     # immediate append commands to history

# Add RVM to PATH for scripting. Make sure this is the last PATH variable change.
export PATH="$PATH:$HOME/.rvm/bin"

#THIS MUST BE AT THE END OF THE FILE FOR SDKMAN TO WORK!!!
export SDKMAN_DIR="$HOME/.sdkman"
[[ -s "$HOME/.sdkman/bin/sdkman-init.sh" ]] && source "$HOME/.sdkman/bin/sdkman-init.sh"

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

# no caps
setxkbmap -option ctrl:nocaps

# fnm
export PATH=~/.fnm:$PATH
eval "$(fnm env --multi)"
fnm use 10.16
