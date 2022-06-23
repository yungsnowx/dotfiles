autoload -Uz compinit promptinit
compinit
promptinit
prompt redhat

PS1="%B%{$fg[yellow]%}%n%{$fg[green]%}@%{$fg[blue]%}%m %{$fg[magenta]%}%~%{$reset_color%}$%b "

# History in cache directory:
HISTSIZE=10000000
SAVEHIST=10000000
HISTFILE=~/.cache/zsh/history

# sudo not required for some system commands
for command in mount umount pacman su ; do
	alias $command="sudo $command"
done; unset command

# Aliases
alias diff='diff --color=auto'
alias du='du -h'
alias grep='grep --color=auto'
alias egrep='egrep --color=auto'
alias fgrep='fgrep --color=auto'
alias ip='ip -color=auto'
alias ls='ls -h --color=auto'
alias ll='ls -lah'

alias dots='/usr/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME'

# Autocompletion
zstyle ':completion:*' matcher-list 'm:{a-zA-Z}={A-Za-z}'
zstyle ':completion:*' menu select
setopt COMPLETE_ALIASES

# Keybindings for Xorg server
bindkey "^[[H" beginning-of-line
bindkey "^[[P" delete-char
bindkey "^[[4~" end-of-line
bindkey "^[[1;5C" forward-word
bindkey "^[[1;5D" backward-word
bindkey "^[[M" delete-word
bindkey "^H" backward-delete-word

source $XDG_CONFIG_HOME/zsh/plugins/fast-syntax-highlighting/fast-syntax-highlighting.plugin.zsh
source /usr/share/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh
