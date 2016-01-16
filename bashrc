alias ..='cd ..'
alias back='cd -'
alias ls='ls -FGh'
alias ll='ls -lA'
alias dir='ls -alg'

alias cp='cp -i'
alias rm='rm -i'
alias mv='mv -i'

alias lpr='lpr -h'

alias python='python3'
alias pip='pip3'

export PS1="\033]0;$(uname -n):  ${PWD} \007\n\W$ "
export BASH_ENV=$HOME/.bashrc
export EDITOR=vim
export PATH=$HOME/usr/bin:$PATH

export JAVA_HOME="/Library/Internet Plug-Ins/JavaAppletPlugin.plugin/Contents/Home"

export PATH=$HOME/usr/bin:$PATH

export TEXMFHOME=$HOME/usr/texmf
export TEXMFCONFIG=$TEXMFHOME
export TEXMFVAR=$TEXMFHOME
# After changes to local texmf,
# update the database by
# $ texhash $TEXMFHOME

