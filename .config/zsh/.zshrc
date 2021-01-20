#
# g3tchoo's zshrc
#


# load zgen
source "$HOME/.local/bin/zgen/zgen.zsh"

# plugins
export NVM_DIR="$HOME/.local/bin/nvm"
export NVM_COMPLETION=true
export NVM_LAZY_LOAD=true
zgen load lukechilds/zsh-nvm
zgen load zsh-users/zsh-completions src
zgen load zdharma/fast-syntax-highlighting
zgen load romkatv/powerlevel10k powerlevel10k

setopt promptsubst
setopt autocd

# menu select
zstyle ':completion:*' menu select

# defaults
export EDITOR='nvim'
export VISUAL='nvim'

# alias
alias vim='nvim'
alias ls='lsd'
alias la='ls -a'
alias g='git'
alias cat='bat'

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.config/zsh/p10k.zsh ]] || source ~/.config/zsh/p10k.zsh
