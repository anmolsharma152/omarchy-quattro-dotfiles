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
# PROMPT & GIT STATUS (Pure Native Zsh)
# ==========================================
command -v zoxide &>/dev/null && eval "$(zoxide init zsh)"

autoload -Uz vcs_info
setopt prompt_subst

zstyle ':vcs_info:*' enable git
zstyle ':vcs_info:git*' formats '%F{magenta}(%b%u%c)%f'
zstyle ':vcs_info:git*' actionformats '%F{magenta}(%b|%a%u%c)%f'
zstyle ':vcs_info:git*' check-for-changes true
zstyle ':vcs_info:git*' unstagedstr '%F{yellow}*%f'
zstyle ':vcs_info:git*' stagedstr '%F{green}+%f'

precmd() {
  vcs_info
}

PROMPT='%F{cyan}%~%f${vcs_info_msg_0_:+ ${vcs_info_msg_0_}} %(?.%F{green}.%F{red})%%%f '

# ==========================================
# SHARED ALIASES
# ==========================================
[[ -r "$HOME/.config/shell/aliases.sh" ]] && source "$HOME/.config/shell/aliases.sh"
