if [[ $DEVBOX_SHELL_ENABLED != 1 ]]; then 
  # eval "$(zellij setup --generate-auto-start zsh)"
fi
# eval "$(zellij setup --generate-completion zsh)"

eval "$(starship init zsh)"
eval "$(sheldon source)"
eval "$(zoxide init zsh)"

export EDITOR="/home/anthony/.cargo/bin/hx"
export SUDO_EDITOR="/home/anthony/.cargo/bin/hx"

# plugin config
export ZVM_VI_EDITOR="hx"
export ZVM_VI_INSERT_ESCAPE_BINDKEY="jk"

export N_PREFIX="$HOME/n"; [[ :$PATH: == *":$N_PREFIX/bin:"* ]] || PATH+=":$N_PREFIX/bin"  # Added by n-install (see http://git.io/n-install-repo).

export GOPATH="$HOME/go"; export GOROOT="$HOME/.go"; export PATH="$GOPATH/bin:$PATH"; # g-install: do NOT edit, see https://github.com/stefanmaric/g

export PATH="$PATH:/home/anthony/.local/bin"

# colorscript random

alias lzg="lazygit"
alias lzd="lazydocker"

if [ -e /home/anthony/.nix-profile/etc/profile.d/nix.sh ]; then . /home/anthony/.nix-profile/etc/profile.d/nix.sh; fi # added by Nix installer

fpath=(~/.zsh $fpath)
autoload -U compinit
compinit -i

