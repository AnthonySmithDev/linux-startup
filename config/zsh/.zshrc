eval "$(starship init zsh)"
eval "$(sheldon source)"
eval "$(zoxide init zsh)"

eval "$(zellij setup --generate-auto-start zsh)"
# eval "$(zellij setup --generate-completion zsh)"

colorscript random

export N_PREFIX="$HOME/n"; [[ :$PATH: == *":$N_PREFIX/bin:"* ]] || PATH+=":$N_PREFIX/bin"  # Added by n-install (see http://git.io/n-install-repo).

export GOPATH="$HOME/go"; export GOROOT="$HOME/.go"; export PATH="$GOPATH/bin:$PATH"; # g-install: do NOT edit, see https://github.com/stefanmaric/g
