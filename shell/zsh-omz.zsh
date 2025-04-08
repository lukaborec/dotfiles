# Oh My Zsh and Powerlevel10k theme

# Oh My Zsh base path
export ZSH="$HOME/.oh-my-zsh"

# Theme
ZSH_THEME="powerlevel10k/powerlevel10k"

# Plugins for completions and helpers
plugins=(git pip python brew)

# Load OMZ
source $ZSH/oh-my-zsh.sh

# Load Powerlevel10k config if present
[[ -f ~/.p10k.zsh ]] && source ~/.p10k.zsh
