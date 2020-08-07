# p10k instant prompt
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# antibody
source <(antibody init)
##
antibody bundle romkatv/powerlevel10k
antibody bundle zsh-users/zsh-syntax-highlighting
antibody bundle zsh-users/zsh-autosuggestions
##
antibody bundle zsh-users/zsh-history-substring-search
bindkey '^[[A' history-substring-search-up
bindkey '^[[B' history-substring-search-down
##
antibody bundle zsh-users/zsh-completions
autoload -Uz compinit && compinit -i
##

# generated using `p10k configure`
source ~/.p10k.zsh

# p10k overrides
typeset -g POWERLEVEL9K_SHORTEN_STRATEGY=truncate_with_package_name
typeset -g POWERLEVEL9K_PROMPT_CHAR_{OK,ERROR}_VIINS_CONTENT_EXPANSION='$'

# general aliases
alias c='clear'
alias ls='exa'
alias l='ls'
alias ll='ls -lh'
alias m='micro'
alias ..='cd ..'
alias cat='bat'

# git aliases
alias gs='git status'
alias gd='git diff'
alias gl='git log'
alias gc='git commit'

# gopath
export GOPATH=$HOME/code/gopath
export PATH=$PATH:$GOPATH/bin

# local binaries
export PATH=$PATH:$HOME/.local/bin

# node yarn binaries
export PATH=$PATH:$(yarn global bin)

# rust cargo binaries
export PATH=$PATH:$HOME/.cargo/bin


# android studio (required by react native)
# note: android studio has an embedded JDK
export JAVA_HOME="/Applications/Android Studio.app/Contents/jre/jdk/Contents/Home"``
export ANDROID_HOME=$HOME/Library/Android/sdk
export PATH=$PATH:$ANDROID_HOME/emulator
export PATH=$PATH:$ANDROID_HOME/tools
export PATH=$PATH:$ANDROID_HOME/tools/bin
export PATH=$PATH:$ANDROID_HOME/platform-tools

# asdf
. $(brew --prefix asdf)/asdf.sh
export PATH=$HOME/.asdf/shims:$PATH
