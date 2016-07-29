alias ll='ls -l'
alias screen='export SCREENPWD=$(pwd); /usr/bin/screen'

export NODE_PATH=/usr/local/lib/node_modules
export EDITOR=/usr/bin/vim
export CC=/usr/local/bin/gcc-4.2

if test -f ~/.rvm/scripts/rvm; then
  [ "$(type -t rvm)" = "function" ] || source ~/.rvm/scripts/rvm
fi

alias pm='python manage.py'

function parse_git_branch {
  ref=$(git symbolic-ref HEAD 2>/dev/null) || return
  echo "("${ref##refs/heads/}")"
}

RED="\[\033[0;31m\]"
YELLOW="\[\033[0;33m\]"
GREEN="\[\033[0;32m\]"
WHITE="\[\033[0;37m\]"

. ~/.completion_scripts/git-completion.bash
. ~/.prompt_scripts/git-prompt.sh

export PS1="$RED\h:$GREEN\w$YELLOW \$(parse_git_branch)$WHITE\$ "
