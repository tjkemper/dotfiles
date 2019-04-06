# bash looking pretty
export PS1="\[\033[38;5;4m\]\u\[$(tput sgr0)\]\[\033[38;5;15m\]@\[$(tput sgr0)\]\[\033[38;5;2m\]\h\[$(tput sgr0)\]\[\033[38;5;15m\]:\[$(tput sgr0)\]\[\033[38;5;3m\]\w\[$(tput sgr0)\]\[\033[38;5;15m\]\n> \[$(tput sgr0)\]"

# enable forward search (ctrl-s)
stty -ixon

# go
export GOPATH=$HOME/code/go
export GOROOT=/usr/local/opt/go/libexec
export PATH=$PATH:$GOPATH/bin
export PATH=$PATH:$GOROOT/bin

# bash completion
# source /usr/local/etc/bash_completion
# source <(kubectl completion bash) # setup autocomplete in bash


# docker

# Remove all images
dri() { docker rmi -f $(docker images -q -a -f dangling=true); }

# Remove all containers
dkill() { docker rm -fv $(docker ps -aq); }

# docker ps
dps() { docker ps --format 'table {{ .ID }}\t{{ .Image }}\t{{ .Names }}\t{{ .Status }}\t{{ .Ports }}'; }

# maven
export MAVEN_HOME=/usr/local/opt/maven

# gradle
export GRADLE_HOME=/usr/local/opt/gradle

# android
export ANDROID_HOME=/usr/local/opt/android-sdk
export ANDROID_NDK_HOME=/usr/local/opt/android-ndk

# kops
export KOPS_STATE_STORE=s3://revature.kubernetes
export AWS_PROFILE=revature

# golang ascii art
IFS=''
cat Pictures/golang.txt | 
while read -r line 
do 
  echo "$line" 
done
