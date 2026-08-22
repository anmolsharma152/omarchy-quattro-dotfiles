# ==========================================
# ENVIRONMENT & CORE PATHS
# ==========================================
[[ -r "$HOME/.config/shell/env.sh" ]] && source "$HOME/.config/shell/env.sh"

# ==========================================
# HISTORY
# ==========================================
HISTFILE=~/.histfile
HISTSIZE=10000
SAVEHIST=10000
setopt appendhistory
setopt sharehistory
setopt hist_ignore_all_dups
setopt hist_save_no_dups
setopt hist_ignore_space

# ==========================================
# COMPLETION (Native Zsh)
# ==========================================
autoload -Uz compinit
compinit

# Case-insensitive tab completion & interactive menu selection
zstyle ':completion:*' matcher-list 'm:{a-zA-Z}={A-Za-z}'
zstyle ':completion:*' menu select

# Native Arch Linux Zsh Plugins
if [ -f /usr/share/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh ]; then
  source /usr/share/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh
fi
if [ -f /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh ]; then
  source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
fi

# ==========================================
# PROMPT & TOOLS
# ==========================================
command -v zoxide &>/dev/null && eval "$(zoxide init zsh)"
command -v starship &>/dev/null && eval "$(starship init zsh)"

# ==========================================
# SHARED ALIASES
# ==========================================
[[ -r "$HOME/.config/shell/aliases.sh" ]] && source "$HOME/.config/shell/aliases.sh"
