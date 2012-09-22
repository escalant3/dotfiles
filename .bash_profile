# Needed in OS X
if [ -f ~/.bashrc ]; then
  source ~/.bashrc
fi

[[ -s "/Users/escalant3/.rvm/scripts/rvm" ]] && source "/Users/escalant3/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*

test -r /sw/bin/init.sh && . /sw/bin/init.sh


# http://blog.imzaid.com/color-terminal-bash-on-the-mac-iterm-included
#enables color in the terminal bash shell export
CLICOLOR=1
#sets up the color scheme for list export
LSCOLORS=gxfxcxdxbxegedabagacad
#sets up the prompt color (currently a green similar to linux terminal)
#export PS1='\[\033[01;32m\]\u@\h\[\033[00m\]:\[\033[01;36m\]\w\[\033[00m\]\$ '
#enables color for iTerm
export TERM=xterm-color
#sets up proper alias commands when called
alias ls='ls -G'
alias ll='ls -hl'
