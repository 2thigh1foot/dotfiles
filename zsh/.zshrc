EDITOR="nvim"


autoload -U colors && colors


PS1="%B%{$fg[red]%}[%{$fg[yellow]%}%n%{$fg[green]%}@%{$fg[magenta]%}%~%{$fg[red]%}]%{$reset_color%}$%b "

setopt autocd		# Automatically cd into typed directory.
stty stop undef		# Disable ctrl-s to freeze terminal.
setopt interactive_comments

autoload -U compinit
zstyle ':completion:*' menu select
zmodload zsh/complist
compinit

# Include hidden files in autocomplete:
_comp_options+=(globdots)

EDITOR="nvim"

set -o vi

alias vim="nvim"

# Load aliases and shortcuts
[ -f "$HOME/.config/aliasrc" ] && source "$HOME/.config/aliasrc"
[ -f "$HOME/.config/shells/profile" ] && source "$HOME/.config/shells/profile"

# History in cache directory:
HISTSIZE=10000000
SAVEHIST=10000000
HISTFILE=~/.cache/zsh/history


# Test comment to check link
alias python="python3"
alias pip="pip3"


# pyenv evals
export PATH="/home/ciante/.pyenv/bin:$PATH"
eval "$(pyenv init -)"
eval "$(pyenv virtualenv-init -)"

export PATH="/home/ciante/.local/bin:$PATH"


# golang path stuff
export PATH="$PATH:$HOME/go/bin"
export PATH=$PATH:/usr/local/go/bin


# stop ls highlighting
export LS_COLORS=$LS_COLORS:'ow=1;34:';

export NVIMP="~/.config/nvim"

alias lsplog="tail -f ~/.local/share/nvim/lsp.log"

# ignore case cd
zstyle ':completion:*' matcher-list '' 'm:{a-z}={A-Z}' '+m:{A-Z}={a-z}'

source /usr/local/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
