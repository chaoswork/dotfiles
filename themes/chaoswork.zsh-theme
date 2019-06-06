local ret_status="%(?:%{$fg_bold[green]%}[:%{$fg_bold[red]%}[)"

# http://attilaolah.eu/2014/05/12/a-simple-but-powerful-zsh-prompt/
local prompt_jobs="%(1j.%{$fg[green]%}[%j]%{$reset_color%} .)"

# set my-own vi mode
# http://dougblack.io/words/zsh-vi-mode.html
LPS=""
function zle-line-init zle-keymap-select {
    VIM_PROMPT="%{$fg_bold[yellow]%}[% NORMAL]% %{$reset_color%}"
    #RPS1="${${KEYMAP/vicmd/$VIM_PROMPT}/(main|viins)/} $EPS1"
    LPS="${${KEYMAP/vicmd/$VIM_PROMPT}/(main|viins)/}$EPS1"
    zle reset-prompt
}

zle -N zle-line-init
zle -N zle-keymap-select
export KEYTIMEOUT=1
bindkey '^R' history-incremental-search-backward

function get_pwd(){
    echo "${PWD/$HOME/~}"
}

PROMPT='${LPS}${ret_status}%{$?%}]%{$fg_bold[cyan]%}[$(get_pwd)]${prompt_jobs}%{$fg_bold[blue]%}$(git_prompt_info)%{$reset_color%}
> '


ZSH_THEME_GIT_PROMPT_PREFIX="%{$fg_bold[blue]%}git:(%{$fg[red]%}"
ZSH_THEME_GIT_PROMPT_SUFFIX="%{$reset_color%} "
ZSH_THEME_GIT_PROMPT_DIRTY="%{$fg[blue]%}) %{$fg[yellow]%}✗"
ZSH_THEME_GIT_PROMPT_CLEAN="%{$fg[blue]%}) %{$fg[green]%}✔"
