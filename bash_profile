
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

# http://henrik.nyh.se/2008/12/git-dirty-prompt
# http://www.simplisticcomplexity.com/2008/03/13/show-your-git-branch-name-in-your-prompt/
#   username@Machine ~/dev/dir[master]$   # clean working directory
#   username@Machine ~/dev/dir[master*]$  # dirty working directory

function parse_git_dirty {
  [[ $(git status 2> /dev/null | tail -n1) != "nothing to commit (working directory clean)" ]] && echo "*"
}
function parse_git_branch {
  git branch --no-color 2> /dev/null | sed -e '/^[^*]/d' -e "s/* \(.*\)/[\1$(parse_git_dirty)]/"
}
export PS1='\u@\h \[\033[1;33m\]\w\[\033[0m\]$(parse_git_branch)$ '

source /usr/local/opt/chruby/share/chruby/chruby.sh
source /usr/local/opt/chruby/share/chruby/auto.sh
#chruby ruby-2.0.0-p353
#chruby jruby-1.7.11
#chruby ruby-2.1.3
#chruby ruby-2.2.0
#chruby ruby-2.3.0
chruby ruby-2.3.1
#chruby ruby-2.2.4

# User bin path
export PATH=$PATH:/Users/anil/bin

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
#export JAVA_HOME='/Library/Java/JavaVirtualMachines/jdk1.7.0_45.jdk/Contents/Home/'
export JAVA_HOME='/Library/Java/JavaVirtualMachines/jdk1.8.0_25.jdk/Contents/Home/'
export EC2_HOME="/Users/anil/Code/ec2-api-tools-1.6.13.0"

# Clojurescript
export CLOJURESCRIPT_HOME="/Users/anil/Code/clojure/clojurescript/clojurescript"

alias ports="lsof -n -iTCP -P | grep LISTEN"
alias fix="git stash && git pull && git stash apply"

# PhantomJS Path
export PHANTOMJS_EXECUTABLE_PATH=/usr/local/bin/phantomjs
export CHROMEDRIVER_EXECUTABLE_PATH=/usr/local/bin/chromedriver


function pless {
  pygmentize $1 | less -r
}
export PATH=/usr/local/sbin:$PATH
export PATH=/usr/local/bin:$PATH
export PATH=$CLOJURESCRIPT_HOME/bin:$PATH
export DISPLAY=192.168.59.3:0
export MAVEN_OPTS="-Djavax.net.ssl.trustStore=/Users/anil/Projects/common/keystore.pks -Djavax.net.ssl.trustStorePassword=razor7hedge"

export GOPATH=$HOME/work
export PATH=$PATH:$GOPATH/bin

export APACHE_CXF_PATH=/Users/anil/Projects/plusgrade_files/apache-cxf-2.7.18/bin

export PATH=$PATH:$APACHE_CXF_PATH

export TOMCAT_PATH=/usr/local/Cellar/tomcat6/6.0.45/bin
export PATH=$PATH:$TOMCAT_PATH

# OPAM configuration
. /Users/anil/.opam/opam-init/init.sh > /dev/null 2> /dev/null || true

[[ -s $(brew --prefix)/etc/profile.d/autojump.sh ]] && . $(brew --prefix)/etc/profile.d/autojump.sh

function light() {
  if [ -z "$2" ]
    then src="pbpaste"
  else
    src="cat $2"
  fi
  $src | highlight -O rtf --syntax $1 --font Inconsolata --style molokai --font-size 40 | pbcopy

}

export MAVEN_OPTS="-Xmx1024m -XX:MaxPermSize=1024m"
#export JAVA_HOME=/Library/Java/JavaVirtualMachines/1.6.0.jdk/Contents/Home
export JAVA_HOME=/Library/Java/JavaVirtualMachines/jdk1.7.0_45.jdk/Contents/Home
export HOMEBREW_GITHUB_API_TOKEN="82c1f836bf4f8cdacd25b81bb10528a2f70b37c2"

export JENV_ROOT=/usr/local/var/jenv
if which jenv > /dev/null; then eval "$(jenv init -)"; fi

export PG_MAVEN_USERNAME="anil.wadghule"
export PG_MAVEN_PASSWORD="0A28R43L945g996j"

test -e "${HOME}/.iterm2_shell_integration.bash" && source "${HOME}/.iterm2_shell_integration.bash"
