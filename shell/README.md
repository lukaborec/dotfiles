# Shell Configuration

This directory contains Zsh-related shell configuration, managed as part of the dotfiles system.

## Structure

- `.zshrc` – main entry point, symlinked to `~/.zshrc`
- `zsh-env.zsh` – environment variables and system paths (e.g. Homebrew, locale, pyenv)
- `zsh-omz.zsh` – Oh My Zsh configuration and Powerlevel10k theme setup
- `aliases.zsh` – custom CLI aliases

## Setup Instructions

### 1. Install dependencies

Ensure you have the following installed:
- [zsh](https://www.zsh.org/)
- [Oh My Zsh](https://ohmyz.sh/)
- [Powerlevel10k](https://github.com/romkatv/powerlevel10k)

You can install OMZ and Powerlevel10k manually or via Homebrew.

### 2. Symlink `.zshrc`

Use `stow` or manual symlinks:

```bash
# Manual
ln -sf ~/dotfiles/shell/.zshrc ~/.zshrc

# OR with GNU Stow
cd ~/dotfiles
stow shell
