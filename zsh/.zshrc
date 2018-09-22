echo "Sourcing zgen"
source "${HOME}/.zgen/zgen.zsh"

# Path to your oh-my-zsh installation.
export ZSH=/Users/moeller_david/.oh-my-zsh

# Set name of the theme to load. Optionally, if you set this to "random"
# it'll load a random theme each time that oh-my-zsh is loaded.
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
ZSH_THEME="robbyrussell"

plugins=(
  git
  kubectl
)

source $ZSH/oh-my-zsh.sh
source ~/.oh-my-zsh/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
. /usr/local/etc/profile.d/z.sh

# User configuration

function powerline_precmd() {
    PS1="$(powerline-shell --shell zsh $?)"
}

function install_powerline_precmd() {
  for s in "${precmd_functions[@]}"; do
    if [ "$s" = "powerline_precmd" ]; then
      return
    fi
  done
  precmd_functions+=(powerline_precmd)
}

if [ "$TERM" != "linux" ]; then
    install_powerline_precmd
fi

echo "Sourcing additional configurations"
for config ($HOME/.zsh/*.zsh) source $config

# if the init scipt doesn't exist
if ! zgen saved; then
  echo "Registering zgen plugins"
  zgen oh-my-zsh

  # Autosuggestions
  zgen load zsh-users/zsh-autosuggestions

  # Brew autocompletion
  zgen oh-my-zsh plugins/brew

  # `cat` syntax highlighting
  zgen oh-my-zsh plugins/colorize

  # Autocompletion
  zgen oh-my-zsh plugins/compleat

  # Git autofill
  zgen oh-my-zsh plugins/git-extras

  # Gitignore downloader
  zgen oh-my-zsh plugins/gitignore

  # Esc twice to put sudo in front of the command
  zgen oh-my-zsh plugins/sudo

  # generate the init script from plugins above
  zgen save
fi

export GOPATH=$HOME/Developer/go-workspace
export GOROOT=/usr/local/opt/go/libexec
export PATH=$PATH:$GOPATH/bin
export PATH=$PATH:$GOROOT/bin
export PATH=$PATH:$HOME/mongodb/bin

# added by Miniconda3 installer
export PATH="/Users/moeller_david/miniconda3/bin:$PATH"

# rbenv
eval "$(rbenv init -)"

export PATH="$(python -m site --user-base)/bin:${PATH}"
fpath=(~/.marathon/ShellAutocomplete/zsh $fpath)
autoload -Uz compinit && compinit -i
