export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8


export EDITOR=vim
export JAVA_HOME=/usr/lib/jvm/java-8-oracle
export LOCAL_BIN=$HOME/bin
export CLICOLOR=1
export LSCOLORS=ExFxCxDxBxegedabagacad

export ES_HOME=/usr/share/elasticsearch

# colors
export COLOR_NC='\e[0m' # No Color
export COLOR_WHITE='\e[1;37m'
export COLOR_BLACK='\e[0;30m'
export COLOR_BLUE='\e[0;34m'
export COLOR_LIGHT_BLUE='\e[1;34m'
export COLOR_GREEN='\e[0;32m'
export COLOR_LIGHT_GREEN='\e[1;32m'
export COLOR_CYAN='\e[0;36m'
export COLOR_LIGHT_CYAN='\e[1;36m'
export COLOR_RED='\e[0;31m'
export COLOR_LIGHT_RED='\e[1;31m'
export COLOR_PURPLE='\e[0;35m'
export COLOR_LIGHT_PURPLE='\e[1;35m'
export COLOR_BROWN='\e[0;33m'
export COLOR_YELLOW='\e[1;33m'
export COLOR_GRAY='\e[0;30m'
export COLOR_LIGHT_GRAY='\e[0;37m'


export BROWSER=chrome
export TERM=screen-256color


alias projects="cd ~/Desktop/Projects"
alias ls='ls --color=auto -GFh'
alias grep='grep --color=always '
alias pbcopy='xclip -selection clipboard'
alias pbpaste='xclip -selection clipboard -o'

alias connectDev='ssh -L 9400:127.0.0.1:9200 salex@dev.busymachines.com'
