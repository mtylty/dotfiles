# Ruby aliases
alias be "bundle exec"
alias bi "bundle install"
alias bo "bundle open"
alias rubocop_pr "git fetch; and git diff-tree -r --no-commit-id --name-only master@\{u\} head | xargs ls -1 2>/dev/null | grep '\.rb\$' | xargs rubocop"

# Console aliases
alias g "git"
alias gd "git diff"
alias gs "git status"
alias l "ls"
alias la "ls -la"
alias ll "ls -l"

# Use hub for git
alias git "hub"

