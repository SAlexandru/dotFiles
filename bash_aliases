# decent
alias nano='vim'
alias pico='vim'
alias vi='vim'
alias emacs='vim'
alias gedit='vim' 
alias kate='vim'
alias svi='sudo vi' 
alias vis='vim "+set si"' 
alias edit='vim'

alias bc='bc -l'
alias sha1='openssl sha1'

alias diff='colordiff'

# handy short cuts #
alias h='history'
alias j='jobs -l'

alias path='echo -e ${PATH//:/\\n}'
alias now='date +"%T"'
alias nowtime=now
alias nowdate='date +"%d-%m-%Y"'

# do not delete / or prompt if deleting more than 3 files at a time #
alias rm='rm -I --preserve-root'
 
# confirmation #
alias mv='mv -i' 
alias cp='cp -i' 
alias ln='ln -i'

# become root #
alias root='sudo -i'
alias su='sudo -i'

# Parenting changing perms on / #
alias chown='chown --preserve-root'
alias chmod='chmod --preserve-root'
alias chgrp='chgrp --preserve-root'

## a quick way to get out of current directory ##
alias cd..='cd ..' 
alias ..='cd ..' 
alias ...='cd ../../../' 
alias ....='cd ../../../../' 
alias .....='cd ../../../../' 
alias .4='cd ../../../../' 
alias .5='cd ../../../../..'

# some more ls aliases
# enable color support of ls and also add handy aliases
alias ls='ls --color=auto '
alias ll='ls -alF'
alias la='ls -A'
alias l='ls -CF'
## Show hidden files ##
alias l.='ls -d .* --color=auto'


alias dir='dir --color=auto'
#alias vdir='vdir --color=auto'
alias grep='grep --color=always '
alias fgrep='fgrep --color=auto '
alias egrep='egrep --color=auto '


# Stop after sending count ECHO_REQUEST packets #
alias ping='ping -c 5'
# Do not wait interval 1 second, go fast #
alias fastping='ping -c 100 -s.2'

alias ports='netstat -tulanp'

# get web server headers #
alias header='curl -I'
 
# find out if remote server supports gzip / mod_deflate or not #
alias headerc='curl -I --compress'

## shortcut  for iptables and pass it via sudo#
alias ipt='sudo /sbin/iptables'
 
# display all rules #
alias iptlist='sudo /sbin/iptables -L -n -v --line-numbers'
alias iptlistin='sudo /sbin/iptables -L INPUT -n -v --line-numbers'
alias iptlistout='sudo /sbin/iptables -L OUTPUT -n -v --line-numbers'
alias iptlistfw='sudo /sbin/iptables -L FORWARD -n -v --line-numbers'
alias firewall=iptlist

## pass options to free ## 
alias meminfo='free -m -l -t'
 
## get top process eating memory
alias psmem='ps auxf | sort -nr -k 4'
alias psmem10='ps auxf | sort -nr -k 4 | head -10'
 
## get top process eating cpu ##
alias pscpu='ps auxf | sort -nr -k 3'
alias pscpu10='ps auxf | sort -nr -k 3 | head -10'
 
## Get server cpu info ##
alias cpuinfo='lscpu'
 
## older system use /proc/cpuinfo ##
##alias cpuinfo='less /proc/cpuinfo' ##
 
## get GPU ram on desktop / laptop## 
alias gpumeminfo='grep -i --color memory /var/log/Xorg.0.log'

alias wget='wget -c'

# Add an "alert" alias for long running commands.  Use like so:
#   sleep 10; alert
alias alert='notify-send --urgency=low -i "$([ $? = 0 ] && echo terminal || echo error)" "$(history|tail -n1|sed -e '\''s/^\s*[0-9]\+\s*//;s/[;&|]\s*alert$//'\'')"'

alias devCatchup="ssh -p 767 ubuntu@52.29.69.242 -i ~/Document/*.pem"
alias deployCatchup="scp -P 767 -i ~/Document/*.pem /home/salexandru/Projects/catchup/artifactPublisher/app/publishArtifactServer/target/scala-2.11/publishArtifactServer.jar ubuntu@52.29.69.242:~/bin/"
alias devCatchupProd="ssh -p 767 ubuntu@52.58.94.48 -i ~/Document/*.pem"
alias deployCatchupProd="scp -P 767 -i ~/Document/*.pem /home/salexandru/Projects/catchup/artifactPublisher/app/publishArtifactServer/target/scala-2.11/publishArtifactServer.jar ubuntu@52.58.94.48:~/bin/"

alias devCatchupProdForward="ssh -p 767 -L 9200:localhost:9200 ubuntu@52.58.94.48 -i ~/Document/*.pem"


alias devAcc="sshpass -p hexadecimal ssh -p 667 salex@dev.busymachines.com"
alias devAws="ssh -p 767 ubuntu@35.156.227.100 -i ~/Document/*.pem"
alias deployServer="scp -P 767 -i ~/Document/*.pem /home/salexandru/Projects/catchup/ingestionEnginePlatform/app/ingestionEngineServer/target/scala-2.12/ingestionEngineServer.jar ubuntu@35.156.227.100:~/bin/"
alias deployEngine="scp -P 767 -i ~/Document/*.pem /home/salexandru/Projects/catchup/ingestionEnginePlatform/app/processingEngineServer/target/scala-2.12/processingEngineServer.jar ubuntu@35.156.227.100:~/bin/"
alias devAws2="ssh -p 767 ubuntu@52.59.238.153 -i ~/Document/*.pem"
alias deployServer2="scp -P 767 -i ~/Document/*.pem /home/salexandru/Projects/catchup/ingestionEnginePlatform/app/ingestionEngineServer/target/scala-2.12/ingestionEngineServer.jar ubuntu@52.59.238.153:~/bin/"

alias devAwsProd="ssh -p 667 ubuntu@35.156.19.73   -i ~/Document/*.pem"
alias devAwsProdKibana="ssh -p 667 -L 5601:localhost:5601 ubuntu@35.156.19.73 -i ~/Document/*.pem"

alias deployServerProd="scp -P 667 -i ~/Document/*.pem /home/salexandru/Projects/catchup/ingestionEnginePlatform/app/ingestionEngineServer/target/scala-2.12/ingestionEngineServer.jar ubuntu@35.156.19.73:~/bin/"
alias deployEngineProd="scp -P 667 -i ~/Document/*.pem /home/salexandru/Projects/catchup/ingestionEnginePlatform/app/processingEngineServer/target/scala-2.12/processingEngineServer.jar ubuntu@35.156.19.73:~/bin/"

alias installEngine="sudo java -jar /home/salexandru/Projects/catchup/ingestionEnginePlatform/app/ingestionEngineServer/target/scala-2.12/ingestionEngineServer.jar install"
alias startEngine="sudo systemctl daemon-reload && sudo systemctl start ingestionEngineServer.service"
alias stopEngine="sudo systemctl daemon-reload && sudo systemctl stop ingestionEngineServer.service"
alias liveLogEngine="sudo journalctl -f -n 1000 -u ingestionEngineServer.service --since today"

alias closeWifi="sudo ip link set wlp8s0 down"
alias startWifi="sudo wifi-menu -o"

export LANG=en_US.UTF-8
export LC_ALL=en_US.UTF-8

export EDITOR=vim
export VISUAL=vim
export CLICOLOR=1
export BROWSER=chrome
export TERM=screen-256color
export LSCOLORS=ExFxCxDxBxegedabagacad

export ES_DATA=/usr/local/var/elasticsearch/elasticsearch_nightcrawler
export ES_LOGS=/usr/local/var/log/elasticsearch/elasticsearch_nightcrawler.log
export ES_CONFIG=/usr/local/etc/elasticsearch/

export JAVA_HOME=/usr/lib/jvm/java-8-jdk
export SBT_OPTS="-Xms256m -Xmx4096m -XX:ReservedCodeCacheSize=512m -XX:MaxMetaspaceSize=1024m -XX:+UseParallelGC"

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


