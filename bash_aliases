if [[ `uname` == 'Darwin' ]]; then
  alias ps="ps ax"
  alias ls="ls -G"
  export LSCOLORS=gxfxcxdxbxegedabagacad
else
  alias ps="ps faux"
  alias ls="ls --color=auto"
  export LS_COLORS='no=00:fi=00:di=00;36:ln=00;35:pi=40;33:so=01;35:bd=40;33;01:cd=40;33;01:or=01;05;37;41:mi=01;05;37;41:ex=00;31:'
fi

alias ll='ls -l'
alias la='ls -lA'
alias l='ls -CF'

alias gca='git commit -a'
alias gpr='git pull --rebase'
alias gs='git status'
alias gl='git log'
alias gcrb='git checkout --track -b'
alias gd='git diff'

alias rbe-bundle='gem bundle --only development --only test --build-options config/development/gemfile_build_options.yml'
