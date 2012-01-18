if [[ `uname` == 'Darwin' ]]; then
  alias ps="ps ax"
  alias ls="ls -G"
  export LSCOLORS=gxfxcxdxbxegedabagacad
else
  alias ps="ps faux"
  alias ls="ls --color=auto"
  export LS_COLORS='no=00:fi=00:di=00;36:ln=00;35:pi=40;33:so=01;35:bd=40;33;01:cd=40;33;01:or=01;05;37;41:mi=01;05;37;41:ex=00;31:'
fi

# enable color support of ls and also add handy aliases
if [ -x /usr/bin/dircolors ]; then
  test -r ~/.dircolors && eval "$(dircolors -b ~/.dircolors)" || eval "$(dircolors -b)"
  alias grep='grep --color=auto'
  alias fgrep='fgrep --color=auto'
  alias egrep='egrep --color=auto'
fi

alias ll='ls -l'
alias la='ls -lA'
alias l='ls -CF'
alias alert='notify-send --urgency=low -i "$([ $? = 0 ] && echo terminal || echo error)" "$(history|tail -n1|sed -e '\''s/^\s*[0-9]\+\s*//;s/[;&|]\s*alert$//'\'')"'

# git
alias gb='git branch'
alias gco='git checkout'
alias gca='git commit -a'
alias gpr='git pull --rebase'
alias gs='git status'
alias gl='git log'
alias gcrb='git checkout --track -b'
alias gd='git diff --color-words'

# rubies
alias ree='rvm use ree'
alias r1.8='rvm use ruby-1.8.7'
alias r1.9='rvm use ruby-1.9.2'
alias rt='ruby -Itest'
alias rbenv-update='(cd ~/.rbenv/plugins/ruby-build && git pull)'

# passenger restart alias if current directory looks like a rails app
alias pr='if [ -x ./public ] && [ -x ./app ] && [ -x ./tmp ]; then touch tmp/restart.txt; fi'
