# AUTOCOMPLETION
source /opt/homebrew/share/zsh-autosuggestions/zsh-autosuggestions.zsh

# initialize autocompletion
autoload -U compinit && compinit

# history setup
setopt SHARE_HISTORY
HISTFILE=$HOME/.zhistory
SAVEHIST=1000
HISTSIZE=999
setopt HIST_EXPIRE_DUPS_FIRST
# autocompletion using arrow keys (based on history)
bindkey '\e[A' history-search-backward
bindkey '\e[B' history-search-forward

export ZSH=$HOME/.local/share/oh-my-zsh
source /opt/homebrew/opt/powerlevel9k/powerlevel9k.zsh-theme

source /opt/homebrew/opt/chruby/share/chruby/chruby.sh
source /opt/homebrew/opt/chruby/share/chruby/auto.sh

chruby ruby-3.1.3 # run chruby to see actual version
plugins=(
    git
    docker
    colored-man-pages
    colorize
    pip
    python
    brew
    osx
    zsh-syntax-highlighting
    zsh-docker
    zsh-autosuggestions
)
ZSH_THEME="powerlevel9k/powerlevel9k"

# Load Angular CLI autocompletion.
source <(ng completion script)

# pnpm
export PNPM_HOME="/Users/anniehedgpeth/Library/pnpm"
case ":$PATH:" in
  *":$PNPM_HOME:"*) ;;
  *) export PATH="$PNPM_HOME:$PATH" ;;
esac
# pnpm end
export PATH="$HOME/.cargo/bin:$PATH"
export PATH="$HOME/.cargo/bin:$PATH"

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# homebrew
# allows for `brew bundle install` to be run anywhere
export HOMEBREW_BUNDLE_FILE="~/.config/homebrew/Brewfile"
export HOMEBREW_NO_ENV_HINTS=true

# aliases
alias config='/usr/bin/git --git-dir=/Users/anniehedgpeth/.cfg/ --work-tree=/Users/anniehedgpeth'