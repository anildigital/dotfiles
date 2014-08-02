if [ -f `brew --prefix`/etc/bash_completion ]; then
	. `brew --prefix`/etc/bash_completion
fi

if [ -f ~/.work_bashrc ]; then
	. ~/.work_bashrc
fi

if [ -f ~/.work_aliases ]; then
	. ~/.work_aliases
fi

if [ -f ~/.bash_aliases ]; then
	. ~/.bash_aliases
fi

export PS1="\h:\W \u\$(__git_ps1 \" (%s) \")\$(lambda_prompt) "
function lambda_prompt {
    echo ' λ'
}
source /usr/local/opt/chruby/share/chruby/chruby.sh
source /usr/local/opt/chruby/share/chruby/auto.sh
#chruby ruby-2.0.0-p353
#chruby jruby-1.7.11
chruby ruby-2.1.1


export DOCKER_HOST=tcp://192.168.59.103:2375
export NODE_ENV=development

export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8

# PHP pear
export PATH=$PATH:/Users/anil/pear/bin

### Added by the Heroku Toolbelt
export PATH="/usr/local/heroku/bin:$PATH"
alias simulator="open /Applications/Xcode.app/Contents/Developer/Platforms/iPhoneSimulator.platform/Developer/Applications/iPhone\ Simulator.app"
alias dl='docker ps -l -q'
eval "$(hub alias -s)"

#export JAVA_HOME="$(/usr/libexec/java_home)"
export JAVA_HOME='/Library/Java/JavaVirtualMachines/jdk1.7.0_45.jdk/Contents/Home/'
export EC2_HOME="/Users/anil/Code/ec2-api-tools-1.6.13.0"

alias ports="lsof -n -iTCP -P | grep LISTEN"
alias fix="git stash && git pull && git stash apply"

function pless {
  pygmentize $1 | less -r
}
