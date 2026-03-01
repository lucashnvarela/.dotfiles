ZSH_THEME_GIT_PROMPT_ADDED="%{$fg[green]%}+"
ZSH_THEME_GIT_PROMPT_MODIFIED="%{$fg[yellow]%}!"
ZSH_THEME_GIT_PROMPT_DELETED="%{$fg[red]%}-"
ZSH_THEME_GIT_PROMPT_RENAMED="%{$fg[blue]%}>"
ZSH_THEME_GIT_PROMPT_UNMERGED="%{$fg[magenta]%}#"
ZSH_THEME_GIT_PROMPT_UNTRACKED="%{$fg[cyan]%}?"

ZSH_THEME_GIT_PROMPT_PREFIX=""
ZSH_THEME_GIT_PROMPT_SUFFIX=""
ZSH_THEME_GIT_PROMPT_DIRTY=""
ZSH_THEME_GIT_PROMPT_CLEAN=""

local user='%n@%m'
test $UID -eq 0 && user='%{$fg[red]%}%n%{$reset_color%}@%m'

local git_status='%{$bold_color%}$(git_prompt_status)%{$reset_color%}$(git_prompt_info)'

PROMPT="${user}:%~# "
RPROMPT="${git_status}"