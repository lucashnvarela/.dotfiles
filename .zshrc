export ZSH="$HOME/.oh-my-zsh"
export SDKMAN_DIR="$HOME/.sdkman"

ZSH_THEME="custom"

# oh-my-zsh update
zstyle ':omz:update' mode reminder
zstyle ':omz:update' frequency 7

zstyle ':completion:*' menu no # disable completion menu

# tmux plugin
ZSH_TMUX_AUTOSTART=true
ZSH_TMUX_DEFAULT_SESSION_NAME=main

plugins=(
  zsh-autosuggestions
  zoxide
  fzf
  fzf-tab
  tmux
)

source $ZSH/oh-my-zsh.sh

autoload -Uz compinit && compinit # load completions

source $SDKMAN_DIR/bin/sdkman-init.sh

# history
HISTFILE=$HOME/.zsh_history
HISTSIZE=10000
HISTDUP=erase
setopt appendhistory
setopt sharehistory
setopt hist_save_no_dups

# keybindings
bindkey "^p" history-search-backward
bindkey "^n" history-search-forward

# aliases
alias gss="$HOME/repos/gss/gss.sh"

# -ls
alias ll="ls -l"
alias l="ls -lA"

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

# -tmux
alias ta="tmux attach-session"
alias tl="tmux list-sessions"
alias tn="tmux new-session -s"

# ask for the magic word
alias rm="rm -i"
alias cp="cp -i"
alias mv="mv -i"