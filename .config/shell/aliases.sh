# ==========================================
# GIT SHORTHANDS (Overrides Ghostscript gs)
# ==========================================
alias g='git'
alias gs='git status -sb'
alias ga='git add'
alias gaa='git add --all'
alias gc='git commit -v'
alias gcm='git commit -m'
alias gcam='git commit -a -m'
alias gcad='git commit -a --amend'
alias gd='git diff'
alias gds='git diff --staged'
alias gp='git push'
alias gps='git push'
alias gpl='git pull'
alias gco='git checkout'
alias gcb='git checkout -b'
alias gb='git branch'
alias glog='git log --graph --oneline --decorate -n 15'
alias gloga='git log --graph --oneline --decorate --all'

# ==========================================
# DOTFILES SHORTHANDS
# ==========================================
alias dotfiles='/usr/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME'
alias dots='/usr/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME'
alias dotstat='dots status -sb'
alias dotdiff='dots diff'
alias dotlog='dots log --graph --oneline --decorate -n 15'

# ==========================================
# SAFE FILE OPERATIONS & DIRECTORY NAVIGATION
# ==========================================
alias cp='cp -i'
alias mv='mv -i'
alias rm='rm -i'
alias mkdir='mkdir -p'
alias ..='cd ..'
alias ...='cd ../..'
alias ....='cd ../../..'

# ==========================================
# MODERN CLI TOOLS (eza, bat, ripgrep)
# ==========================================
if command -v eza &> /dev/null; then
  alias l='eza -lh --group-directories-first --icons=auto'
  alias la='eza -lha --group-directories-first --icons=auto'
  alias lt='eza --tree --level=2 --long --icons=auto'
fi

if command -v bat &> /dev/null; then
  alias cat='bat --style=plain --paging=never'
fi

# ==========================================
# UTILITIES
# ==========================================
alias openports='sudo ss -tulpn'
alias docker-clean='docker container prune -f ; docker image prune -f ; docker network prune -f ; docker volume prune -f'
alias p="ps aux | grep "
alias h="history | grep "
