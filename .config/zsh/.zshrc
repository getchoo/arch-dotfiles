#
# g3tchoo's zshrc
#

# load zinit
declare -A ZINIT
ZINIT[BIN_DIR]="$ZDOTDIR/zinit/bin"
ZINIT[HOME_DIR]="$ZDOTDIR/zinit"
ZINIT[PLUGINS_DIR]="$ZDOTDIR/zinit/plugins"
source "$ZDOTDIR/zinit/bin/zinit.zsh"

# load plugins
export NVM_DIR="$HOME/.local/bin/nvm"
zinit wait lucid for \
	light-mode "zsh-users/zsh-completions" \
	light-mode "zdharma/fast-syntax-highlighting" \
#	light-mode "lukechilds/zsh-nvm"

# completion 
autoload -U compinit
compinit
zstyle ':completion:*' menu select
#zmodload zsh/complist

# options
setopt autocd
setopt appendhistory
setopt sharehistory
setopt incappendhistory

# enable history
HISTFILE="$HOME/.cache/zsh/history"
HISTSIZE=100
SAVEHIST=1000

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
