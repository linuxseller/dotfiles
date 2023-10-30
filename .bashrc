if [[ $- != *i* ]] ; then
	# Shell is non-interactive.  Be done now!
	return
fi
PS1="[\u@\h \W]$ " 
pfetch;
#cal 2023;
if [[ $TERM == xterm ]]; then
	xtermcontrol --fg white --bg black;
fi
GREEN="\[$(tput setaf 2)\]"
RESET="\[$(tput sgr0)\]"
PS1="${GREEN}\u@\h:\W$ ${RESET}"
# Put your fun stuff here.
/usr/share/bash-completion/bash_completion
alias ls="ls --color=auto"
alias ed="ed -p \>"
alias trans="trans -brief "
alias nano="vim "
alias vi="vim "
alias grep="grep --color"
tabs 4
export PATH=$PATH:/home/user/apps/thonny/bin/thonny:/home/user/.cabal/bin
#curl wttr.in/Surgut?format=4
export GITLAB_HOME=/media/disk500/gitlab/
export PKG_CONFIG_PATH=/usr/local/include/
cat badge
#source /home/user/git/emsdk/emsdk_env.sh
export PICO_SDK_PATH=/home/user/git/pico-sdk
