set -x PHANTOMENV_ROOT /opt/boxen/phantomenv
set -x PATH /opt/boxen/phantomenv/bin $PATH
set -x PATH /opt/boxen/phantomenv/shims $PATH
phantomenv rehash 2>/dev/null
