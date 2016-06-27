export PATH=~/Applications/mongodb/bin:$PATH
export PATH=$PATH:~/cmdCustom
export PATH=$PATH:~/bin
export PATH=$PATH:/usr/local/mysql/bin:/usr/local/sbin

export CLICOLOR=1

. ~/.git-completion.bash
. ~/.git-prompt.sh
export GIT_PS1_SHOWDIRTYSTATE=1

PS1='[\t - \W]$(__git_ps1 " (%s)") $ '

alias ..="cd .."
alias o.="open ."
alias s.="subl ."
alias ll="ls -laF"
alias cll="clear && ll"
alias lx="ls -laF | grep '^d' && ls -lap | grep -v '^d'"

# alias tmux="TERM=screen-256color-bce tmux"

# curl in the form of : curj localhost:3333 POST '{"payload":"payload"}'
curlJSON() {
  curl -i -H "Accept: application/json" -H "Content-Type: application/json" -X $2 -d $3 "http://$1"
}

alias curj=curlJSON

[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*
source ~/.profile

