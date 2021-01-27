#
# g3tchoo's zshrc
#

# completion 
autoload -U compinit
zstyle ':completion:*' menu select
zmodload zsh/complete
zmodload zsh/complist
compinit

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

# load znap
export ZPLUG_HOME="$ZDOTDIR/zplug"
source "$ZPLUG_HOME/init.zsh"

# load plugins
export NVM_DIR="$HOME/.local/bin/nvm"
export NVM_COMPLETION=true
export NVM_LAZY_LOAD=true
zplug "lukechilds/nvm"
zplug "zsh-users/zsh-completions"
zplug "zdharma/fast-syntax-highlighting"

# Install plugins if there are plugins that have not been installed
 if ! zplug check --verbose; then
     printf "Install? [y/N]: "
         if read -q; then
                 echo; zplug install
                     fi
                     fi

# Then, source plugins and add commands to $PATH
zplug load

eval "$(starship init zsh)"
