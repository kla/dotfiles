[ -f ~/.bashrc ] && source ~/.bashrc
[ -d "$HOME/bin" ] && PATH="$HOME/.rbenv/bin:$HOME/bin:$PATH"

if [[ ${OSTYPE//[0-9.]/} = "darwin" ]]; then
    TITLEBAR='\[\033]0;\u@\h:\w \007\]'
    [ -f /Users/oracle/.oraenv ] && . /Users/oracle/.oraenv
    case "$TERM_PROGRAM" in
      "Apple_Terminal")PS1="$TITLEBAR$PS1"
    esac
    case "$TERM" in
      "xterm")PS1="$TITLEBAR$PS1"
    esac
fi

eval "$(rbenv init -)"

EDITOR=/usr/bin/vim
