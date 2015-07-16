export PATH=/usr/local/bin:$PATH
export PATH=/Users/ianmccunn/.node/bin:/usr/local/bin:/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:/opt/X11/bin
export NODE_PATH=/Users/ianmccunn/.node/lib/node_modules

source ~/.nvm/nvm.sh
export CLICOLOR=1
. ~/.git-completion.bash
source ~/.git-prompt.sh
export GIT_PS1_SHOWDIRTYSTATE=1

PS1='[\W]$(__git_ps1 " (%s)") $ '

##########
# Aliases
##########

# Folder Navigations
alias ..="cd .."

# Terminal
alias ll="ls -lp"
alias la="ls -lap"
# List directories first, then non directories
alias lx="ls -lap | grep '^d' && ls -lap | grep -v '^d'"

# Creation and Deletion 
alias rm="rm -i"
alias mkdir="mkdir -pv"
alias cp="cp -i"

# Open Navigations
alias o.="open ."
alias s.="subl ."

curlJSON() {
  curl -H "Content-Type: application/json" -X $2 -d $3 "http://$1"
}

alias curj=curlJSON
