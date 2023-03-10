######################################################################
#
#
#           ██████╗  █████╗ ███████╗██╗  ██╗██████╗  ██████╗
#           ██╔══██╗██╔══██╗██╔════╝██║  ██║██╔══██╗██╔════╝
#           ██████╔╝███████║███████╗███████║██████╔╝██║     
#           ██╔══██╗██╔══██║╚════██║██╔══██║██╔══██╗██║     
#           ██████╔╝██║  ██║███████║██║  ██║██║  ██║╚██████╗
#           ╚═════╝ ╚═╝  ╚═╝╚══════╝╚═╝  ╚═╝╚═╝  ╚═╝ ╚═════╝
#
#
######################################################################

# /etc/skel/.bashrc
# This file is sourced by all *interactive* bash shells on startup,
# including some apparently interactive shells such as scp and rcp
# that can't tolerate any output.  So make sure this doesn't display
# anything or bad things will happen !
# Test for an interactive shell.  There is no need to set anything
# past this point for scp and rcp, and it's important to refrain from
# outputting anything in those cases.
if [[ $- != *i* ]] ; then
	# Shell is non-interactive.  Be done now!
	return
fi


export PS1="\[$(tput bold)\]\[$(tput setaf 3)\][\[$(tput setaf 3)\]\u\
$(tput setaf 3)]$(tput setaf 2)@$(tput setaf 4)[$(tput setaf 4)\[$(tpu setaf 4)\[\h]\[$(tput setaf 5)\] /\W\[$(tput setaf 2)\]]\[$(tput setaf 7)\]\\$\n~ \[$(tput sgr0)\]"


# Date and time HIST
HISTTIMEFORMAT="%F %T "
HISTCONTROL=ignoredups
HISTSIZE=2000
HISTFILESIZE=2000
shopt -s histappend

# Alias
alias ls='ls --color=auto'
alias cls='clear'
alias ll='ls -a'
alias cp='cp -iv'
alias mv='mv -iv'
alias ls="ls -hN --color=auto --group-directories-first"
alias vimrc="vim ~/.vimrc"
alias vimzh="vim ~/.zshrc"
alias py="python"
alias pyd="sbash && cd ~/Projects/Python && ls"
alias pc="sbash && cd ~/Projects/C && ls"
alias pb="sbash && cd ~/Projects/Shell && ls"
alias pr="sbash && cd ~/Projects/Rust && ls"
alias el="sbash && exa -l"
alias ela="sbash && exa -la"
alias eda="sbash && exa -aD -l"
alias eta="sbash && exa -la --sort=type"
alias sbash="source ~/.bashrc"
alias spot="python ~/Downloads/Git/polybar-spotify/spotify_status.py -f '{song}' -t 15"
alias cpu5="ps -eo pid,comm,%cpu,%mem --sort=-%cpu | head -n 5"
alias mem5="ps -eo pid,comm,%cpu,%mem --sort=-%mem | head -n 5"

# My-fetch
clear
read -r min1 min5 min15 _ < /proc/loadavg
printf "\n\e[0;37m -------------------------\n"
printf "\e[0;32m"" %s\n" "[MEMORY: $(free -m -h | awk '/Mem/{print $3"/"$2}')]"
printf ' [LOADAVG: %s]\n' "$min1 $min5 $min15"
printf "\e[0;34m"" %s\n" "[KERNEL: $(uname -r)]"
printf "\e[0;34m"" %s\n" "[DATE:   $(date +"%a %d. %b %H:%M")]"
#printf "\e[0;35m"" %s\n" "[SPOT:   $(spot)]"
printf "\e[0;37m ------------------------\n"
printf "\n"

export TIMEFORMAT="[Finished in %Rs]"
export PATH=$PATH:/home/genty/.spicetify
. "$HOME/.cargo/env"
