# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
bindkey -e
# End of lines configured by zsh-newuser-install
PATH=$HOME:$HOME/bin:$PATH

#zmodload zsh/complist
autoload -Uz compinit  promptinit vcs_info

compinit
promptinit
precmd() {vcs_info} 


zstyle ':completion:*' menu select
zstyle ':completion:*' list-colors ${(s.:.)LS_COLORS}
zstyle ':completion:*' verbose yes
zstyle ':completion:*:*:*:*:descriptions' 'format %F(green)-- %d --%f'
zstyle ':completion:*' file-list all
zstyle ':vcs_info:git:*' formats '%b %F{yellow}(%r) %c'


if [ -x /usr/bin/dircolors ]; then
	alias ls='ls --color=auto --hyperlink=auto'
	alias dir='dir --color=auto'
	alias vdir='vdir --color=auto'
	alias grep='grep --color=auto'
	alias fgrep='grep --color=auto'
fi


#PROMPT="%m%#%u%l "
setopt PROMPT_SUBST
PROMPT='%F{white}%m at %F{yellow}%n%f %F{blue}%~%f %F{green}${vcs_info_msg_0_}%f%F{red}❯ %f'
#prompt pws 

#vi mode
bindkey -v
