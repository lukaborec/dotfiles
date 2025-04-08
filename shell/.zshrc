# dotfiles-managed .zshrc

# Powerlevel10k instant prompt
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# Resolve the dotfiles directory
export DOTFILES="$HOME/Dev/dotfiles"

source "$DOTFILES/shell/zsh-env.zsh"
source "$DOTFILES/shell/zsh-omz.zsh"
source "$DOTFILES/shell/aliases.zsh"
