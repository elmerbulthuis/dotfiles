export PATH="$(brew --prefix rustup)/bin:$PATH"

autoload -Uz compinit
compinit

autoload -Uz vcs_info add-zsh-hook
setopt PROMPT_SUBST

add-zsh-hook precmd vcs_info

zstyle ':vcs_info:*' enable git
zstyle ':vcs_info:git:*' formats '%b'
zstyle ':vcs_info:git:*' actionformats '%b|%a'

dim=$'%{\e[2m%}'
reset=$'%{\e[0m%}'

PROMPT='%(?..%? )%1~${vcs_info_msg_0_:+ ${dim}${vcs_info_msg_0_}${reset}} %B%(!.#.$)%b '