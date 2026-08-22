# Suppress default welcome greeting
set -g fish_greeting ""

# PATH additions
fish_add_path $HOME/.local/share/omarchy/bin
fish_add_path $HOME/.local/bin
fish_add_path $HOME/.cargo/bin
fish_add_path $HOME/.local/share/go/bin

# Default Editors
set -gx EDITOR nvim
set -gx VISUAL nvim

# ==========================================
# GIT ABBREVIATIONS (Inline auto-expanding)
# ==========================================
abbr -a g git
abbr -a gs 'git status -sb'
abbr -a ga 'git add'
abbr -a gaa 'git add --all'
abbr -a gc 'git commit -v'
abbr -a gcm 'git commit -m'
abbr -a gcam 'git commit -a -m'
abbr -a gcad 'git commit -a --amend'
abbr -a gd 'git diff'
abbr -a gds 'git diff --staged'
abbr -a gp 'git push'
abbr -a gps 'git push'
abbr -a gpl 'git pull'
abbr -a gco 'git checkout'
abbr -a gcb 'git checkout -b'
abbr -a gb 'git branch'
abbr -a glog 'git log --graph --oneline --decorate -n 15'
abbr -a gloga 'git log --graph --oneline --decorate --all'

# ==========================================
# DOTFILES ABBREVIATIONS
# ==========================================
abbr -a dotfiles 'git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME'
abbr -a dots 'git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME'
abbr -a dotstat 'git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME status -sb'
abbr -a dotdiff 'git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME diff'
abbr -a dotlog 'git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME log --graph --oneline --decorate -n 15'

# ==========================================
# SAFE FILE OPERATIONS & NAVIGATION
# ==========================================
abbr -a cp 'cp -i'
abbr -a mv 'mv -i'
abbr -a rm 'rm -i'
abbr -a mkdir 'mkdir -p'

# Modern CLI tools
abbr -a l 'eza -lh --group-directories-first --icons=auto'
abbr -a la 'eza -lha --group-directories-first --icons=auto'
abbr -a lt 'eza --tree --level=2 --long --icons=auto'
abbr -a openports 'sudo ss -tulpn'

function docker-clean --description 'Clean unused Docker resources'
    docker container prune -f
    docker image prune -f
    docker network prune -f
    docker volume prune -f
end

# ==========================================
# PROMPT & NAVIGATION
# ==========================================
if status is-interactive
    command -v zoxide &>/dev/null; and zoxide init fish | source
end
