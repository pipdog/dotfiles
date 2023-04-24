# Prompt and colours
autoload -U colors && colors
PS1="%B%{$fg[red]%}[%{$fg[yellow]%}%n%{$fg[green]%}@%{$fg[blue]%}%M %{$fg[magenta]%}%~%{$fg[red]%}]%{$reset_color%}$%b "

# History in cache directory:
HISTSIZE=10000
SAVEHIST=10000
HISTFILE=~/.cache/zsh/history

# vi mode
bindkey -v
export KEYTIMEOUT=1

# Zsh to use the same colors as ls
alias ls="ls --color=auto"
alias grep='grep --color=auto'

# Basic auto/tab complete:
autoload -U compinit
zstyle ':completion:*' menu select
zmodload zsh/complist
compinit
_comp_options+=(globdots)		# Include hidden files.

# Edit line in vim with ctrl-e:
autoload edit-command-line; zle -N edit-command-line
bindkey '^e' edit-command-line

# Case insensitive cd
autoload -Uz compinit && compinit
zstyle ':completion:*' matcher-list 'm:{a-z}={A-Za-z}'

# Aliasesseses
alias asdf="setxkbmap real-prog-dvorak"
alias aoeu="setxkbmap se"
alias snth="setxkbmap se us_dvorak"
#alias eith="nvim $HOME/.config/i3/config"
alias ezsh="nvim $HOME/.zshrc"
alias envi="nvim $HOME/.config/nvim/"
alias etmu="nvim $HOME/.tmux.conf"

# Exports
export SUDO_EDITOR=/usr/bin/nvim
export EDITOR=/usr/bin/nvim
export MANPAGER='nvim +Man!'

export TERMINAL=/usr/bin/alacritty

# Load zsh-syntax-highlighting; should be last.
# source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh 2>/dev/null
