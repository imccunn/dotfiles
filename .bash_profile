export PATH=$PATH:~/bin
export CLICOLOR=1

. ~/.git-completion.bash
. ~/.git-prompt.sh
export GIT_PS1_SHOWDIRTYSTATE=1

export PS1='[\w]$(__git_ps1 " (%s)") $ '
set -o vi
alias ..="cd .."
alias o.="open ."
alias ll="ls -laF"
alias c="clear"
alias cll="clear && ll"

alias lx="ls -laF | grep '^d' && ls -lap | grep -v '^d'"
alias vi="nvim"

# curl in the form of : curj localhost:3333 POST '{"payload":"payload"}'
curlJSON() {
  curl -i -H "Accept: application/json" -H "Content-Type: application/json" -X $2 -d $3 "http://$1"
}

showHeaders() {
  curl -IkX GET $1
}

alias curj=curlJSON
