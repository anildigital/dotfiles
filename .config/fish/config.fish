set -gx LC_ALL en_US.UTF-8
set -gx LANG en_US.UTF-8

# User bin path
set -gx PATH $PATH /Users/anil/bin

alias simulator="open /Applications/Xcode.app/Contents/Developer/Platforms/iPhoneSimulator.platform/Developer/Applications/iPhone\ Simulator.app"
alias dl='docker ps -l -q'

set -gx EC2_HOME "/Users/anil/Code/ec2-api-tools-1.6.13.0"

alias ports="lsof -n -iTCP -P | grep LISTEN"
alias fix="git stash; and git pull; and git stash apply"
alias jstags="ctags -e -R --exclude=node_modules --exclude=public"

# Bins
set -gx PATH $PATH .bin
set -gx PATH $PATH /usr/local/bin
set -gx PATH $PATH  ~/Code/dotfiles/bin

# Postgres
set -gx PGPORT 5432
set -gx PGHOST localhost
set -gx PGUSER postgres

# Rabbitmq bin
set -gx PATH $PATH /usr/local/Cellar/rabbitmq/3.8.3/sbin/

# Postgres
set -gx PATH $PATH /Applications/Postgres.app/Contents/Versions/13/bin/

# asdf
set -gx PATH $PATH /Users/anil/.asdf/shims/
set -gx PATH $PATH /Users/anil/Code/elixir-ls/release/


# Python
set -gx PATH $PATH /Users/anil/Library/Python/2.7/bin

# asdf
set -gx PATH $PATH /Users/anil/.asdf/installs/elixir/1.13.3/.mix/escripts/
source /usr/local/opt/asdf/asdf.fish

set -gx PATH $PATH /Users/anil/ESL/HM/lab_proto_gen/target/release/

# rust
set -gx PATH $PATH /Users/anil/.asdf/installs/rust/1.55/bin

# Sublime
set -gx PATH $PATH "/Applications/Sublime Text.app/Contents/SharedSupport/bin"

# Go
set -gx GOPATH $HOME/.go
set -gx GOROOT /usr/local/opt/go/libexec
set -gx PATH $PATH $GOPATH/bin
set -gx PATH $PATH $GOROOT/bin

set -gx ERL_AFLAGS "-kernel shell_history enabled"
set -gx fish_user_paths "/usr/local/opt/texinfo/bin" $fish_user_paths

status --is-interactive; and source (rbenv init -|psub)

# Set GPG TTY
set -x GPG_TTY (tty)

# Erlang docs
set -gx KERL_BUILD_DOCS yes

set -g fish_user_paths "/usr/local/opt/terraform@0.11/bin" $fish_user_paths

# Iterm integration
test -e {$HOME}/.iterm2_shell_integration.fish ; and source {$HOME}/.iterm2_shell_integration.fish

set -g fish_user_paths "/usr/local/opt/curl/bin" $fish_user_paths
set -g fish_user_paths "/usr/local/sbin" $fish_user_paths

set -g fish_user_paths "/usr/local/opt/ncurses/bin" $fish_user_paths
set -g fish_user_paths "/usr/local/opt/python@3.8/bin" $fish_user_paths

# JDK, Java
set -g fish_user_paths "/usr/local/opt/openjdk/bin" $fish_user_paths
set -g fish_user_paths "/usr/local/opt/openjdk/bin" $fish_user_paths


# ulimit
#ulimit -n 200000
#ulimit -u 2048

# Private config
source /Users/anil/.config/fish/private.fish

direnv hook fish | source
