#!/usr/bin/env bash
set -e

CONFIG_FILE="$HOME/.zshrc"

if ! command -v pyenv &> /dev/null; then
  echo "pyenv is not installed. Did you run 'brew bundle'?"
  exit 1
fi

if ! grep -q 'pyenv init' "$CONFIG_FILE"; then
  echo "Adding pyenv init block to $CONFIG_FILE"

  cat << 'EOF' >> "$CONFIG_FILE"

# pyenv setup
export PATH="$HOME/.pyenv/bin:$PATH"
eval "$(pyenv init --path)"
eval "$(pyenv virtualenv-init -)"
EOF

  echo "Restart your terminal or run: source $CONFIG_FILE"
else
  echo "pyenv init already configured in $CONFIG_FILE"
fi
