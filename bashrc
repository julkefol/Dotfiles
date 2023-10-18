# If not running interactively, don't do anything
[[ $- != *i* ]] && return

### Color values for PS1 ###
# 30: Black,
# 31: Red
# 32: Green
# 33: Yellow
# 34: Blue
# 35: Purple
# 36: Cyan
# 37: White/Light-gray

#Dark
PS1='\[\e[01;31m\][\[\e[00m\]\[\e[01;33m\]\u\[\e[00m\]\[\e[01;32m\]@\[\e[00m\]\[\e[01;34m\]\h\[\e[00m\]\[\e[01;34m\]:\[\e[00m\]\[\e[01;35m\] \W\[\e[00m\]\[\e[01;31m\]]\[\e[00m\]\$ '

#Light
#PS1='\[\e[01;31m\][\[\e[00m\]\[\e[01;34m\]\u\[\e[00m\]\[\e[01;32m\]@\[\e[00m\]\[\e[01;35m\]\h\[\e[00m\]\[\e[01;36m\]:\[\e[00m\]\[\e[01;30m\] \W\[\e[00m\]\[\e[01;31m\]]\[\e[00m\] \$ '

export PATH="$HOME/.local/bin:$PATH"
export EDITOR="/bin/vim"

# Load aliases
if [ -f ~/.bash_aliases ]; then
    . ~/.bash_aliases
fi

# Auto 'cd' when entering just a path
shopt -s autocd

# Enable vim keybinding for bash
set -o vi

# Completion for commands
complete -c man which
complete -cf sudo

# Pretty-print man(1) pages.
export LESS_TERMCAP_mb=$'\E[1;31m'
export LESS_TERMCAP_md=$'\E[1;31m'
export LESS_TERMCAP_me=$'\E[0m'
export LESS_TERMCAP_ue=$'\E[0m'
export LESS_TERMCAP_so=$'\E[1;33m'
export LESS_TERMCAP_se=$'\E[0m'
export LESS_TERMCAP_us=$'\E[1;32m'

# nvim as manpager
# export MANPAGER="nvim +Man!"

# nnn config
export NNN_COLORS="2536"
export NNN_TRASH=1
export NNN_FCOLORS='c1e2022e026001f7c6d6abc4'

# Run shell-colorscript
# For more info: https://gitlab.com/dwt1/shell-color-scripts
colorscript -r

# Starship prompt
eval "$(starship init bash)"
