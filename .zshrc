export ZSH=$HOME/.oh-my-zsh
export SDKMAN_DIR=$HOME/.sdkman

ZSH_THEME="custom"

# oh-my-zsh update
zstyle ':omz:update' mode reminder
zstyle ':omz:update' frequency 7

zstyle ':completion:*' menu no

zstyle ':fzf-tab:*' fzf-flags --bind=tab:accept
zstyle ':fzf-tab:complete:cd:*' fzf-preview 'eza -1 --color=always $realpath' # preview directory's content

zstyle ':omz:plugins:nvm' lazy yes
zstyle ':omz:plugins:nvm' autoload yes # autoload node when .nvmrc is present

zstyle ':omz:plugins:eza' show-group no
zstyle ':omz:plugins:eza' git-status yes

ZSH_TMUX_AUTOSTART=true
ZSH_TMUX_DEFAULT_SESSION_NAME=tmux

plugins=(
  zsh-autosuggestions
  zoxide
  eza
  fzf
  fzf-tab
  tmux
  ssh
  docker-compose
  golang
  nvm
)

source $ZSH/oh-my-zsh.sh

autoload -Uz compinit && compinit

HISTFILE=$HOME/.zsh_history
HISTSIZE=10000
HISTDUP=erase
setopt appendhistory
setopt sharehistory
setopt hist_save_no_dups

bindkey "^p" history-search-backward
bindkey "^n" history-search-forward

alias gss=$HOME/repos/gss/gss

# -git
alias gb="git branch"
alias gba="git branch --all"
alias ga="git add"
alias gd="git diff"
alias gc="git commit --message"
alias gca="git commit --amend --no-edit"
alias gx="git checkout"
alias gxn="git checkout -b"
alias gph="git push"
alias gpl="git pull"
alias gs="git status"
alias gm="git merge"
alias gi="git init"
alias gcl="git clone"
alias gl="git log --all \
  --pretty=format:'%C(magenta)%h %C(white)%an %ar %C(auto)%D %n%s %n'"

source $SDKMAN_DIR/bin/sdkman-init.sh