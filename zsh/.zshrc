# Load a theme
[ -r "$HOME/.zsh-theme" ] && source "$HOME/.zsh-theme"

# Exports
[ -r "$HOME/.exports" ] && source "$HOME/.exports"

# Aliases
[ -r "$HOME/.aliases" ] && source "$HOME/.aliases"

# Boxen environment
[ -f "/opt/boxen/env.sh" ] && source "/opt/boxen/env.sh"
