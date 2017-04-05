autoload -U zutil
autoload -U compinit
autoload -U complist
autoload -U select-word-style
select-word-style bash

setopt EMACS
setopt interactivecomments
setopt nobeep

# /etc/inputrc for non zsh
bindkey "[5~" history-beginning-search-backward
bindkey "[6~" history-beginning-search-forward

# Activation
compinit

# Resource files
for rcfile in ${HOME}/.zsh/rc/*.rc; do
	source ${rcfile}
done

if [[ -r "${HOME}/.zshrc.local" ]]; then
    source "${HOME}/.zshrc.local"
fi

source "${HOME}/.zsh/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh"
