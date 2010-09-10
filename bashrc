# Include other scripts
source ~/bin/j.sh
source ~/.git-completion.sh
complete -o default -o nospace -F _git gh

if [ -f ~/.aliases ]; then
    . ~/.aliases
fi


# Functions

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
function lambda_prompt {
    echo ' λ'
}
export PS1='\u@\h \[\033[1;33m\]\w\[\033[0m\]$(parse_git_branch)$(lambda_prompt) '

function show_ruby {
    export PS1='\u@\h \[\033[1;33m\]\w\[\033[0m\][$(~/.rvm/bin/rvm-prompt)]$(parse_git_branch)$(lambda_prompt) '
}

function pless {
    pygmentize $1 | less -r
}

# Cheat autocomplete
function complete_cheat {
    COMPREPLY=()
    if [ $COMP_CWORD = 1 ]; then
        sheets=`cheat sheets | grep '^ '`
        COMPREPLY=(`compgen -W "$sheets" -- $2`)
    fi
}
complete -F complete_cheat cheat


# Set Paths

export PATH=~/bin:$PATH

## Brew paths                                                                                                                                     
export PATH=~/.local/homebrew/:~/.local/homebrew/bin:/Users/anil/.local/homebrew/sbin:$PATH                                                                                       
export MANPATH=`brew --prefix`/share/man:$MANPATH 

# mysql bin
export PATH=/usr/local/mysql/bin:$PATH

# lisp
export SBCL_HOME=/Users/anil/.local/homebrew/lib/sbcl


# Set environment variables
export ALTERNATE_EDITOR=emacs EDITOR=emacsclient VISUAL=emacsclient

