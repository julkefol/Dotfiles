#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

### Color codes for PS1 ###
# Black: 30
# Blue: 34
# Cyan: 36
# Green: 32
# Purple: 35
# Red: 31
# White: 37
# Yellow: 33


#Default
#PS1='[\u@\h: \W]\$ '

#Dark
#PS1='\e[33;1m\][\e[32;1m\]\u@\h: \e[34;1m\]\W\e[33;1m\]] \e[37;0m\]\$ '

#Light
PS1='\e[31;1m\][\e[34;1m\]\u@\h: \e[30;1m\]\W\e[31;1m\]] \e[37;0m\]\$ '


### Aliases ###
# ls aliases
alias ls='ls --color=auto'
alias ll='ls -lh'
alias lla='ls -Alh'
alias lt='ll -t'

# Confirm before overwriting something 
alias cp='cp -i'
alias mv='mv -i'
alias rm='rm -i'

# Custom colorize output
alias grep='grep --color=auto'
alias ip='ip -color=auto'

# pacman and paru 
alias updatepkg='sudo pacman -Syu'
alias searchpkg='pacman -Ss'
alias installpkg='sudo pacman -S'
alias aurchekup='paru -Qua'
alias aurpkgup='paru -Sua'
alias aursearch='paru -Ss'

alias vi='vim'
alias vimrc='vim ~/.vimrc'

# Auto 'cd' when entering just a path
#shopt -s autocd

# Completion for commands
complete -c man which
complete -cf sudo
