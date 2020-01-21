alias zshconfig="nvim ~/.zshrc"
alias zshsource="source ~/.zshrc"
alias G='| grep'
alias H='| head'
alias T='| tail'
alias f='fasd'
alias v='f -e nvim'

# Pretty print for git repo branches
# The output will not colored due to `column` using
# TODO: do it via printf or paint output after using column,
# for example - using sed
alias gbpp="git for-each-ref --sort=committerdate refs/heads/ --format='%(HEAD) %(\
color:yellow)%(refname:short)%(color:reset) | %(authorname) | (%(color:green)%(c\
ommitterdate:relative)%(color:reset))| %(contents:subject) ' | column -t -s '|'"
alias kube='kubectl --context="$KUBECTL_CONTEXT" --namespace="$KUBECTL_NAMESPACE"'

# be careful, deletes branches!
alias gsweep='git branch --merged master | command grep -vE "^(\*|\s*develop\s*|\
\s*master\s*$)" | command xargs -n 1 git branch -d'