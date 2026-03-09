ZSH_THEME_GIT_PROMPT_PREFIX="%{$fg[magenta]%}["
ZSH_THEME_GIT_PROMPT_SUFFIX="]%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_DIRTY="*"
ZSH_THEME_GIT_PROMPT_CLEAN=""

local user="%{$fg[cyan]%}%n"
test $UID -eq 0 && user="%{$fg[red]%}%n"

PROMPT="${user}%{$reset_color%}@%{$fg[yellow]%}%m%{$reset_color%}:%~\$(git_prompt_info)# "