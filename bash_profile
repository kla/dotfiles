if [ -f ~/.bashrc ]; then
  . ~/.bashrc
fi

if [ -f /Users/oracle/.oraenv ]; then
  . /Users/oracle/.oraenv
fi

export PATH=$PATH:$HOME/bin
