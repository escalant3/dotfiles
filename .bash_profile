function parse_git_dirty {
  [[ $(git status 2> /dev/null | tail -n1) != "nothing to commit, working directory clean" ]] && echo "*"
}

function parse_git_branch {
  ref=$(git symbolic-ref HEAD 2> /dev/null) || return
    echo " ("$(parse_git_dirty)${ref#refs/heads/}")"
}

export CLICOLOR=1

export LSCOLORS=GxFxCxDxBxegedabagaced

BLUE="\[\033[1;34m\]"
RED="\[\033[0;31m\]"
MAGENTA="\[\033[0;35m\]"
YELLOW="\[\033[0;33m\]"
GREEN="\[\033[0;32m\]"

export PS1="$GREEN(\A) $MAGENTA\u@\h\[\033[00m\]:$GREEN\w$YELLOW\$(parse_git_branch)\[\033[00m\]\n\$ "

# Node auto path
export PATH=./node_modules/.bin/:$PATH
