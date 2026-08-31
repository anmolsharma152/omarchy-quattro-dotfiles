export OMARCHY_PATH="$HOME/.local/share/omarchy"
export PATH="$OMARCHY_PATH/bin:$HOME/.local/bin:$PATH"

# Load Omarchy environment and core defaults
[[ -r "$OMARCHY_PATH/default/bash/env-bootstrap" ]] && source "$OMARCHY_PATH/default/bash/env-bootstrap"
[[ -r "$OMARCHY_PATH/default/bash/rc" ]] && source "$OMARCHY_PATH/default/bash/rc"

# Load shared environment and personal aliases
[[ -r "$HOME/.config/shell/env.sh" ]] && source "$HOME/.config/shell/env.sh"
[[ -r "$HOME/.config/shell/aliases.sh" ]] && source "$HOME/.config/shell/aliases.sh"

export GOPATH="$HOME/.go"

# Only display greeting/fetch in interactive terminal sessions
if [[ $- == *i* ]] && [[ -t 1 ]]; then
    nitch
fi
