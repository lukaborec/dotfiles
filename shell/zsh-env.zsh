# Environment & system path setup

# Path setup
export PATH="$HOME/bin:$HOME/.local/bin:/usr/local/bin:$PATH"

# Homebrew env (for M1+ systems)
eval "$(/opt/homebrew/bin/brew shellenv)"

# Locale
export LANG=en_US.UTF-8

# Enable extended completions
fpath+=($(brew --prefix)/share/zsh-completions)
autoload -Uz compinit && compinit

# Optional completion improvements
zstyle ':completion:*' menu select
zstyle ':completion:*' matcher-list 'm:{a-zA-Z}={A-Za-z}'

# pyenv setup
export PYENV_ROOT="$HOME/.pyenv"
export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init --path)"
eval "$(pyenv virtualenv-init -)"
