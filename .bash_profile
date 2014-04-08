
function parse_git_dirty {
  [[ $(git status 2> /dev/null | tail -n1) != "nothing to commit, working
  directory clean" ]] && echo "*"
}

function parse_git_branch {
  ref=$(git symbolic-ref HEAD 2> /dev/null) || return
  echo " ("$(parse_git_dirty)${ref#refs/heads/}")"
}
        
BLUE="\[\033[1;34m\]"
RED="\[\033[0;31m\]"
MAGENTA="\[\033[0;35m\]"
YELLOW="\[\033[0;33m\]"
GREEN="\[\033[0;32m\]"

PS1="$GREEN(\A) ${debian_chroot:+($debian_chroot)}$MAGENTA\u@\h\[\033[00m\]:$GREEN\w$YELLOW\$(parse_git_branch)\[\033[00m\]\n\$ "

#enables color in the terminal bash shell export
CLICOLOR=1
#sets up the color scheme for list export
LSCOLORS=gxfxcxdxbxegedabagacad

#enables color for iTerm
export TERM=xterm-256color
#sets up proper alias commands when called
alias ls='ls -G'
alias ll='ls -hl'

export PATH='./node_modules/.bin/':$PATH
export PATH=$HOME/.cabal/bin:$PATH

# startup virtualenv-burrito
if [ -f $HOME/.venvburrito/startup.sh ]; then
    . $HOME/.venvburrito/startup.sh
fi

[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*
