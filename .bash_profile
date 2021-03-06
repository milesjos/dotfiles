# Before doing anything upgrade to bash 4
# http://clubmate.fi/upgrade-to-bash-4-in-mac-os-x/

#################################
# PROMPT
#################################

# Emoji function (of course)
function smileys {
if [ "$?" -eq "0" ]
then
  echo 🙂
else
  echo 🔥
fi
}

# Colors!
RESET="\[$(tput sgr0)\]"
BOLD="\[$(tput bold)\]"
RED="\[$(tput setaf 1)\]"
GREEN="\[$(tput setaf 2)\]"
BLUE="\[$(tput setaf 4)\]"
PURPLE="\[$(tput setaf 5)\]"
CYAN="\[$(tput setaf 6)\]"

# User
user="${CYAN}\u${RED}@"

# Host
host="${CYAN}\h"

# Directory
dir="${GREEN}\w"

# Git integration
export GIT_PS1_SHOWDIRTYSTATE=1
export GIT_PS1_SHOWUNTRACKEDFILES=1
export GIT_PS1_SHOWUPSTREAM="auto"
source ~/.git-prompt.sh
source ~/.files/.git-completion.bash

# Virtual Env function
function venv {
if [ "$VIRTUAL_ENV" != "" ]
then
  echo "${RED}(${VIRTUAL_ENV##*/})"
fi
}

export PROMPT_COMMAND='PS1="${BOLD}${BLUE}[${user}${host}`venv`${dir}${BLUE}]`smileys` ${PURPLE}$(__git_ps1)\n👉  ${RESET}"'


#Set up aliases
if [ -e ~/.files/.aliases ] 
then
 	source ~/.files/.aliases
fi

#Vi mode
set -o vi
