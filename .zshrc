# The following lines were added by compinstall

zstyle ':completion:*' completer _expand _complete _ignored _approximate
zstyle ':completion:*' max-errors 2
zstyle :compinstall filename '/home/srntz/.zshrc'

autoload -Uz compinit
compinit
# End of lines added by compinstall
# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
bindkey -e
# End of lines configured by zsh-newuser-install

# set the shell prompt to hostname-pwd-$
PROMPT='%m %F{blue}%6~%f $ '

export EDITOR="nvim"
export VISUAL="nvim"
