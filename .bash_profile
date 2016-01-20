export PATH=$PATH:~/cmdCustom
export PATH=$PATH:~/bin

export CLICOLOR=1

. ~/.git-completion.bash
source ~/.git-prompt.sh
export GIT_PS1_SHOWDIRTYSTATE=1

PS1='[\W]$(__git_ps1 " (%s)") $ '

alias ..="cd .."
alias o.="open ."
alias s.="subl ."
alias ll="ls -laF"

alias lx="ls -laF | grep '^d' && ls -lap | grep -v '^d'"

fortune

# curl in the form of : curj localhost:3333 POST '{"payload":"payload"}'
curlJSON() {
  curl -i -H "Accept: application/json" -H "Content-Type: application/json" -X $2 -d $3 "http://$1"
}

alias curj=curlJSON

[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*
source ~/.profile

