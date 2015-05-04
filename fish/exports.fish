# Your custom command path...
set -x PATH $PATH ./node_modules/.bin

# Adds the Code folder (with project) in the cd path
set -x CDPATH . ~/Code

# Make vim the default editor
set -x EDITOR "vim"

# Editor for opening gems
set -x BUNDLER_EDITOR "/usr/local/bin/atom"

# Pulsar configuration repo
set -x PULSAR_CONF_REPO "nebulab/pulsar-conf"

# Setting for the new UTF-8 terminal support in Lion
set -x LC_CTYPE "en_US.UTF-8"
set -x LC_ALL "en_US.UTF-8"
set -x LANG "en_US.UTF-8"
set -x LANGUAGE "en_US.UTF-8"

set -x LDFLAGS "-L/usr/local/opt/openssl/lib"
set -x CPPFLAGS "-I/usr/local/opt/openssl/include"

# Don't clear the screen after quitting a manual page
set -x MANPAGER "less -X"
# Colors for Man Pages
set -x LESS_TERMCAP_mb (set_color -o red)
set -x LESS_TERMCAP_md (set_color -o red)
set -x LESS_TERMCAP_me (set_color normal)
set -x LESS_TERMCAP_se (set_color normal)
set -x LESS_TERMCAP_so (set_color -b blue -o yellow)
set -x LESS_TERMCAP_ue (set_color normal)
set -x LESS_TERMCAP_us (set_color -o green)

# Fish specific configuration
set -e fish_greeting
set -g fish_color_autosuggestion 555\x1eyellow
set -g fish_color_command 005fd7
set -g fish_color_comment red
set -g fish_color_cwd green
set -g fish_color_cwd_root red
set -g fish_color_error red\x1e\x2d\x2dbold
set -g fish_color_escape cyan
set -g fish_color_history_current cyan
set -g fish_color_host ff8700
set -g fish_color_match cyan
set -g fish_color_normal normal
set -g fish_color_operator cyan
set -g fish_color_param 00afff\x1ecyan
set -g fish_color_quote brown
set -g fish_color_redirection normal
set -g fish_color_search_match \x2d\x2dbackground\x3dpurple
set -g fish_color_status red
set -g fish_color_user d7005f
set -g fish_color_valid_path \x2d\x2dunderline
set -g fish_key_bindings fish\x5fdefault\x5fkey\x5fbindings
set -g fish_pager_color_completion normal
set -g fish_pager_color_description 555\x1eyellow
set -g fish_pager_color_prefix cyan
set -g fish_pager_color_progress cyan

# Setup rbenv
. (rbenv init -|psub)
