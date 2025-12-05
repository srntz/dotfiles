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

# Add the local user bin to PATH 
if [ -d "$HOME/.local/bin" ] ; then
  export PATH="$HOME/.local/bin:$PATH"
fi

# Add Go binary to PATH
if [ -d "/usr/local/go/bin" ]; then
  export PATH="$PATH:/usr/local/go/bin"
fi

# Add the GOPATH to PATH if the go binary exists.
# This makes sure binaries like gopls are available in PATH
if type "go" >/dev/null 2>/dev/null ; then
  export PATH="$PATH:$(go env GOPATH)/bin"
fi
