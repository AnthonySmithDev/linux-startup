eval "$(zellij setup --generate-auto-start zsh)"
# eval "$(zellij setup --generate-completion zsh)"

eval "$(starship init zsh)"
eval "$(sheldon source)"
eval "$(zoxide init zsh)"

# plugin config
export ZVM_VI_EDITOR="hx"
export ZVM_VI_INSERT_ESCAPE_BINDKEY="jk"

export N_PREFIX="$HOME/n"; [[ :$PATH: == *":$N_PREFIX/bin:"* ]] || PATH+=":$N_PREFIX/bin"  # Added by n-install (see http://git.io/n-install-repo).

export GOPATH="$HOME/go"; export GOROOT="$HOME/.go"; export PATH="$GOPATH/bin:$PATH"; # g-install: do NOT edit, see https://github.com/stefanmaric/g

colorscript random
