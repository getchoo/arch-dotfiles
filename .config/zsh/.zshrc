#
# g3tchoo's zshrc
#

# load znap
zstyle ':znap:*' plugins-dir "$ZDOTDIR/znap"
source "$ZDOTDIR/znap/zsh-snap/znap.zsh"

# plugins
export NVM_DIR="$HOME/.local/bin/nvm"
export NVM_COMPLETION=true
export NVM_LAZY_LOAD=true
znap source lukechilds/nvm
znap source zsh-users/zsh-completions src
znap source zdharma/fast-syntax-highlighting

setopt promptsubst
setopt autocd

# menu select
zstyle ':completion:*' menu select

# defaults
export EDITOR='nvim'
export VISUAL='nvim'

# alias
alias vim='nvim'
alias ls='exa'
alias la='ls -a'
alias g='git'
alias cat='bat'

eval "$(starship init zsh)"
