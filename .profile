export NODE_PATH=
export PATH=./node_modules/.bin:$HOME/bin:/opt/local/bin:/opt/local/sbin:$PATH

export LANG=ru_RU.UTF-8
export BLOCKSIZE=K
export EDITOR=vim
export PAGER=less

export HISTSIZE=5000

alias zorg='xargs'

alias h='fc -l'
alias j='jobs'
alias ll='ls -laFo'
alias l='ls -l'
alias m=$PAGER
alias la='ls -la'
alias g='egrep -i'


alias ga='git add'
alias gb='git branch'
alias go='git checkout'
alias gi='git ci'
alias gd='git di'
alias gds='git di --staged'
alias gm='git merge --no-ff'
alias gs='git st -sb -uall'
alias gl='git lol'
alias gp='git pull --rebase'
alias gt='git tag'
alias gr='git remote -v'
alias gh='git hist'
alias gc='git clone'
alias gmod="git status -uall --porcelain | awk '{print \$2}'"
alias gmods="git status -uall --porcelain | grep [MADRCU] | awk '{print \$2}'"

export PS1="`whoami`@`hostname | sed 's/\..*//'`:\w > "

if [ "$TERM" != "dumb" ] && [ -x /usr/bin/dircolors ]; then
    eval "`dircolors -b`"
    alias ls='ls --color=auto'
    alias grep='grep --color=auto'
    alias fgrep='fgrep --color=auto'
    alias egrep='egrep --color=auto'
else
    alias ls='ls -G'
    export LSCOLORS="Exfxcxdxbxegedabagacad"
fi

if [ -f /usr/local/etc/bash_completion ]; then
    . /usr/local/etc/bash_completion
fi

_expand()
{
    return 0;
}
