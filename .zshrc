export ZSH=$HOME/.oh-my-zsh
export SDKMAN_DIR=$HOME/.sdkman

ZSH_THEME=custom

ZSH_CACHE_DIR=$HOME/.cache/oh-my-zsh
ZSH_COMPDUMP=$ZSH_CACHE_DIR/.zcompdump

zstyle ':omz:update' mode reminder
zstyle ':omz:update' frequency 7
zstyle ':omz:update' verbose minimal

zstyle ':completion:*' menu no

zstyle ':fzf-tab:*' fzf-flags --bind=tab:accept
zstyle ':fzf-tab:complete:cd:*' fzf-preview 'eza -1 --color=always $realpath' # preview directory's content

# load node version when .nvmrc is found
zstyle ':omz:plugins:nvm' autoload yes

zstyle ':omz:plugins:eza' show-group no
zstyle ':omz:plugins:eza' git-status yes

ZSH_TMUX_AUTOSTART=true
ZSH_TMUX_DEFAULT_SESSION_NAME=workspace

plugins=(zsh-autosuggestions zoxide eza fzf fzf-tab tmux ssh git nvm golang)

source $ZSH/oh-my-zsh.sh
source $SDKMAN_DIR/bin/sdkman-init.sh

HISTFILE=$HOME/.zsh_history
HISTSIZE=10000
HISTDUP=erase
setopt appendhistory
setopt sharehistory
setopt hist_save_no_dups

alias gss=$HOME/repos/gss/gss
