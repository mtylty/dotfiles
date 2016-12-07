# Load a theme
[ -r "$HOME/.zsh-theme" ] && source "$HOME/.zsh-theme"

# Exports
[ -r "$HOME/.exports" ] && source "$HOME/.exports"

# Aliases
[ -r "$HOME/.aliases" ] && source "$HOME/.aliases"


export PATH="$HOME/.bin:$PATH"

# recommended by brew doctor
export PATH="/usr/local/bin:$PATH"
eval "$(rbenv init - --no-rehash)"
