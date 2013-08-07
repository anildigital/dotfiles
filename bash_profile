if [ -f ~/.mybashrc ]; then
  . ~/.mybashrc
fi

if [ -f ~/.work_paths ]; then
  . ~/.work_paths
fi


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

