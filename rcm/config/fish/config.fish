set -U FZF_LEGACY_KEYBINDINGS 0

set -x LC_ALL ja_JP.UTF-8
set -x LANG ja_JP.UTF-8

set -x PATH /usr/local/bin $PATH
set -x PATH $HOME/.rbenv/bin $PATH
status --is-interactive; and source (rbenv init -|psub)

set -x PYENV_ROOT $HOME/.pyenv
set -x PATH $PYENV_ROOT/bin $PATH
set -x PATH $PYENV_ROOT/shims $PATH
status --is-interactive; and source (pyenv init -|psub)

set -x PATH $HOME/.poetry/bin $PATH

set -x GOPATH $HOME
set -x PATH $GOPATH/bin $PATH

alias be 'bundle exec'
alias cat 'bat'
alias gmbd 'git branch --merged master | grep -vE "^\*|master\$" | xargs -I [] git branch -d []'
alias ls 'exa --long --header --git'
function g --wraps git
  hub $argv;
end

source /usr/local/Caskroom/google-cloud-sdk/latest/google-cloud-sdk/path.fish.inc

starship init fish | source
