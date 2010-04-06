if [ -f ~/.bashrc ]; then
  . ~/.bashrc
fi


# MacPorts Installer addition on 2008-12-27_at_21:41:25: adding an appropriate MANPATH variable for use with MacPorts.
export MANPATH=/opt/local/share/man:$MANPATH
# Finished adapting your MANPATH environment variable for use with MacPorts.


# -- start rip config -- #
RIPDIR=/Users/anil/.rip
RUBYLIB="$RUBYLIB:$RIPDIR/active/lib"
PATH="$PATH:$RIPDIR/active/bin"
export RIPDIR RUBYLIB PATH
# -- end rip config -- #


# Useful functions
function take {
	mkdir $1
	cd $1
}


#!/bin/bash
# 
# Save in your .bash_profile then: isreg domain.com
 
function isreg {
  dig soa $1 | grep -q ^$1 && echo "Yes" || echo "No"
}


if [[ -s /Users/anil/.rvm/scripts/rvm ]] ; then source /Users/anil/.rvm/scripts/rvm ; fi

# http://gist.github.com/132456
# Bash snippet to open new shells in most recently visited dir.
# Useful if you want to open a new terminal tab at the present 
# tab's location.
#
# Put this in your .bashrc or whatever.

pathed_cd () {
    if [ "$1" == "" ]; then
        cd
    else
        cd "$1"
    fi
    pwd > ~/.cdpath
}
alias cd="pathed_cd"

if [ -f ~/.cdpath ]; then
  cd $(cat ~/.cdpath)
fi
