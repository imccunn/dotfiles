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
alias ll="ls -lap"
alias la="ls -la"

alias rm="rm -i"
alias mkdir="mkdir -pv"

# Open Navigations
alias o.="open ."
alias s.="subl ."
