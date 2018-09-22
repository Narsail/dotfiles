alias rm=trash
alias vi=nvim
alias vim=nvim
alias dl="cd ~/Downloads"
alias dt="cd ~/Desktop"
alias dv="cd ~/Developer"

alias aliases="vim .zsh/aliases.zsh"

alias ic='cd ~/Library/Mobile\ Documents/com~apple~CloudDocs'

function mkcd() {
  mkdir -p "$@" && cd "$_";
}

alias a=gaa
alias m=gcmsg
alias p=ggpush
alias gcm="git checkout master && git pull origin master"
alias gcb="git checkout master && git pull origin master && git checkout -b "
alias grbm="git fetch && git rebase origin/master"
alias gpf="git push --force"
