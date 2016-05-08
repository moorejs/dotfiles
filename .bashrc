#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

# Include aliases
[[ -f ~/.bash_aliases ]] && . ~/.bash_aliases

# Prompt custimization
BOLD="\[$(tput bold)\]"
GREEN="\[$(tput setaf 2)\]"
RESET="\[$(tput sgr0)\]"

PS1="\t - ${BOLD}${GREEN}\u:\w${RESET}\n\$ "
