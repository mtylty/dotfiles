set -x FISH_HOME "$HOME/.config/fish"

# Exports
[ -r "$FISH_HOME/exports.fish" ]; and source "$FISH_HOME/exports.fish"

# Aliases
[ -r "$FISH_HOME/aliases.fish" ]; and source "$FISH_HOME/aliases.fish"

# Remove Atom storage
rm -rf ~/.atom/storage

source /usr/local/opt/asdf/libexec/asdf.fish

source /usr/local/opt/asdf/libexec/asdf.fish
