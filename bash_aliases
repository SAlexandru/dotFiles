export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8


export EDITOR=vim
export CLICOLOR=1
export BROWSER=chrome
export TERM=screen-256color
export LSCOLORS=ExFxCxDxBxegedabagacad
export JAVA_HOME="$(/usr/libexec/java_home -v 1.8)"

export PATH=$(brew --prefix)/bin:/usr/local/opt/coreutils/libexec/gnubin:/usr/local/sbin:$PATH
export MANPATH=/usr/local/opt/coreutils/libexec/gnuman:$MANPATH

export ES_DATA=/usr/local/var/elasticsearch/elasticsearch_nightcrawler
export ES_LOGS=/usr/local/var/log/elasticsearch/elasticsearch_nightcrawler.log
export ES_CONFIG=/usr/local/etc/elasticsearch/


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

# some more ls aliases
alias ll='ls -alF'
alias la='ls -A'
alias l='ls -CF'

# enable color support of ls and also add handy aliases
alias ls='ls --color=auto '
#alias dir='dir --color=auto'
#alias vdir='vdir --color=auto'
alias grep='grep --color=auto '
alias fgrep='fgrep --color=auto '
alias egrep='egrep --color=auto '

# Add an "alert" alias for long running commands.  Use like so:
#   sleep 10; alert
alias alert='notify-send --urgency=low -i "$([ $? = 0 ] && echo terminal || echo error)" "$(history|tail -n1|sed -e '\''s/^\s*[0-9]\+\s*//;s/[;&|]\s*alert$//'\'')"'

alias projects="cd ~/Desktop/Projects"
alias ls='ls --color=auto -GFh'
alias grep='grep --color=always '


